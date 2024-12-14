package com.swtest.cakeshop.auth;

import com.swtest.cakeshop.auth.dto.LoginRequest;
import com.swtest.cakeshop.auth.dto.LoginResponse;
import com.swtest.cakeshop.auth.jwt.JwtHelper;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

@Service
public class AuthServiceImpl implements AuthService{
    private final AuthenticationManager authenticationManager;
    private final JwtHelper jwtHelper;

    public AuthServiceImpl(AuthenticationManager authenticationManager, JwtHelper jwtHelper) {
        this.authenticationManager = authenticationManager;
        this.jwtHelper = jwtHelper;
    }

    @Override
    public LoginResponse login(LoginRequest request){
        UsernamePasswordAuthenticationToken authToken = new UsernamePasswordAuthenticationToken(
                request.username(),
                request.password()
        );

        Authentication auth = authenticationManager.authenticate(authToken);
        String token = jwtHelper.generateToken((UserDetails) auth.getPrincipal());
        return new LoginResponse(token);
    }
}
