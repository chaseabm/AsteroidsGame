Spaceship shuttlecock = new Spaceship();
Stars [] allstar = new Stars[200];
public void setup() 
{
  size(500, 500);
  for (int i = 0; i < allstar.length; i++)
  {
  	allstar[i] = new Stars();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < allstar.length; i++)
  {
  	allstar[i].show();
  }
  shuttlecock.show();
  shuttlecock.move();
}
public void keyPressed()
{
  if (key == 'w' || key == 'W'){shuttlecock.accelerate(5);}
  if (key == 'a' || key == 'A'){shuttlecock.turn(-1);}
  if (key == 's' || key == 'S'){shuttlecock.turn(1);}
  if (key == 'q' || key == 'Q')
	{
	shuttlecock.setX((int)Math.random()*500);
	shuttlecock.setY((int)Math.random()*500);
	shuttlecock.setDirectionX(0);
	shuttlecock.setDirectionY(0);
	shuttlecock.setPointDirection((int)Math.random()*360);
	}
}