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
	}
	super.turn(rotationSpeed);
	super.move();
}