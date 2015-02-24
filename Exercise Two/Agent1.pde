class Agent1
{
  PVector location;
  
  Agent1()
  {
    location = new PVector(pmouseX, pmouseY);
  }
  
  
  
  void update()
  {
    noStroke();
    fill(101,67,33);
    ellipse(location.x, location.y, 90, 20);
    ellipse(location.x, location.y -10, 70, 20);
    ellipse(location.x, location.y - 20, 50, 20);
    ellipse(location.x, location.y - 30, 30, 20);    
  }
}

