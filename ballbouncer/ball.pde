public class Ball
{
  PVector loc;
  PVector velo; 
  PVector accel;
  
  float r = 8 ;
  float topSpeed = 5;
  
  public Ball(float x, float y)
  {
    loc = new PVector(x,y);
    velo = new PVector(0, 0);
    accel = new PVector();
  }
  
  void update()
  {
    velo.add(accel);
    velo.limit(topSpeed);
    loc.add(velo);
    accel.mult(0);
  }
  
    void applyForce( PVector force)
  {
    accel.add(force);
  }

  float getVelocity()
  {
    return velo.x;
  }
  
  float getTopSpeed()
  {
    return topSpeed;
  }
  
  void render()
  {
    stroke(0);
    strokeWeight(2);
    pushMatrix();
    translate(loc.x, loc.y);
    ellipse(0,0, r*2, r*2);
    popMatrix();
  }
}
 
    
    
