<?php

namespace App\Http\Controllers\API;

use App\AppResources;
use App\Apps;
use Illuminate\Routing\Controller as BaseController;
use App\MyApps;
use App\News;
use Carbon\Carbon;
use Dingo\Api\Contract\Http\Request;
use Dotenv\Result\Success;

class AppListController extends BaseController {

    /**
     * Get App List
     * @method GET
     * 
     * @return appList - Get App List
     */
    public function index() {
        $response = [];

        $cond = Apps::where('is_deleted', false)->orderBy('id');
        $response['success'] = true;
        $response['apps'] = $cond->get();
        
        return response()->json($response);
    }

    public function getIdFromApp($app) {
        return $app->id;
    }

    public function downloadableAppIds() {
        $user = auth()->user();
        $cond = Apps::where('id','>',-1);
        $apps = $cond->get();

        $appIds = [];
        foreach ($apps as $i => $app) {
            $cond = AppResources::where('app_id', $app->id);
            $resource = $cond->where('type_id', $user->rDevice->type_id)->first();
            $appResource = [];
            $appResource['app_id'] = $app->id;
            
            if ($resource == null) {
                // return response()->json(['success'=>false, 'message'=>'Cannot find resource for your device.']);
            } else {
                $appResource['timestamp'] = $resource->updated_at->getTimestamp();
                array_push($appIds, $appResource);
            }
        }

        $response['success'] = true;
        $response['app_ids'] = $appIds;
        
        return response()->json($response);
    }

    public function download($id) {
        $app = Apps::where('id', $id)->first();
        
        if ($app != null) {
            $fileName = strval($id).'.apk';
            $filePath = resource_path().'/'.'apk/'.$fileName;

            $num_download = $app->num_download;
            $app->num_download = $num_download + 1;
            $app->save();

            return response()->download($filePath, $fileName);     
        } else {
            return response()->json(['success'=>false, 'message'=>'下载的应用不存在。']);
        }
    }

    public function resourceDownload($id) {
        $user = auth()->user();
        $device = $user->rDevice;
        
        if ($device == null) {
            return response()->json(['success'=>false, 'message'=>'手机没有登记。请咨询管理员。']);
        }

        $fileName = strval($id);
        $filePath = resource_path().'/'.'js/temp/'.strval($device->type_id).'/'.$fileName;
        return response()->download($filePath, $fileName); 
    }

    public function changbaoDownload($id) {
        $user = auth()->user();
        $device = $user->rDevice;
        
        if ($device == null) {
            return response()->json(['success'=>false, 'message'=>'手机没有登记。请咨询管理员。']);
        }

        $fileName = strval($id);
        $filePath = resource_path().'/'.'js/changbao/'.strval($device->type_id).'/'.$fileName;
        return response()->download($filePath, $fileName); 
    }

    public function caishenDownload($id) {
        $app = MyApps::where('id', $id)->first();
        
        if ($app != null) {
            $fileName = strval($id).'.apk';
            $filePath = resource_path().'/'.'caishen/'.$fileName;

            return response()->download($filePath, $fileName);     
        } else {
            return response()->json(['success'=>false, 'message'=>'下载的应用不存在。']);
        }
    }

    public function getLatestNews() {
        $condition = News::where('id', '>', -1);
        $news = $condition->orderBy('created_at', 'desc')->first();
        
        $response = [];
        $response['success'] = true;
        $response['news'] = $news;

        return response()->json($response);
    }

    public function getMileResource($id) {
        $user = auth()->user();
        $device = $user->rDevice;
        
        if ($device == null) {
            return response()->json(['success'=>false, 'message'=>'手机没有登记。请咨询管理员。']);
        }

        $fileName = strval($id);
        $filePath = resource_path().'/'.'js/mile/'.strval($device->type_id).'/'.$fileName;
        return response()->download($filePath, $fileName); 
    }

    public function userAvailable() {
        $user = auth()->user();

        $expire_date = $user->expire_at;
        $current = new Carbon;
        if ($current > $expire_date) {
            return response()->json(['success' => false, 'message' => '使用期限已满。']);
        } else {
            return response()->json(['success' => true, 'message' => '使用可以。']);
        }
    }
}