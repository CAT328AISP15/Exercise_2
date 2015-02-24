class Car
{
  float x = 100;
  float y = 140;
  float a = 140; 
  float b = 110;
 
   void base()
  {
    fill(225);
    stroke(3);
    strokeWeight(3);
    
    rect(x,100,50,50,15);
    
  } 
  void window()
  {
    fill(0);
    stroke(3);
    strokeWeight(3);
    
    
    rect(y,110,10,15,5);
  }
  void wheels()
  {
    stroke(1);
    strokeWeight(5);
    
    ellipse(a,150,20,20);
    ellipse(b,150,20,20);
  }
  void tonda()
  {
    base();
    window();
    wheels();
    if (y <750)
    {
      x +=1;
      y +=1;
      a +=1;
      b +=1;
    }
    else if (y == 750)
    {
      x=0;
      y=40;
      a=40;
      b=10;
    }
  }
}
