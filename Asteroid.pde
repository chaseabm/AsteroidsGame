class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid()
	{
		rotationSpeed = (int)(Math.random() * 11) - 5;
		myCenterX = (int)(Math.random() * 700);
    	myCenterY = (int)(Math.random() * 500);
    	myDirectionX = (int)(Math.random() * 11) - 5;
    	myDirectionY = (int)(Math.random() * 11) - 5;
    	myPointDirection = 0;
    	myColor = 200;
    	corners = 8;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = (int)(Math.random() * 11) + 10;
    	yCorners[0] = (int)(Math.random() * 11) - 5;
    	xCorners[1] = (int)(Math.random() * 11) + 6;
    	yCorners[1] = (int)(Math.random() * 11) + 6;
    	xCorners[2] = (int)(Math.random() * 11) - 5;
    	yCorners[2] = (int)(Math.random() * 11) + 10;
    	xCorners[3] = (int)(Math.random() * 11) -16;
    	yCorners[3] = (int)(Math.random() * 11) + 6;
        xCorners[4] = (int)(Math.random() * 11) -20;
        yCorners[4] = (int)(Math.random() * 11) - 5;
        xCorners[5] = (int)(Math.random() * 11) -16;
        yCorners[5] = (int)(Math.random() * 11) -16;
        xCorners[6] = (int)(Math.random() * 11) - 5;
        yCorners[6] = (int)(Math.random() * 11) -20;
        xCorners[7] = (int)(Math.random() * 11) + 6;
        yCorners[7] = (int)(Math.random() * 11) -16;
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