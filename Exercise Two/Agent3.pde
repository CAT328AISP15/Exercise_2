class Agent3
{
  PVector location;
  PVector origin;

  float spaz;
  float angle;

  Agent3 ()
  {
    location = new PVector(320, 200);
    origin = new PVector (0, 0);
  } 

  /*void update()
   {
   pushMatrix();    
   translate(320,200);
   fill (0, 200, 800);
   triangle(origin.x - 30, origin.y -30, origin.x, origin.y + 30, origin.x + 30, origin.y - 30);
   //triangle(location.x+15, location.y +15, location.x, location.y +30, location.x + 15, location.y + 15);
   rotate(QUARTER_PI * 1.0);
   popMatrix(); 
   }*/

  void makeTriangle()
  {
    if (second() % 2 == 0) 
    {  
      spaz = random(-0.1, 0.1);
    }
    angle = angle + spaz;
    float c = cos(angle);
    //float d = sin(.1);
    //rotate(d);
    //fill(800, 200, 0);
    //triangle(location.x - 30, location.y -30, location.x, location.y + 30, location.x + 30, location.y - 30);
    rotate(c);
    fill(910000);
    triangle(location.x -15, location.y+1, location.x, location.y - 29, location.x + 15, location.y + 1);
  }
}

