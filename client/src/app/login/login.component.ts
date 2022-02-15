import { Component, OnInit } from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  LoginForm: any;

  constructor(
    private userService: UserService,
    private fb: FormBuilder,
    private router: Router
    ) { }

  ngOnInit(): void {
    this.LoginForm = this.fb.group({
      username: '',
      password: '',
      remember: ''
    })
  }

  login() {    
    console.log("heyyy");
    
    const enter_username = this.LoginForm.controls.username.value;
    const enter_password = this.LoginForm.controls.password.value;
    const remember = this.LoginForm.controls.remember.value;

    this.userService.getAllUsers().subscribe((res: any) => {
    for (let i = 0; i < res.length; i++) {
        if (res[i].username == enter_username) {
          if (res[i].password == enter_password) {
            if (remember == true) {
              localStorage.setItem('username', res[i].username)
              localStorage.setItem('password', res[i].password)
              console.log(enter_username, enter_password, remember);
              this.router.navigate(['home'])
            } else {
              console.log(enter_username, enter_password, remember);
              this.router.navigate(['home'])
            }
          }
        }
      }
    })
  }

}
