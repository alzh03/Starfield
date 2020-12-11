class Particle
{
  double mySpeed, myAngle;
  int myColor; 
  float mySize, myX, myY;
  Particle()
  {
    myX = 250;
    myY = 250;
    myAngle = Math.random()*(Math.PI*2);
    mySpeed = Math.random()*3;
    mySize = 7;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));  }
  void move()
  {
     myX += Math.cos(myAngle)*mySpeed;
     myY += Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    ellipse(myX, myY, mySize, mySize);
    noStroke();
  }
}
class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = 250;
    myY = 250;
    myAngle = Math.random()*(Math.PI*2);
    mySpeed = Math.random()*3;
    mySize = 15;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move()
  {
    myX = myX + (int)(Math.random()*4)-1;
    myY = myY + (int)(Math.random()*4)-1;
  }
  void show()
  {
    fill(0, 265, 0);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
}
Particle[] ball = new Particle[100];
OddballParticle[] odd = new OddballParticle[1];

void setup()
{
  size(500, 500);
  frameRate(30);
  for (int i = 0; i < ball.length; i++)
    ball[i] = new Particle();
  odd[0] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i < ball.length; i++){
    ball[i].show();
    ball[i].move();
  }
  odd[0].show();
  odd[0].move();
}
