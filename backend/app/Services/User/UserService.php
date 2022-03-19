<?php
namespace App\Services\User;

use App\Models\User;
use League\OAuth2\Server\Repositories\UserRepositoryInterface;

class UserService
{
    public function __construct(
        UserRepositoryInterface $userRepo
    )
    {
        $this->userRepo = $userRepo;
    }
}
