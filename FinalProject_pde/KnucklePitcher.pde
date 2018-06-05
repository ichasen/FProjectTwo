public class KnucklePitcher extends Pitcher{
      
  int[] weakCoors = {0,400};
  int[] normalCoors = {401, 600};
  int[] goldenCoors = {601, 660};
  int[] strongCoors = {661, 700};

 
  public KnucklePitcher(){
    setCoors(weakCoors, normalCoors, goldenCoors, strongCoors);
    setColor(255, 218, 185); //Peach
    setSpeed(35);
    setPitcherType('k');
    setName("Knuckleballer Nairobi");
  }
  
  public void doPitch(){
  }
  
}
