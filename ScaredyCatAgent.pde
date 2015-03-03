public class ScaredyCatAgent extends Agent
{
   Agent _fearAgent;
   
   Boolean _isFeared = false;
   
   float angle;
  
  
   public ScaredyCatAgent(PVector position)
   {
     super(position);
   }
   
   public void render()
   {
     super.render();
     
     rect(_position.x, _position.y, 50, 50);
   }
   
   public void update()
   {
      super.update();
     
     if(_fearAgent != null)
     {
       
       float d = dist(_position.x, _position.y, _fearAgent._position.x, _fearAgent._position.y);
       
       PVector away = new PVector(_position.x - _fearAgent._position.x,
                                   _position.y - _fearAgent._position.y);
       away.normalize();
       
       if(d < 100)
         _isFeared = true;
       else
          _isFeared = false; 
       
       if(_isFeared)
       {
         _position.x += away.x;
         _position.y += away.y;
       }
       else
       {
          _position = new PVector(width/2, height/2); 
       }
     } 
   }
  
   public void SetFearAgent(Agent fearAgent)
   {
     _fearAgent = fearAgent;
   }
   
   //Code from http://forum.processing.org/one/topic/calculating-angle.html
   public float GetAngle(PVector v1, PVector v2)
   {
      float a = atan2(v2.y, v2.x) - atan2(v1.y, v1.x);
      
      if(a < 0)
        a+= TWO_PI;
      
      return a;
   }
}
