public class HitterBall{
  int x, y, speed;
  int r;
  color c;
  
  public HitterBall(HitterMeter meter){
    x = 0;
    y = 625;
    r = 50;
    c = color(255);
    speed = meter.getSpeed();
  }
  
  public void throwPitch(){
    x += speed;
    checkWalls();
  }
  
  public void checkWalls(){
    if ((x >= 700) || (x <= 0)){
      speed *= -1;
    }
  }
  
  public void display(){
    fill(c);
    ellipse(x,y,100,100);
  }
  
  public int keyPressed(){
    if (key == ' '){
      speed = 0;
      return x;
    }
    return -1;
  }
  
  public void setSpeed(int newSpeed){
    speed = newSpeed;
  }
}
  
