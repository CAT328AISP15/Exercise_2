public class ControlledAgent extends Agent
{
    Boolean _movedRight = false;
  Boolean _movedUp = false;
  
  float _speed = 5.0f;
  
  public ControlledAgent(PVector position)
  {
     super(position);
  }
  
  public void render()
  {
     super.render();
     ellipse(_position.x, _position.y, 32, 32); 
  }
  
  public void update()
  {
     super.update();
     
     DetectMovement();
     
     if(_movedRight)
       _velocity.x += 1;
      
      if(!_movedRight)
        _velocity.x -= 1;
        
        if(_movedUp)
       _velocity.y -= 1;
      
      if(!_movedUp)
        _velocity.y += 1;
  }
  
  void DetectMovement()
  {
    if(key == CODED)
    {
       if(keyCode == LEFT)
         _movedRight = false;
       
       if(keyCode == RIGHT)
         _movedRight = true;
         
         if(keyCode == UP)
         _movedUp = true;
       
       if(keyCode == DOWN)
         _movedUp = false;
    } 
  }
  
  
}
