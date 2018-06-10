import processing.sound.*;
public class HitterBall{
  int x, y, speed;
  int r;
  color c;
  PImage sprite;
  boolean pitchDone = false;

  public HitterBall(HitterMeter meter){
    x = 0;
    y = 600;
    r = 50;
    c = color(255);
    speed = meter.getSpeed();
  }
  
  public void setPitchDone(){
    pitchDone = !pitchDone;
  }
  
  public void throwPitch(){
    x += speed;
    checkWalls();
  }
  
  public void checkWalls(){
    if ((x >= 600) || (x <= 0)){
      speed *= -1;
    }
  }
  
  public void display(){
    fill(c);
    sprite = loadImage("baseballSize.png");
    image(sprite,x,y);
  }
  
  public int keyPressed(){
    if (!pitchDone){
      //return -1; //Not your turn!
    }
    if (key == ' '){
      stopPitch();
      drawLine(x);
      return x;
    }
    return -1;
  }
  
  public void drawLine(int x){
    fill(255,140,0); //Dark orange
    rect(x,600,5,100);
  }
  public void stopPitch(){
    speed = 0;
  }
  
  public void setSpeed(int newSpeed){
    speed = newSpeed;
  }
  
   public void newSpeed(int ans){
         if (ans == 0){
           setSpeed(10);
         }
         if (ans == 1){
           setSpeed(20);
         }
         if (ans == 2){
           setSpeed(30);
         }
         if (ans == 3){
           setSpeed(40);
         }
         if (ans == 4){
           setSpeed(50);
        }
  }
}
