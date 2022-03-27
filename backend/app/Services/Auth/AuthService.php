<?php
namespace App\Services\Auth;

use App\Models\User;
use App\Repositories\User\UserRepositoryInterface;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthService
{
    private $userRepo;

    public function __construct(
        UserRepositoryInterface $userRepo
    )
    {
        $this->userRepo = $userRepo;
    }

    public function login($req) {
        if(!Auth::attempt(['email' => $req->email, 'password' => $req->password])) {
            return response([
                'message' => 'Invalid login credentials.'
            ]);
        }

        $accessToken = Auth::user()->createToken('authToken')->accessToken;
        return response([
            'user' => Auth::user(),
            'access_token' => $accessToken
        ]);
    }

    public function register($req) {
        $user = $this->userRepo->create([
            'name' => $req->name,
            'email' => $req->email,
            'password' => Hash::make($req->password),
            'status' => $req->status,
            'avatar' => $req->avatar
        ]);
        return response([
            'user' => $user,
            'status' => 201
        ]);
    }
}
