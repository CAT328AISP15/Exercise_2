PerlinNoiseAgent _agentOne;
CopyCatAgent _agentTwo;
ControlledAgent _agentThree;
ScaredyCatAgent _agentFour;

void setup()
{
  size(800, 600);
  
  _agentOne = new PerlinNoiseAgent(new PVector(width/2, height/2));
  
  _agentTwo = new CopyCatAgent(new PVector(width/2 + 50, height/2));
  _agentTwo.SetAgentCopying(_agentOne);
  
  _agentThree = new ControlledAgent(new PVector(width/2, height/2 - 100));
  
  _agentFour = new ScaredyCatAgent(new PVector(width/2, height/2 + 100));
  _agentFour.SetFearAgent(_agentThree);
}

void draw()
{
  
  background(0);
  
  _agentOne.render();
  _agentOne.update();
  
  _agentTwo.render();
  _agentTwo.update();
  
  _agentThree.render();
  _agentThree.update();
  
  _agentFour.render();
  _agentFour.update();
  
    if (mousePressed) 
    {
      PVector wind = new PVector(5,0);
      
      _agentThree.Addforce(wind);
      
      _agentOne._forceApplied = true;
      _agentOne.Addforce(wind);
    }
    
}

void mouseReleased()
{
   _agentOne._forceApplied = false; 
}
