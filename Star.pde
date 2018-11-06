class Star //note that this class does NOT extend Floater
{
  private int myX;
  private int myY;
  private int mySize;

  public Star() {
  	myX = (int)(Math.random() * 500) + 1;
  	myY = (int)(Math.random() * 500) + 1;
  	mySize = (int)(Math.random() * 7) + 1;
  }

  public void display() {
  	fill(255);
  	noStroke();
  	ellipse(myX, myY, mySize, mySize);                                  
  } 
}
