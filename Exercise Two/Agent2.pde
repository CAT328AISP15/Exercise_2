class Agent2

{

  PVector location;

  PVector velocity;

  PVector acceleration;

  float topspeed;

  float minspeed;


  Agent2()

  {

    location = new PVector(100, 200);

    velocity = new PVector(0, 0);

    acceleration = new PVector(.01, 0);

    topspeed = 5;

    minspeed = .1;
  }



  void update()

  {

  // To make object side-scroll
    location.add(velocity);
    velocity.add(acceleration);
    velocity.limit(topspeed);
    
  // To keep object within bounds
    if (location.x <= 0)

      location.x = 635;

    if (location.y <= 0)

      location.y = 395;

    if (location.x >= 640)

      location.x = 5;

    if (location.y >= 400)

      location.y = 5;
  }




  void makeArc(int d)

  {

    //pushMatrix();

    translate(0,0);
    
    fill(100, 200, 600);
    
    float justSpinDammit = 0;
    
    if (second() % 3 == 0) 
    {  
      justSpinDammit += d;
    }
    
    //can't get rotate to work [>_<]
    
    rotate(radians(justSpinDammit));
    
    arc(location.x, location.y, 80, 80, 0, PI+QUARTER_PI, PIE);

    fill(0);

    ellipse(location.x, location.y, 20, 20);
    
    fill(100, 100, 0);
    
    ellipse(location.x, location.y, 10, 10);

    //popMatrix();
  }
}

