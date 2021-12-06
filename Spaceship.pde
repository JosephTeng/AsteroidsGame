class Spaceship extends Floater{
  public Spaceship(){
    corners = 3;
    xCorners = new int[]{-8,16,-8};
    yCorners = new int[]{-8,0,8};
    myColor = color(255);   
    myCenterX = myCenterY = 0; 
    myXspeed = myYspeed = 0;
    myPointDirection = 45;
  }
  public void hyperspace(){
    myXspeed = myYspeed = 0;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myPointDirection = (int)(Math.random()*360);
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
