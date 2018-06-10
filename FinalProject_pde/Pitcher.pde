
import java.util.*;

public class Pitcher{
  
  /* Each pitcher has their own type of pitch:
  
  1. Speed of pitch 
  2. What bounds their meter is.
  
  */ 
  
  //Speed
  private int speed; //How fast the pitch will be considered.
  //Starting and ending Y coordinates for the zones.  {WeakZone, regularZone, goldenZone, tooStrongZone}
  private int[] weakZone = {0,300};
  private int[] regularZone = {301,450};
  private int[] goldenZone = {451, 500};
  private int[] strongZone = {501,600};
  
  //PitcherType: What the game uses to identify pitcher.
  //Name: Public name of Pitcher
  private char pitcherType;
  public String name;
  
  //What color the pitcher's skin is:
  private color pitcherColor;

  public void doPitch(int y /*Arg is the PitchMeter's keyPressed() */){
    if (isWeak(y)){
   //   doPitchWeak();
    }
    if (isRegular(y)){
    //  doPitchNormal();
    }
    if (isGolden(y)){
    //  doPitchGolden();
    }
    if (isStrong(y)){
    //  doPitchStrong();
    }
  }
  
  boolean isWeak(int y){
    return (y >= weakZone[0] && y <= weakZone[1]);
  }
  boolean isRegular(int y){
     return (y >= regularZone[0] && y <= regularZone[1]);
  }
  boolean isGolden(int y){
     return (y >= goldenZone[0] && y <= goldenZone[1]);
  }
  boolean isStrong(int y){
    return (y >= strongZone[0] && y <= strongZone[1]); 
  }
  public void setName(String name){
    this.name = name;
  }

  public void setPitcherType(char x){
    pitcherType = x;
  }
  public color getColor(){
    return pitcherColor;
  }
  
  public void setColor(int r, int g, int b){
    pitcherColor = color(r,g,b);
  }
  
  public void setSpeed(int speed){
    this.speed = speed;
  }
  
  public char getPitcherType(){
    return pitcherType;
  }
  
  public void display(){
    Random randPaul = new Random();
    int pitcherCol = randPaul.nextInt(4);
    /*
    if (pitcherCol == 0){
      fill(255,218,185); //Peach
    }
    if (pitcherCol == 1){
      fill(98,16,16); //Dark Brown
    }
    if (pitcherCol == 2){
      fill(205,175,149); //Tan
    }
    if (pitcherCol >= 3){
      fill(0,255,0); //Alien
    }
    */
    rect(200,200,50,50);
    fill(255);
    rect(200,300,20,20); //PitcherBall
  }
}
  //Various pitches
  /*
  //Stops in its tracks because too weak
  public void doPitchWeak(){
    int speed = 5;
    int x = 200;
    int y = 300;
    fill(255);
    ellipse(x,y,20,20);
    while (y < 401){
      y += speed;
    }
  }
  public void doPitchNormal(){
    int xSpeed = 0;
    int ySpeed = 20;
    int x = 200;
    int y = 300;
    fill(255);
    ellipse(x,y,20,20);
    while (y < 500){
      y += speed; 
    }
    ySpeed *= -1;
    while (y > 0){
      xSpeed += 1;
      x += xSpeed;
      y += ySpeed;
    }    
  }
  public void doPitchGolden(){
     int xSpeed = 0;
    int ySpeed = 50;
    int x = 200;
    int y = 300;
    fill(255);
    ellipse(x,y,20,20);
    while (y < 500){
      y += speed; 
    }
    ySpeed *= -2;
    while (y > 0){
      xSpeed += 1;
      x += xSpeed;
      y += ySpeed;
    }    
  }
  public void doPitchStrong(){
    int xSpeed = 10;
    int ySpeed = 60;
    int x = 200;
    int y = 300;
    fill(255);
    ellipse(x,y,20,20);
    while (y < 500){
      y += speed; 
    }
    ySpeed *= -2;
    while (y > 0){
      xSpeed += 1;
      x += xSpeed;
      y += ySpeed;
    }    
  }
  
}
*/
    
