Spaceship bob = new Spaceship();
Star[] sky = new Star[200];
ArrayList <Asteroid> sue = new ArrayList <Asteroid>();

public void setup() 
{
 size(500,500);
 for (int i = 0; i < sky.length; i++) {
 sky[i] = new Star();
 }
 for (int j = 0; j < 20; j++) {
 bob.add(new Asteroid());
 }
}

public void draw() 
{
 background(0);
 bob.show();
 bob.move();
 for(int i = 0; i < sue.size(); i++) {
 sue.get(i).show();
 sue.get(i).move();
 float d = dist(bob.getX(), bob.getY(), sue.get(i).getX(), sue.get(i).getY());
 if (d < 10) {
 sue.remove(i);
 }
 }
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
