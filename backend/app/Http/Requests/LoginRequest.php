<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class LoginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => 'required|string',
            'password' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'email.required' => "Hãy nhập email của bạn",
            'email.string' => "Định dạng email chưa đúng!",
            'password.required' => 'Vui lòng nhập mật khẩu'
        ];
    }
}
