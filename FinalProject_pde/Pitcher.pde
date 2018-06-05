public abstract class Pitcher{
  
  /* Each pitcher has their own type of pitch:
  
  1. Speed of pitch 
  2. What bounds their meter is.
  
  */ 
  
  //Speed
  private int speed; //How fast the pitch will be considered.
  //Starting and ending Y coordinates for the zones.  {WeakZone, regularZone, goldenZone, tooStrongZone}
  private int[] weakZone;
  private int[] regularZone;
  private int[] goldenZone;
  private int[] tooStrongZone;
  
  //PitcherType: What the game uses to identify pitcher.
  //Name: Public name of Pitcher
  private char pitcherType;
  public String name;
  
  //What color the pitcher's skin is:
  private color pitcherColor;
  
  public abstract void doPitch();
  
  public abstract void setName(String name);

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
  
  public void setCoors(int[] wCoors, int[] rCoors, int[] gCoors, int[] sCoors){
    for (int i = 0; i < 2; i++){
      weakZone[i] = wCoors[i];
      regularZone[i] = rCoors[i];
      goldenZone[i] = gCoors[i];
      tooStrongZone[i] = sCoors[i];
    }
  }
  
  public int getPitcherType(){
    return pitcherType;
  }
}
    
  
  
