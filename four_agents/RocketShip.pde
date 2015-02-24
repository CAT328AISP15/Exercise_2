class RocketShip
{
  int xPos, yPos;
  RocketShip(int x, int y) // coordinate starts at second top of the rocketship
  {
    xPos = x;
    yPos = y;
  }
  
  void construct()
  {
    
    fill(255);
    noStroke();
    rect(xPos-30, yPos+50, 60, 150); // base
    
    fill(250, 22, 26);
    triangle(xPos-30, yPos+50, xPos, yPos, xPos+30, yPos+50); // nose
    rect(xPos-2.5, yPos+175, 5, 45); // center leg
    triangle(xPos-80, yPos+220, xPos-30, yPos+165, xPos-30, yPos+190); // left leg
    triangle(xPos+80, yPos+220, xPos+30, yPos+165, xPos+30, yPos+190); // right leg
    
    fill(30, 24, 238);
    stroke(0);
    strokeWeight(2);
    ellipse(xPos, yPos+75, 30, 30); // top window
    ellipse(xPos, yPos+105, 20, 20); // middle window
    ellipse(xPos, yPos+125, 10, 10); // bottom window
    
    
  }
  
}

