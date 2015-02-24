Agent3 tri = new Agent3();

Agent2 ark = new Agent2();

Agent1 tensionRising = new Agent1();

TrafficLight light = new TrafficLight();

void setup()

{
  size(640,400);
}

// Sorry, couldn't get this one to work the way I wanted :/
void mousePressed()
{
  tensionRising.update();
}


void draw()

{ 
 
  background(255,255,255);  
  
  mousePressed();
  
  light.update();
    
  ark.update();

  ark.makeArc(2);
  
  //tri.update();
  
  tri.makeTriangle();
 ;}


