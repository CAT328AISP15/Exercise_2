

PVector location = new PVector(50, 300);

boolean apex = false;

Ball redBall;

void setup()
{
  size(640,360);
  redBall = new Ball(location.x, location.y);
}

void draw()
{
  background(255);
  
  if (redBall.getVelocity() > 0)
  {
    PVector gravity = new PVector( 0, -0.4);
    redBall.applyForce(gravity);
    redBall.update();
  }
  else if (location.y == height)
  {
    PVector bounce = new PVector(0,5);
    redBall.applyForce(bounce);
    redBall.update();
  }
  redBall.render();
}
    
  

