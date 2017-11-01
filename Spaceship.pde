class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    	myColor = 255;
    	corners = 7;
    	xCorners[0] = -11;
    	yCorners[0] = 6;
    	xCorners[1] = -8;
    	yCorners[1] = 6;
    	xCorners[2] = -3;
    	yCorners[2] = 3;
    	xCorners[3] = 11;
    	yCorners[3] = 0;
    	xCorners[4] = -3;
    	yCorners[4] = -3;
    	xCorners[5] = -8;
    	yCorners[5] = -6;
    	xCorners[6] = -11;
    	yCorners[6] = -6;
    }

    public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
}