class Truck
{
  int xPos, yPos; // coordinates of entire agent
  Truck(int x, int y)
  {
    xPos = x;
    yPos = y;
  }
  
  void construct()
  // "draws" in the shape
  {
    fill(53, 94, 230); //blueish
    rect(xPos, yPos, 100, 50); //main body
    
    fill(0);
    ellipse(xPos+15, yPos+50, 20, 20); //Left wheel
    ellipse(xPos+90, yPos+50, 20, 20); //right wheel
    
    fill(70); // dark grey
    rect(xPos+80, yPos+5, 20, 30); // window
    
  }
}

