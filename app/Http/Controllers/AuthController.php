<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator; 
use Illuminate\Support\Facades\Hash; 
use JWTAuth; 
use Tymon\JWTAuth\Exceptions\JWTException;

class AuthController extends Controller
{
    // Register
    public function register(Request $req)
    {
        // Validasi input
        $rules = [
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'no_telepon' => 'required|string',
            'posisi' => 'required|string',
            'password' => 'required|string|min:6',
        ];

        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        // Membuat user baru di tabel users
        $user = User::create([
            'name' => $req->name,
            'email' => $req->email,
            'no_telepon' => $req->no_telepon,
            'posisi' => $req->posisi,
            'password' => Hash::make($req->password),
        ]);

        // Generate JWT token untuk user yang baru didaftarkan
        $token = JWTAuth::fromUser($user);

        return response()->json([
            'user' => $user,
            'token' => $token,
        ], 201);
    }

    // Login
    public function login(Request $req)
    {
        $rules = [
            'email' => 'required|string|email',
            'password' => 'required|string',
        ];

        $validator = Validator::make($req->all(), $rules);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $credentials = $req->only('email', 'password');

        try {
            if (!$token = JWTAuth::attempt($credentials)) {
                return response()->json(['error' => 'Invalid credentials'], 400);
            }
        } catch (JWTException $e) {
            return response()->json(['error' => 'Could not create token'], 500);
        }

        return response()->json(['token' => $token], 200);
    }

    // Mendapatkan user saat ini
    public function getUser(Request $req)
    {
        try {
            if (!$user = JWTAuth::parseToken()->authenticate()) {
                return response()->json(['error' => 'User not found'], 404);
            }
        } catch (Tymon\JWTAuth\Exceptions\TokenExpiredException $e) {
            return response()->json(['error' => 'Token expired'], 401);
        } catch (Tymon\JWTAuth\Exceptions\TokenInvalidException $e) {
            return response()->json(['error' => 'Token invalid'], 401);
        } catch (Tymon\JWTAuth\Exceptions\JWTException $e) {
            return response()->json(['error' => 'Token absent'], 401);
        }

        return response()->json(['user' => $user], 200);
    }

    // Logout (Invalidate token)
    public function logout(Request $request)
    {
        $token = JWTAuth::getToken();
        
        // Invalidate the token
        try {
            JWTAuth::invalidate($token);
            return response()->json(['message' => 'Successfully logged out'], 200);
        } catch (JWTException $e) {
            return response()->json(['error' => 'Failed to logout, token may be invalid'], 500);
        }
    }
}
