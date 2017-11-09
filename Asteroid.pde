class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid()
	{
		rotationSpeed = (int)(Math.random() * 7) - 3;
		myCenterX = (int)(Math.random() * 500);
    	myCenterY = (int)(Math.random() * 500);
    	myDirectionX = (int)(Math.random() * 11) - 5;
    	myDirectionY = (int)(Math.random() * 11) - 5;
    	myPointDirection = 0;
    	myColor = 255;
    	corners = 5;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -10;
    	yCorners[0] = 0;
    	xCorners[1] = 0;
    	yCorners[1] = 10;
    	xCorners[2] = 10;
    	yCorners[2] = 0;
    	xCorners[3] = 0;
    	yCorners[3] = -10;
	}
	public void move()
	{
		super.move();
		super.turn(rotationSpeed);
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