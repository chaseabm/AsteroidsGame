class Stars //note that this class does NOT extend Floater
{
  private float myX;
  private float myY;
  public Stars()
  {
  	myX = Math.random()*500;
  	myY = Math.random()*500;
  }
  public void show()
  {
  	fill(255);
  	ellipse(myX, myY, 1, 1)
  }
}
