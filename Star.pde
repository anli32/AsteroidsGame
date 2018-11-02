class Star //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;

  public Star(int x, int y) {
  	myX = x;
  	myY = y;
  }

  public void display() {
  	ellipse(myX, myY, 5, 5);
  } 
}
