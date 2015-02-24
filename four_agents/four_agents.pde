void setup()
{
  size(800, 700);
  
}

PVector Tdrive = new PVector(0, 0); // Vector to move Truck objects
PVector RSdrive = new PVector(0, 0);
PVector xlr8 = new PVector(2, 0);
float angle = 0;
PVector RSLocation = new PVector(134, 467);
PVector fakeRSLocation = new PVector(137, 463);
RocketShip bill = new RocketShip(134, 467);
Truck bob = new Truck(135, 600);

void draw()
{
  background(128);
  pushMatrix();
      Tdrive.add(xlr8);
      translate(Tdrive.x, Tdrive.y);
      rotate(angle);
      //rotate(1.5);
      //rotate(radians(-45));
      bob.construct();
      
   popMatrix();
   Tdrive.x++;
  
   
  
  pushMatrix();
     
     bill.construct();
      
  popMatrix();
    
  
}
