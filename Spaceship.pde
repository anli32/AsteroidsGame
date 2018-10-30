class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 6;
    yCorners[0] = 0;
    xCorners[1]= -4;
    yCorners[1] = 4;
    xCorners[2] = -2;
    yCorners[2] = 0;
    xCorners[3] = -4;
    yCorners[4] = -4;
    
    myColor = color(255, 255, 255);
    
    myCenterX = width / 2;
    mCenterY = height / 2;
    
    myDirectionX = 0;
    myDirectionY = 0;
    
    myPointDirection = 270;
        
    public void setX(int x)  
    
    public int getX();   
    public void setY(int y);   
    public int getY();   
    public void setDirectionX(double x);   
    public double getDirectionX();   
    public void setDirectionY(double y);   
    public double getDirectionY();   
    public void setPointDirection(int degrees);   
    public double getPointDirection(); 

      
}
