class Stars //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  public Stars()
  {
  	myX = (int)Math.random()*500;
  	myY = (int)Math.random()*500;
  }
  public void show()
  {
  	fill(255);
  	ellipse(myX, myY, 1, 1);
  }
}
