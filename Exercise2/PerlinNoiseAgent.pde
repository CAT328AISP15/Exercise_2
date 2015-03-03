import java.util.*;

public class PerlinNoiseAgent extends Agent
{
   Random _random;
  
   float t = 0;
   float n = 0;
   float x = 0;
   float y = 0;
   
   Boolean _isInverted = false;
   Boolean _pressButton = false;
   
   public Boolean _forceApplied = false;
  
   public PerlinNoiseAgent(PVector position)
   {
      super(position);
      
      _random = new Random();
   }

   public void render()
   {
      super.render();
      ellipse(_position.x, _position.y, 32, 32);
   }
   
   public void update()
   {
      super.update();
      
      n = noise(t);
      
      if(!_forceApplied)
      {
        PVector temp = new PVector();

        temp.x = map(n, 0, 1, 0, width);
        temp.y = map(n, 0, 1, 0, height);
        
        _position = temp;
      }


      t += 0.01;
   }
}
