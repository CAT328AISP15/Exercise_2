class SpaceShip
{
  float x = 600;
  float y = 400;
  void ship()
  {
    fill(225);
   triangle(x,y,(x+100),(y-40),(x+100),(y+40)); 
  }
  void pit()
  {
    fill(5);
    triangle((x +50),y,(x+70),(y-15),(x +70),(y + 15));
  }
  void rocket()
  {
    ship();
    pit();
    if (key == CODED && keyCode == Right )
     {
       if ( x < 450)
       {
         x += 1;
       }
     }
     if (key == CODED && keyCode == Left )
     {
       if ( x > 50)
       {
         x -= 1;
       }
     }
     if (key == CODED && keyCode == Up )
     {
       if ( y > 300)
       {
         y -= 1;
       }
     }
     if (key == CODED && keyCode == Down )
     {
       if ( y < 700)
       {
         y += 1;
       }
     }
  }
}
