Spaceship shuttlecock = new Spaceship();
Stars [] allstar = new Stars[200];
ArrayList <Asteroid> allsteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
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
  for (int i = 0; i < bullets.size(); i++)
  {
    bullets.get(i).show();
    bullets.get(i).move();
  }
  for (int i = 0; i < allsteroids.size(); i++)
  {
    allsteroids.get(i).show();
    allsteroids.get(i).move();
    if (dist(allsteroids.get(i).getX(), allsteroids.get(i).getY(), shuttlecock.getX(), shuttlecock.getY()) < 25)
      {
      allsteroids.remove(i);
      }
  }
//collisions
  for(int j = 0; j < bullets.size(); j++)
  {
    for(int i = 0; i < allsteroids.size(); i ++)
      if(dist(bullets.get(j).getX(), bullets.get(j).getY(), allsteroids.get(i).getX(), allsteroids.get(i).getY()) < 20)
      {
        allsteroids.remove(i);
      }
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
  if (key == ' '){bullets.add(new Bullet(shuttlecock));}
}
public void keyReleased()
{
  if (key == 'w' || key == 'W'){accelerating = false;}
  if (key == 'a' || key == 'A'){turningCounterClockwise = false;}
  if (key == 'd' || key == 'D'){turningClockwise = false;}
}