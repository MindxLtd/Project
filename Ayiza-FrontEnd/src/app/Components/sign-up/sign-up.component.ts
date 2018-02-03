import { LookUpsService } from './../../Services/look-ups.service';
import { SignUpLookUpResponse } from './../../Models/AuthenticationModels/SignUpLookUpResponse';
import { LoginSignUpService } from './../../Services/login-sign-up.service';
import { CookieService } from 'ngx-cookie-service';
import { Router } from '@angular/router';
import { SignUpModel } from './../../Models//AuthenticationModels/SignUpModel';
import { Component, OnInit } from '@angular/core';
import { log } from 'util';

@Component({
  selector: 'app-sign-up',
  templateUrl: './sign-up.component.html',
  styleUrls: ['./sign-up.component.css']
})
export class SignUpComponent implements OnInit {

  private signUpModel: SignUpModel;
  private SignUpLookUpResponse: SignUpLookUpResponse;

  constructor(private loginService: LoginSignUpService,
    private lookUpService : LookUpsService,
    private cookieService: CookieService,
    private router : Router) {
      this.signUpModel = new SignUpModel();
      this.SignUpLookUpResponse = new SignUpLookUpResponse();
    }

  ngOnInit() {
    this.lookUpService.getSignUpLookUps()
    .subscribe(response => {
      this.SignUpLookUpResponse = response;
      if(this.SignUpLookUpResponse.Titles.length > 0)
        this.signUpModel.Title = this.SignUpLookUpResponse.Titles[0].LookUpId;
      if(this.SignUpLookUpResponse.Countries.length > 0)
        this.signUpModel.Country = this.SignUpLookUpResponse.Countries[0].LookUpId;
    })
  }

  SignUp()
  {
    this.loginService.signUpUser(this.signUpModel)
    .subscribe(response => {
      this.router.navigateByUrl('/login');
    },
    (error) => {
      console.log(error);
    })
  }

}
