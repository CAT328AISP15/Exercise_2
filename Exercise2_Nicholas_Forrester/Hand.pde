class Hand
{
  float x=250;
  
  void palm()
  {
     if (mouseX > 250 )
      {
        if (x >300)
          {
            pushMatrix();
            translate(-30, 0);
            fill(225);
            ellipse(250,250,50,50);
            popMatrix();
            x -= 30;
        
          }
       else if (x<200)
        {
            pushMatrix();
            translate( 30, 0);
            fill(225);
            ellipse(250,250,50,50);
            popMatrix();
            x += 30;
          }
      
      }
    else if (mouseX < 250)
      {
        fill(225);
        ellipse(x,250,50,50);
      }
  }
  void fingers()
  {
    line (250,225,250,195);
    line (235,230,225,203);
    line (265,230,275,205);
    line (225,240,205,225);
    line (275,250,295,250);
  }
  void arm()
  {
    line(250,275,250,325);
  }
  void hand()
  {
    palm();
    fingers();
    arm();
   
  }
  
}
