<?php
namespace App\Services\Auth;

use App\Models\User;
use App\Repositories\User\UserRepositoryInterface;
use Illuminate\Support\Facades\Auth;

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
}
