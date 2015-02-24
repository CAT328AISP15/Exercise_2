Car c;
Hand h;
Alien a;
SpaceShip s;
Space b;

void setup() {
  size(750,750);
  c = new Car();
  h = new Hand();
  a = new Alien();
  s = new SpaceShip();
  b = new Space();
}
void draw()
{
  background(255);
  
 
  
  b.outerspace();
 
  c.tonda();
  
  h.hand();
  
  a.out();
  a.in();
  a.decoration();
  
  s.ship();
  s.pit();
  
  
}
