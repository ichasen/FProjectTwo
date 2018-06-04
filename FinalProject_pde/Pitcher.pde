public abstract class Pitcher{
  
  //Each pitcher has their own type of pitch.
  private boolean doesRebound; //Determines whether the pitch meter goes back and forth or not.  (Curveball)
  private int speed; //How fast the pitch will be considered.
  
  
  //Each pitcher has its own color.
  private int redVal;
  private int greenVal;
  private int blueVal;
  
  //Starting and Ending Y Coordinates for the zones.  (Weak zone, regularZone, goldenZone, tooStrongZone) 
  private int[] weakZone; //Red 
  private int[] regularZone; //Green
  private int[] goldenZone; //Yellow
  private int[] tooStrongZone;
  
  private String pitcherType;
  private String name; //Name of pitcher
  
  //Uses their doesRebound and speed
  public abstract void doPitch();
  
  public void setName(String name){
    this.name = this.getClass().getSimpleName() + " " + name;
  }
  
  public void setColor(int r, int g, int b){
    redVal = r;
    greenVal = g;
    blueVal = b;
  }
  
  public color getColor(){
    return color(redVal,greenVal,blueVal);
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
  public String getPitcherType(){
    return pitcherType;
  }
  
  
  
  
  
}