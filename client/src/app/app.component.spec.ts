import { TestBed } from '@angular/core/testing';
import { RouterTestingModule } from '@angular/router/testing';
import { AppComponent } from './app.component';
import { HttpClient, HttpClientModule } from '@angular/common/http';

describe('AppComponent', () => {
  let http: HttpClient;
  let users: [any] = <any>[];
  //for DEV
  let url = "http://localhost:8080/"
  //for PROD
  //let url = "http://10.3.1.58:8989/"
  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [
        RouterTestingModule,
        HttpClientModule
      ],
      declarations: [
        AppComponent
      ],
    }).compileComponents();

    http = TestBed.inject(HttpClient);
  });

  it('should get users', (done) => {
    http.get(`${url}comparator/users`).subscribe((res: any) => {
      expect(res.length).toBe(2)
      done()
    })
  });
});
