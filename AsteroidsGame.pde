Star [] sue;
Spaceship bob;
ArrayList <Asteroid> jay = new ArrayList <Asteroid>();
public void setup(){
  size(600,600);
  background(0);
  sue = new Star[100];
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
  bob = new Spaceship();
  for(int i = 0; i < 15; i++){
    jay.add(new Asteroid());
  }
}

public void draw(){
  background(0);
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
  }
  for(int i = 0; i < jay.size(); i++){
    jay.get(i).show();
    jay.get(i).move();
    float d = dist(bob.getX(), bob.getY(), jay.get(i).getX(), jay.get(i).getY());
    if (d < 15){
      jay.remove(i);
    }
  }
  bob.show();
  bob.move();
}
   
public void keyPressed(){
  if (key == 'w'){
     bob.accelerate(0.5);
  }
  if (key == 's'){
     bob.accelerate(-0.5);
  }
  if (key == 'a'){
     bob.turn(-12);
  }
  if (key == 'd'){
     bob.turn(12);
  }
  if (key == 'e'){
    bob.hyperspace();
  }
}
