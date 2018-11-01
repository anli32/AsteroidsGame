class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 8;
    yCorners[0] = 0;
    xCorners[1]= -4;
    yCorners[1] = 4;
    xCorners[2] = -2;
    yCorners[2] = 0;
    xCorners[3] = -4;
    yCorners[3] = -4;
    
    myColor = color(255, 255, 255);
    
    myCenterX = width / 2;
    myCenterY = height / 2;
    
    myDirectionX = 0;
    myDirectionY = 0;
    
    myPointDirection = 270;
}
        
    public void setX(int x) {
        myCenterX = x;
    }  
    
    public int getX() {
        return (int)myCenterX;
    } 

    public void setY(int y) {
        myCenterY = y;
    }  

    public int getY() {
        return (int)myCenterY;
    }   

    public void setDirectionX(double x) {
        myDirectionX = x;
    }  

    public double getDirectionX() {
        return myDirectionX;
    } 

    public void setDirectionY(double y) {
        myDirectionY = y;
    }

    public double getDirectionY() {
        return myDirectionY;
    }   

    public void setPointDirection(int degrees) {
        myPointDirection = degrees;
    }

    public double getPointDirection() {
        return myPointDirection;
    }

      
}
