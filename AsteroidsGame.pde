Spaceship shuttlecock = new Spaceship();
public void setup() 
{
  size(500, 500);
}
public void draw() 
{
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
	shuttlecock.setX(Math.random()*500);
	shuttlecock.setY(Math.random()*500);
	shuttlecock.setDirectionX(0);
	shuttlecock.setDirectionY(0);
	shuttlecock.setPointDirection(Math.random()*360);
	}
}