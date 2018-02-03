import { BaseURL } from './../Constants/ApiConstants';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs/Observable';
import { Http, Headers } from '@angular/http';
import 'rxjs/add/operator/catch';
import 'rxjs/add/operator/map';
import 'rxjs/add/operator/toPromise';
import 'rxjs/add/observable/throw';

@Injectable()
export class LookUpsService {

  private ControllerName = "LookUps/";
  private url: string 
  private header : Headers;

  constructor(private http: Http) {
    this.url=BaseURL.toString().concat(this.ControllerName);
   }

   getSignUpLookUps()
   {
    return this.http.get(this.url.concat('getSignUpLookUps'))
    .map(res => res.json())
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
