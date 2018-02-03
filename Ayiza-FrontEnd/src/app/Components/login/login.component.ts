import { ACCESS_TOKEN, USER_ID } from './../../Constants/CookiesConstants';
import { LoginModel } from './../../Models/AuthenticationModels/LoginModel';
import { Router } from '@angular/router';
import { CookieService } from 'ngx-cookie-service';
import { LoginSignUpService } from './../../Services/login-sign-up.service';
import { Component, OnInit } from '@angular/core';
import { error } from 'util';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  private loginModel : LoginModel = new LoginModel();

  constructor(private loginService: LoginSignUpService,
              private cookieService: CookieService,
              private router : Router) {
      this.loginModel = new LoginModel();
  }

  ngOnInit() {
  }

  loginUser(){
    console.log(this.loginModel);
    this.loginService.authenticateUser(this.loginModel)
    .subscribe(res => {
      this.cookieService.set(USER_ID, this.loginModel.username);
      this.cookieService.set(ACCESS_TOKEN, res.access_token);
    },
    (error) => {
      console.log(error);
    });
  }

}
