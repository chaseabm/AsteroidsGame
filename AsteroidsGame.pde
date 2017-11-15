Spaceship shuttlecock = new Spaceship();
Stars [] allstar = new Stars[200];
//Asteroid [] allsteroids = new Asteroid[7];
ArrayList <Asteroid> allsteroids = new ArrayList <Asteroid>();
boolean accelerating = false;
boolean turningCounterClockwise = false;
boolean turningClockwise = false;
public void setup() 
{
  size(700, 500);
  for (int i = 0; i < allstar.length; i++)
  {
  	allstar[i] = new Stars();
  }
  for (int i = 0; i < 8; i++)
  {
    allsteroids.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < allstar.length; i++)
  {
  	allstar[i].show();
  }
  for (int i = 0; i < allsteroids.size(); i++)
  {
    allsteroids(i).show();
    allsteroids(i).move();
  }
  shuttlecock.show();
  shuttlecock.move();
  if (accelerating == true){shuttlecock.accelerate(.2);}
  if (turningCounterClockwise == true){shuttlecock.turn(-5);}
  if (turningClockwise == true){shuttlecock.turn(5);}
}
public void keyPressed()
{
  if (key == 'w' || key == 'W'){accelerating = true;}
  if (key == 'a' || key == 'A'){turningCounterClockwise = true;}
  if (key == 'd' || key == 'D'){turningClockwise = true;}
  if (key == 'q' || key == 'Q')
	{
	shuttlecock.setX((int)(Math.random()*700));
	shuttlecock.setY((int)(Math.random()*500));
	shuttlecock.setDirectionX(0);
	shuttlecock.setDirectionY(0);
	shuttlecock.setPointDirection((int)(Math.random()*360));
	}
}
public void keyReleased()
{
  if (key == 'w' || key == 'W'){accelerating = false;}
  if (key == 'a' || key == 'A'){turningCounterClockwise = false;}
  if (key == 'd' || key == 'D'){turningClockwise = false;}
}