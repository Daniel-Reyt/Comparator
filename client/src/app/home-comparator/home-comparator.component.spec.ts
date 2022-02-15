import { ComponentFixture, TestBed } from '@angular/core/testing';

import { HomeComparatorComponent } from './home-comparator.component';

describe('HomeComparatorComponent', () => {
  let component: HomeComparatorComponent;
  let fixture: ComponentFixture<HomeComparatorComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ HomeComparatorComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(HomeComparatorComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
