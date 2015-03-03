public class Agent
{
   public PVector _position;
   public PVector _acceleration;
   public PVector _velocity;
   
   public int _topSpeed = 5;
  
   public Agent(PVector position)
   {
      _position = position;
      _acceleration = new PVector();
      _velocity = new PVector(0, 0);
   }
   
   public void render()
   {
        
   }
   
   public void update()
   {
     CheckEdges();
     
     _velocity.add(_acceleration);
     _velocity.limit(_topSpeed);
     _position.add(_velocity);
     _acceleration.mult(0);
   }
   
   public void Addforce(PVector force)
   {
     _acceleration.add(force);
   }
   
   //http://natureofcode.com/book/chapter-2-forces/ Checking Boundaries
   
   public void CheckEdges()
   {
      if(_position.x > width)
      {
        _position.x = width;
        _velocity.x *= -1; 
      }
      else if(_position.x < 0)
      {
        _velocity.x *= -1;
        _position.x = 0; 
      }
      
      if(_position.y > height) {
        _velocity.y *= -1;
        _position.y = height; 
      }
      else if(_position.y < 0) {
        _velocity.y *= -1;
        _position.y = 0; 
      }
       
   }
}
