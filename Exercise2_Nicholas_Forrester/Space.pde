class Space
{
  void universe()
  {
    fill(0);
    rect(0,300,750,450,15);
  }
  void stars()
  {
    fill(255);
    ellipse(random(0,750),random(300,750),random(5,15),random(5,15));
    ellipse(random(0,750),random(300,750),random(5,15),random(5,15));
    ellipse(random(0,750),random(300,750),random(5,15),random(5,15));
    ellipse(random(0,750),random(300,750),random(5,15),random(5,15));
    ellipse(random(0,750),random(300,750),random(5,15),random(5,15));
    ellipse(random(0,750),random(300,750),random(5,15),random(5,15));
    ellipse(random(0,750),random(300,750),random(5,15),random(5,15));
    ellipse(random(0,750),random(300,750),random(5,15),random(5,15));
  }
  void outerspace()
  {
    universe();
    stars();
  }
}
