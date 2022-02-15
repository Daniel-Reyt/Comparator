import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComparatorComponent } from './home-comparator/home-comparator.component';
import { LoginComponent } from './login/login.component';

const routes: Routes = [
  {path: '', component: LoginComponent},
  {path: 'home', component: HomeComparatorComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
