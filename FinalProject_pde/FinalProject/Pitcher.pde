import java.util.*;

public class Pitcher{
  
  int x,y;
  //Speed
  private int speed; //How fast the ball goes
  
   //Starting and ending Y coordinates for the zones.  {WeakZone, regularZone, goldenZone, tooStrongZone}
  private int[] weakZone = {0,300};
  private int[] regularZone = {301,450};
  private int[] goldenZone = {451, 500};
  private int[] strongZone = {501,600};
  
  private char pitcherType;
  public String name;
  
  private color pitcherColor;
  public Pitcher(){
    x = 200;
    y = 200;
    setColor();
  }
  
  public void setColor(){
    //Possible colors: Light, dark, tan, green
    Random randPaul = new Random();
    int pitcherCol = randPaul.nextInt(4);
    if (pitcherCol == 0){
      pitcherColor = color(255,218,185); //Peach
    }
    if (pitcherCol == 1){
      pitcherColor = color(98,16,16); //Dark Brown
    }
    if (pitcherCol == 2){
      pitcherColor = color(205,175,149); //Tan
    }
    if (pitcherCol >= 3){
      pitcherColor = color(0,255,0); //Alien
    }
  }
  
  public void display(){
    fill(pitcherColor);
    ellipse(x,y,50,50);
  }
}
    
  
