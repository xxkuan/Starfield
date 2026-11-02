Particle[] stuff = new Particle[250];

void setup() {
  size(750, 750);
  background(0, 0, 0);
  stuff[0] = new OddballParticle();
  for(int i = 1; i < stuff.length; i++){
    stuff[i] = new Particle(((int)(Math.random() * 21) + 365), ((int)(Math.random() * 21) + 365));
  }
}
void draw()
{
  background(0);
  for(int i = 0; i < stuff.length; i++){
    stuff[i].show();
    stuff[i].move();
  }
}
class Particle
{
  private double aX;
  private double aY;
  private double aAngle;
  private double speed;
  private float size;
  private int aColor;
  
  public Particle(int x, int y){
    aX = x;
    aY = y;
    aAngle = Math.random() * Math.random() * Math.PI;
    speed = 10; //
    size = 10;
    aColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void move(){
   aX += Math.cos(aAngle)*speed;
   aY += Math.sin(aAngle)*speed;
   
  if(aX < 0 || aX > width || aY < 0 || aY > height){
    aX = ((int)(Math.random() * 21) + 365);
    aY = ((int)(Math.random() * 21) + 365);
    aAngle = Math.random() * 2 * Math.PI;
  }}
  
  public void setSpeed(int kk){
    speed = kk;
  }
  
  public void setSize(int siz){
    size = (float)siz;
  }
  
  public void show(){
    fill(aColor);
    ellipse((float)aX, (float)aY, size, size);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  public OddballParticle(){
  super(375, 375);
  setSpeed(10);
  setSize((int)(Math.random()*101));
  }
}
