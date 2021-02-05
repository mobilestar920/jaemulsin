<?php

namespace App\Http\Controllers;

use App\AppResources;
use App\Apps;
use App\DeviceType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use phpseclib\Crypt\RSA as Crypt_RSA;

class ManageDeviceTypeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $cond = DeviceType::where('id', '>', -1);
        $types = $cond->get();

        $deviceList = [];
        foreach ($types as $type) {
            $data = [];
            $data['id'] = $type->id;
            $data['name'] = $type->name;
            $data['numApps'] = $type->rAppResources->count();
            $data['note'] = $type->note;
            $data['created_at'] = $type->created_at;

            array_push($deviceList, $data);
        }

        // $rsa = new Crypt_RSA();
        // //$rsa->setPublicKeyFormat(CRYPT_RSA_PUBLIC_FORMAT_PKCS1);
        // $k = $rsa->createKey();
        // $privateKey = $k['privatekey'];
        // $publicKey = $k['publickey'];

        // $rsa->loadKey($privateKey); // private key

        // $plaintext = 'This is the test.';

        // //$rsa->setSignatureMode(CRYPT_RSA_SIGNATURE_PSS);
        // $signature = $rsa->sign($plaintext);
        
        // echo(base64_encode($signature));

        // $rsa->loadKey($publicKey); // public key
        // $success = $rsa->verify($plaintext, $signature) ? 'verified' : 'unverified';

        // return response()->json(['signature' => base64_encode($signature), 'success' => $success]);

        return view('devicetype', array('types' => $deviceList));
    }

    public function addNewDeviceType(Request $request)
    {
        $name = $request->name;
        $note = $request->note;

        $type = DeviceType::where('name', $name)->first();

        if ($type == null) {
            $folderPath = resource_path() . '/js/temp/';
            $type = new DeviceType();
            $type->name = $name;
            $type->note = $note;
            $type->save();

            $folderPath = resource_path() . '/js/temp/' . strval($type->id) . '/';
            File::makeDirectory($folderPath);

            return $this->index();
        } else {
            return response()->json(['success'=>false, 'message'=>'Type is already exist.']);
        }
    }
}
