public class CopyCatAgent extends Agent
{
  Agent _copy;
  
  public CopyCatAgent(PVector position)
  {
    super(position); 
  }
  
  public void SetAgentCopying(Agent copy)
  {
    _copy = copy;
  }
  
  public void render()
  {
    super.render();
    rect(-_position.x + width, -_position.y + height, 40, 40);
  }
  
  public void update()
  {
    super.update();
  
    if(_copy != null)
    {
      _position.x = _copy._position.x;
      _position.y = _copy._position.y;
    }
    
  }
  
  
}
