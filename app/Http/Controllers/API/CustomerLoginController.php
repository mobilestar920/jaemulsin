<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\API\UserRegisterRequest;
use Illuminate\Routing\Controller as BaseController;
use App\Customer;
use App\Device;
use App\MyApps;
use App\News;
use Carbon\Carbon;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;
use phpseclib\Crypt\RSA as Crypt_RSA;

class CustomerLoginController extends BaseController
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

        $device = Device::where('android_id', $imei)->first();
        if ($device == null) {
            $device = new Device();
            $device->android_id = $imei;
            $device->save();
        } else if ($device->rCustomer != null) {
            $response = ['success' => false, 'message' => '手机已登录到其他账户。'];
            return response()->json($response);
        }

        $user = Customer::where('phone', $phone)->first();
        if ($user != null) {
            $user->device_id = $device->id;
            $user->save();
        } else {
            $user_count = Customer::where('id', '>', '-1')->count() + 1;
            $str_length = 5;
            $code = 'XCS' . substr("0000{$user_count}", -$str_length);

            $user = new Customer();
            $user->code = $code;
            $user->device_id = $device->id;
            $user->phone = $request->phone;
            $user->expire_at = Carbon::now()->addDays(30);
            $user->save();
        }

        $token = JWTAuth::fromUser($user, ['exp' => Carbon::now()->addDays(7)->timestamp]);

        $data = [];
        $data['id'] = $user->id;
        $data['user_code'] = $user->code;

        $device = $user->rDevice;
        $data['device_uuid'] = $device->imei;
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

        $user = Customer::where('phone', $phone)->first();
        if ($user != null) {
            if ($user->is_blocked == true) {
                return response()->json(['success' => false, 'message' => '账号已停止使用。请咨询管理员。']);
            }

            $expire_date = $user->expire_at;
            $current = new Carbon;
            if ($current > $expire_date) {
                return response()->json(['success' => false, 'message' => '使用期限已满。']);
            }

            $imei = $request->device_uuid;
            $device = Device::where('android_id', $imei)->first();
            if ($device == null) {
                $response = ['success' => false, 'message' => '没有登记的手机。'];
                return response()->json($response);
            } else if ($device->id != $user->device_id) {
                $response = ['success' => false, 'message' => '手机已登录到其他账户。'];
                return response()->json($response);
            } else {
                $token = JWTAuth::fromUser($user, ['exp' => Carbon::now()->addDays(7)->timestamp]);

                $data = [];
                $data['id'] = $user->id;
                $data['user_code'] = $user->code;

                $device = $user->rDevice;
                $data['device_uuid'] = $device->imei;
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

        return response()->json(['success' => false, 'message' => '不存在用户名。']);
    }
}
