class Asteroid extends Floater
{
	private int rotationSpeed;
	public Asteroid()
	{
		rotationSpeed = (int)(Math.random() * 7) - 3;
		myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
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
	super.turn(rotationSpeed);
	super.move();
}