Spaceship bob = new Spaceship();
Star[] sky = new Star[200];
ArrayList <Asteroid> nice = new ArrayList <Asteroid>();

public void setup() 
{
 size(500,500);
 for (int i = 0; i < sky.length; i++) {
 sky[i] = new Star();
 }
 for (int j = 0; j < 20; j++) {
 nice.add(new Asteroid());
 }
}

public void draw() 
{
 background(0);
 bruh.show();
 bruh.move();
 for(int i = 0; i < nice.size(); i++) {
 nice.get(i).show();
 nice.get(i).move();
 float d = dist(bruh.getX(), bruh.getY(), nice.get(i).getX(), nice.get(i).getY());
 if (d < 10) {
 nice.remove(i);
 }
 }
 for (int i = 0; i < sky.length; i++) {
 sky[i].show();
 }
}
public void keyPressed()
{
 if(key == 'a') {
 bruh.turn(-5);
 } if(key == 'd') {
 bruh.turn(5);
 } if(key == 'w') {
 bruh.accelerate(0.3);
 } if(key == 's') {
 bruh.accelerate(-0.3);
 } if(key == 'h') {
 bruh.hyperspace();
 }
}
