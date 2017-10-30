Spaceship shuttlecock = new Spaceship();
public void setup() 
{
  size(500, 500);
}
public void draw() 
{
  shuttlecock.show();

}
public void keyPressed()
{
  if (key == 'w' || key == 'W'){shuttlecock.accelerate(5);}
  if (key == 'a' || key == 'A'){shuttlecock.turn(-1);}
  if (key == 's' || key == 'S'){shuttlecock.turn(1);}
  if (key == 'q' || key == 'Q'){/*hyperspace*/}
}