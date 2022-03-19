<?php

namespace App\Http\Controllers\api\v1;

use App\Http\Controllers\Controller;
use App\Http\Requests\LoginRequest;
use App\Services\Auth\AuthService;

class LoginController extends Controller
{
    private $authServie;

    public function __construct(
        AuthService $authService
    )
    {
        $this->authServie = $authService;
    }

    public function login(LoginRequest $req) {
        return $this->authServie->login($req);
    }
}
