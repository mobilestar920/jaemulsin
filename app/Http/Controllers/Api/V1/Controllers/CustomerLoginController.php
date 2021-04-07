<?php

namespace App\Http\Controllers\Api\V1\Controllers;

use App\Http\Controllers\Controller;
use App\Customer;
use App\Http\Controllers\Api\V1\Requests\UserRegisterRequest;
use App\MyApps;
use App\News;
use App\User;
use Carbon\Carbon;
use DateTime;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;

class CustomerLoginController extends Controller
{


    /**
     * Register User
     * @method POST
     * 
     * @param request - user's phone, password, email
     * 
     * @return reponse - success : Bool, message: String
     * 
     */
    public function register(UserRegisterRequest $request)
    {
        $phone = $request->phone;
        $imei = $request->device_uuid;

        $user = Customer::where('phone', $phone)->first();
        if ($user != null) {
            $response = ['success' => false, 'message' => '电话号码已被其他用户使用。'];
            return response()->json($response);
        }

        $user_count = Customer::where('id', '>', '-1')->count() + 1;
        $str_length = 5;
        $code = 'XCS' . substr("0000{$user_count}", -$str_length);

        $user = new Customer();
        $user->code = $code;
        $user->device_id = $imei;
        $user->phone = $request->phone;
        $user->expire_at = Carbon::now()->addDays(2);
        $user->save();

        $token = JWTAuth::fromUser($user, ['exp' => Carbon::now()->addDays(7)->timestamp]);

        $data = [];
        $data['id'] = $user->id;
        $data['phone'] = $user->phone;
        $data['user_code'] = $user->code;
        $data['device_uuid'] = $user->device_id;
        $data['updated_at'] = $user->updated_at;
        $data['expire_at'] = $user->expire_at;
        $data['note'] = $user->note;

        $datetime1 = new DateTime($user->expire_at);
        $datetime2 = new DateTime(Carbon::now());
        $interval = $datetime2->diff($datetime1);
        $days = $interval->format('%a'); //now do whatever you like with $days
        $data['remain_days'] = $days;

        $key = env('XCS_SECRET', 'LbGqH750ukm7g2fbWqzDbQ5L');
        $iv = env('XCS_IV', 'jefQJhKG');
        $ENCR_KEY = env('XCS_KEY', 'U8gU2JVDvWjUDIGFHwqHgFjz');

        $encrypt = openssl_encrypt($key, "des-ede3-cbc", $ENCR_KEY, OPENSSL_RAW_DATA, $iv);

        $caishen = MyApps::where('id', '>', -1)->orderBy('version', 'desc')->first();
        if ($caishen == null) {
            return response()->json(['success' => false, 'message' => 'No version available for now']);
        }

        // Get Latest News
        //
        $condition = News::where('id', '>', -1);
        $news = $condition->orderBy('created_at', 'desc')->first();

        $response = [];
        $response['success'] = true;
        $response['token'] = $token;
        $response['user'] = $data;
        $response['version'] = $caishen;
        $response['signature'] = base64_encode($encrypt);

        if ($news != null) {
            $response['news'] = $news;
        }

        return response()->json($response);
    }

    /**
     * User Login
     * 
     * @method POST
     * 
     * @param request - user's phone number, password, device uuid
     * 
     * @return response - success : Bool, message: String, token: bearer token for authorization
     */
    public function login(UserRegisterRequest $request)
    {

        $response = [];

        $imei    = $request->device_uuid;
        $phone   = $request->phone;
        $password = $request->password;
        $news_id    = $request->news_id;

        $user = Customer::where('phone', $phone)->first();
        
        if ($user != null) {
            if ($password != $user->password) {
                return response()->json(['success' => false, 'message' => '密码错误.']);
            }

            if ($user->is_blocked == true) {
                return response()->json(['success' => false, 'message' => '账号已停止使用。请咨询管理员。']);
            }

            $expire_date = $user->expire_at;
            $current = new Carbon;
            if ($current > $expire_date) {
                return response()->json(['success' => false, 'message' => '使用期限已满。']);
            }

        } else {
            
            $user_count = Customer::where('id', '>', '-1')->count() + 1;
            $str_length = 5;
            $code = 'XCS' . substr("0000{$user_count}", -$str_length);

            $user = new Customer();
            $user->code = $code;
            $user->phone = $phone;
            $user->expire_at = Carbon::now()->addDays(2);
        }

        $user->device_id = $imei;
        $user->password = $password;
        $user->save();

        $token = JWTAuth::fromUser($user, ['exp' => Carbon::now()->addDays(7)->timestamp]);

        $data = [];
        $data['id'] = $user->id;
        $data['user_code'] = $user->code;
        $data['device_uuid'] = $user->device_id;
        $data['phone'] = $user->phone;

        $data['updated_at'] = $user->updated_at;
        $data['expire_at'] = $user->expire_at;
        $data['note'] = $user->note;

        $datetime1 = new DateTime($user->expire_at);
        $datetime2 = new DateTime(Carbon::now());
        $interval = $datetime2->diff($datetime1);
        $days = $interval->format('%a'); //now do whatever you like with $days
        $data['remain_days'] = $days;

        $key = env('XCS_SECRET', 'LbGqH750ukm7g2fbWqzDbQ5L');
        $iv = env('XCS_IV', 'jefQJhKG');
        $ENCR_KEY = env('XCS_KEY', 'U8gU2JVDvWjUDIGFHwqHgFjz');

        $encrypt = openssl_encrypt($key, "des-ede3-cbc", $ENCR_KEY, OPENSSL_RAW_DATA, $iv);

        // Get Current App Status
        //
        $caishen = MyApps::where('id', '>', -1)->orderBy('version', 'desc')->first();
        if ($caishen == null) {
            return response()->json(['success' => false, 'message' => 'No version available for now']);
        }

        // Get Latest News
        //
        $condition = News::where('id', '>', -1);
        if ($news_id != null) {
            $condition = $condition->where('id', '>', $news_id);
        }

        $news = $condition->orderBy('created_at', 'desc')->first();

        $response['success'] = true;
        $response['token'] = $token;
        $response['user'] = $data;
        $response['version'] = $caishen;
        $response['signature'] = base64_encode($encrypt);

        if ($news != null) {
            $response['news'] = $news;
        }

        return response()->json($response);
    }
}
