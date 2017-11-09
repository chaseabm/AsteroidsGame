Spaceship shuttlecock = new Spaceship();
Stars [] allstar = new Stars[200];
Asteroid [] allsteroids = new Asteroid[10];
boolean accelerating = false;
boolean turningCounterClockwise = false;
boolean turningClockwise = false;
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < allstar.length; i++)
  {
  	allstar[i] = new Stars();
  }
  for (int i = 0; i < allsteroids.length; i++)
  {
    allsteroids[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < allstar.length; i++)
  {
  	allstar[i].show();
  }
  for (int i = 0; i < allsteroids.length; i++)
  {
    allsteroids[i].show();
    allsteroids[i].move();
  }
  shuttlecock.show();
  shuttlecock.move();
  if (accelerating == true){shuttlecock.accelerate(1);}
  if (turningCounterClockwise == true){shuttlecock.turn(-10);}
  if (turningClockwise == true){shuttlecock.turn(10);}
}
public void keyPressed()
{
  if (key == 'w' || key == 'W'){accelerating = true;}
  else {accelerating = false;}
  if (key == 'a' || key == 'A'){turningCounterClockwise = true;}
  else {turningCounterClockwise = false;}
  if (key == 'd' || key == 'D'){turningClockwise = true;}
  else {turningClockwise = false;}
  if (key == 'q' || key == 'Q')
	{
	shuttlecock.setX((int)(Math.random()*500));
	shuttlecock.setY((int)(Math.random()*500));
	shuttlecock.setDirectionX(0);
	shuttlecock.setDirectionY(0);
	shuttlecock.setPointDirection((int)(Math.random()*360));
	}
}