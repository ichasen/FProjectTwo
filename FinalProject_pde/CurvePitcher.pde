public class CurvePitcher extends Pitcher{
      
  int[] weakCoors = {0,350};
  int[] normalCoors = {351, 450};
  int[] goldenCoors = {451, 500};
  int[] strongCoors = {501, 700};
  
  public CurvePitcher(){
    setCoors(weakCoors, normalCoors, goldenCoors, strongCoors);
    setColor(139, 69, 19); //Brown
    setSpeed(35);
    setName("Conakry");
  }
  
  public void doPitch(){
  }
  
}
