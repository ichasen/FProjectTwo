
public class HitterMeter{
  
  char identity;
  
  //Length of each bound, depending on the type of hitter.
  float strikeLength;
  float singleLength;
  float doubleLength;
  float tripleLength;
  float homerunLength;
  
  //Bounds for the rectangle
  float[][] strikeCoors;
  float[][] singleCoors;
  float[][] doubleCoors;
  float[][] tripleCoors;
  float[][] homerunCoors;
  
  int speed;
  
  //Hardest hitter:
  final float[][] bStrikeCoors = {{0,175},{526,700}};
  final float[][] bSingleCoors = {{176,210},{491,525}};
  final float[][] bDoubleCoors = {{211,245},{456,490}};
  final float[][] bTripleCoors = {{246,280},{421,455}};
  final float[][] bHomerunCoors = {{281,520}};
  
  //Average hitter:
  final float[][] aStrikeCoors = {{0,231},{469,700}}; 
  final float[][] aSingleCoors = {{232,280},{420,486}};
  final float[][] aDoubleCoors = {{281,315},{385,419}};
  final float[][] aTripleCoors = {{316,340},{360,384}};
  final float[][] aHomerunCoors = {{341,359}};
  

  public HitterMeter(char hitterIdentity){
    identity = hitterIdentity;
    
    //Hardest hitter
    if (hitterIdentity == 'b'){
      strikeCoors = bStrikeCoors;
      singleCoors = bSingleCoors;
      doubleCoors = bDoubleCoors;
      tripleCoors = bTripleCoors;
      homerunCoors = bHomerunCoors;
      speed = 60;
      strikeLength = 175;
      singleLength = 35;
      doubleLength = 35;
      tripleLength = 35;
      homerunLength = 170;
    }
    //Average hitter
    if (hitterIdentity == 'a'){
      strikeCoors = bStrikeCoors;
      singleCoors = bSingleCoors;
      doubleCoors = bDoubleCoors;
      tripleCoors = bTripleCoors;
      homerunCoors = bHomerunCoors;
      speed = 40;
      strikeLength = 230;
      singleLength = 49;
      doubleLength = 35;
      tripleLength = 24;
      homerunLength = 25;
    }
  }
  
  public void display(){
    for (int i = 0; i < 2; i++){
    //Strike
    fill(255,0,0);
    rect(0,600,strikeLength,100);
    rect(700,600,-1 * strikeLength,100);
    
    //Single
    fill(0,255,0);
    rect(strikeLength,600,singleLength,100);
    rect(700-strikeLength,600, - 1 * singleLength, 100);
    
    //Double
    fill(128,0,128);
    rect(singleLength + strikeLength,600,doubleLength,100);
    rect(700 - strikeLength - singleLength,600, -1 * doubleLength, 100);
    
    //Triple
    fill(0,255,255);
    rect(strikeLength + singleLength + doubleLength,600,tripleLength,100);
    rect(700 - strikeLength - singleLength - doubleLength,600,-1 * tripleLength, 100);
    
    fill(212,175,55);
    rect(strikeLength + singleLength + doubleLength + tripleLength,600,homerunLength,100);
    
   
  }
}
  
  public int keyPressed(){
    if (key == ' '){
      speed = 0;
    }
    return 0;
  }
  
  public void setSpeed(int newSpeed){
    speed = newSpeed;
  }
    public char getIdentity(){
    return identity;
  }
  public int getSpeed(){
    return speed;
  }
}