public abstract class Pitcher{
  
  //Each pitcher has its own color.
  private int redVal;
  private int greenVal;
  private int blueVal;
  
  //Starting and Ending Y Coordinates for the zones.  (Weak zone, regularZone, goldenZone, tooStrongZone) 
  private int[] weakZone; //Red 
  private int[] regularZone; //Green
  private int[] goldenZone; //Yellow
  private int[] tooStrongZone;
  
  public void setColor(int r, int g, int b){
    redVal = r;
    greenVal = g;
    blueVal = b;
  }
  
  public Pitcher(int[] weakCoors, int[] regularCoors, int[] goldenCoors, int[] strongCoors){
    for (int i = 0; i < 2; i++){
      weakZone[i] = weakCoors[i];
      regularZone[i] = regularCoors[i];
      goldenZone[i] = goldenCoors[i];
      tooStrongZone[i] = strongCoors[i];
    }
  }
  
}