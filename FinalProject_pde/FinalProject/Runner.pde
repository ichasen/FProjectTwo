/*
public class Runner{
  int x,y,r,xspeed,yspeed;
  int result = pMeter.keyPressed();
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
        runToFirst();
      }
      if ((result >= 282 && result < 318) || (result >= 398 && result < 434)){
        outcome = "Double";
        runToSecond();
      }
      if ((result >= 318 && result < 347) || (result >= 369 && result < 398)){
        outcome = "Triple";
        runToThird();
      }
      if (result >= 347 && result < 369){
        outcome = "Home Run";
      }
      outcome = "Out";
  }
  void runToFirst(){
    xspeed = 0;
    yspeed = 20;
    if (x == 10 && y == 410){
      yspeed = 0;
      xspeed = 0;
    }
  }
  void runToSecond(){
    xspeed = 0;
    yspeed = 20;
    if (x == 10 && y == 410){
      yspeed = 0;
      xspeed = 20;
    }
    if (x == 410 && y == 410){
      yspeed = 0;
      xspeed = 0;
    }
  }
  void runToThird(){
    xspeed = 0;
    yspeed = 20;
    if (x == 10 && y == 410){
      yspeed = 0;
      xspeed = 20;
    }
    if (x == 410 && y == 410){
      yspeed = -20;
      xspeed = 0;
    }
    if (x == 410 && y == 10){
      yspeed = 0;
      xspeed = 0;
    }
  }
}
*/
