public class Runner{
  int x,y,r,xspeed,yspeed;
  int result = p.keyPressed();
  String outcome;
  public Runner(){
    x = 10;
    y = 10;
    r = 10;
    xspeed = 0;
    yspeed = 0;
  }
  void running(){
   x += xspeed;
   y += yspeed;
  }
  
  void startRunning(){
    ellipse(x,y,2*r,2*r);
  }
  void setOutcome(){
      if ((result > 231 && result < 282) || (result > 433 && result < 484)){
        outcome = "Single";
      }
      if ((result >= 282 && result < 318) || (result >= 398 && result < 434)){
        outcome = "Double";
      }
      if ((result >= 318 && result < 347) || (result >= 369 && result < 398)){
        outcome = "Triple";
      }
      if (result >= 347 && result < 369){
        outcome = "Home Run";
      }
      outcome = "Out";
  }
  boolean isFirst(){
    if (x == 10 && y == 410){
      return true;
    }
    return false;
  }
  boolean isSecond(){
    if (x == 410 && y == 410){
      return true;
    }
    return false;
  }
  boolean isThird(){
    if (x == 410 && y == 10){
      return true;
    }
    return false;
  }
  boolean isHome(){
    if (x == 10 && y == 10){
      return true;
    }
    return false;
  }
  void continueRunning(){
    if (isFirst()){
      xspeed = 5;
      yspeed = 0;
    }
    if (isSecond()){
      yspeed = -5;
      xspeed = 0;
    }
    if (isThird()){
      xspeed = -5;
      yspeed = 0;
    }
    if (isHome()){
      yspeed = 5;
      xspeed = 0;
    }
  }
  void setSpeed(int x,int y){
    xspeed = x;
    yspeed = y;
  }
  void doTheHitting(){
    if (outcome.equals("Single")){
      continueRunning();
      if (x == 10 && y == 410){
        setSpeed(0,0);
      }
    }
    if (outcome.equals("Double")){
      continueRunning();
      if (x == 410 && y == 410){
        setSpeed(0,0);
      }
    }
    if (outcome.equals("Triple")){
      continueRunning();
      if (x == 410 && y == 10){
        setSpeed(0,0);
      }
    }
    if (outcome.equals("Home Run")){
      continueRunning();
      if (x == 10 && y == 10){
        setSpeed(0,0);
      }
    }
  }
    
}
