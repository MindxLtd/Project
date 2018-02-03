import { SignUpModel } from './../Models/AuthenticationModels/SignUpModel';
import { BaseURL } from './../Constants/ApiConstants';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';
import 'rxjs/add/observable/throw';
import { LoginModel } from '../Models/AuthenticationModels/LoginModel';

@Injectable()
export class LoginSignUpService {

  private ControllerName = "Authentication/";
  private url: string 
  private header : Headers;
  constructor(private http: Http) {
    this.url=BaseURL.toString().concat(this.ControllerName);
   }

   authenticateUser(login: LoginModel)
   {
     this.header = new Headers();
     login.grant_type = "password";
     this.header.append('Content-Type', 'application/x-www-form-urlencoded');
      return this.http.post(BaseURL.concat("Access/Token"), "grant_type="+login.grant_type+"&username="+login.username+"&password="+login.password, {headers: this.header})
      .map(Response => Response.json())
      .catch(this.handleError);
   }

   signUpUser(signUpModel: SignUpModel)
   {
     this.header = new Headers();
     this.header.append('Content-Type', 'application/json')
     return this.http.post(this.url.concat("signUp"), signUpModel, {headers: this.header})
     .map(Response => Response.json())
     .catch(this.handleError);
   }

   private handleError(error: Response)
   {
      return Observable.throw(error.json());  
      // if (error.status === 406)
      //   return Observable.throw(new BadInput(error.json()));
      // if (error.status === 403)
      //   return Observable.throw(new BadInput(error.json()));
      
      // return Observable.throw(new AuthenticationError(error.json()));
    
   }

}
