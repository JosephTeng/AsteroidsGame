Star [] sue = new Star [100];
Spaceship bob;
public void setup(){
  size(600,600);
  background(0);
  for(int i = 0; i < sue.length; i++){
    sue[i] = new Star();
  }
  bob = new Spaceship();
}

public void draw(){
  background(0);
  for(int i = 0; i < sue.length; i++){
    sue[i].show();
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
