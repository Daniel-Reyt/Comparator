import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {
  collapsed: any = false;

  constructor() { }

  ngOnInit(): void {
  }
  setVisibilityOfNav() {
    console.log(this.collapsed);
    
    if (this.collapsed) {
      this.collapsed = false
    } else {
      this.collapsed = true
    }
  }
}
