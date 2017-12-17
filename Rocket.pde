public class Rocket extends Floater
{
  public Rocket()
  {
    myCenterX = 350;
    myCenterY = 250;
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]= -12;
    yCorners[0] = -6;
    xCorners[1]= -12;
    yCorners[1] = 6;      
    xCorners[2]= -17;
    yCorners[2] = 0;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    myColor = color(255, 0, 0);        
  }

  public void setX(int x) {myCenterX = x;}    
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY = y;}    
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
}