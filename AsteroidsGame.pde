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
  if (key == 'w' || key == 'W'){/*move forward in direction pointing*/}
  if (key == 'a' || key == 'A'){setPointDirection(myPointDirection + 1);}
  if (key == 's' || key == 'S'){setPointDirection(myPointDirection - 1);}
  if (key == 'q' || key == 'Q'){/*hyperspace*/}
}