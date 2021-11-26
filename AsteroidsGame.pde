Spaceship bob = new Spaceship();
Star[] sky = new Star[200];

public void setup() 
{
 size(500,500);
 for (int i = 0; i < sky.length; i++) {
 sky[i] = new Star();
 }
}

public void draw() 
{
 background(0);
 bob.show();
 bob.move();
 for (int i = 0; i < sky.length; i++) {
 sky[i].show();
 }
}
public void keyPressed()
{
 if(key == 'a') {
 bob.turn(-5);
 } if(key == 'd') {
 bob.turn(5);
 } if(key == 'w') {
 bob.accelerate(0.3);
 } if(key == 's') {
 bob.accelerate(-0.3);
 } if(key == 'h') {
 bob.hyperspace();
 }
}
