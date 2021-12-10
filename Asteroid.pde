class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = Math.random()*4-2;
    corners = 6;
    xCorners = new int[] {-11,7,13,6,-11};
    yCorners = new int[] {-8,-8,0,10,8};
    myColor = color(255);
    myCenterX= Math.random()*600;
    myCenterY= Math.random()*600;
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    myPointDirection = 0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getX(){
    return (float)myCenterX;
  }
  public float getY(){
    return (float)myCenterY;
  }
}
