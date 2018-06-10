public class DefenseMeter{
  int x,y,r,speed;
  public DefenseMeter(){
    x = 850;
    y = 50;
    r = 50;
    speed = 0;
  }
  public void playDefense(){
    y += speed;
  }
  public void display(){
    ellipse(x,y,100,100);
  }
  public void setSpeed(int newSpeed){
    speed = newSpeed;
  }
  int gety(){
    return y;
  }
  int pressKey(){
    if (key == 'l'){
      setSpeed(0);
      return y;
    }
    return -1;
  }
}
