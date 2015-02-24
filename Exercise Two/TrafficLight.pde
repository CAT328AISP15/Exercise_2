

class TrafficLight
{
  int light;
  int d;
  int s;

  TrafficLight()
  {
    light = 2;
    d = 0;
  }

  void update()
  {
    s = second();
    fill(0);
    rect(480, 280, 40, 100, 7);

    if (s > d) 
    {  
      light = int(random(3));
    }
    d = s;
    switch(light)
    {
    case 0: 
      stroke(0);
      fill(1000, 0, 0);
      ellipse(500, 300, 30, 30);
      break;

    case 1:
      stroke(0);
      fill(400, 200, 0);
      ellipse(500, 330, 30, 30);
      break;

    case 2:
      stroke(0);
      fill(0, 1000, 0);
      ellipse(500, 360, 30, 30);   
      break;

    default:
      break;
    }
  }
}

