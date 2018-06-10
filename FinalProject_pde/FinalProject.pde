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
  final float[][] bHomerunCoors = {{281,420}};
  
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
      homerunLength = 85;
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
  public color calcBatterColor(){
    //Possible colors: Light, dark, tan, green
    Random randPaul = new Random();
    int pitcherCol = randPaul.nextInt(4);
    color pitcherColor = color(234,100,89); //Zoidberg colors; Hopefully we don't know of its existence 
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
    return pitcherColor;
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
    
    //The batter
    fill(calcBatterColor());
    ellipse(200,450,50,50);
    
  }
  
  public boolean isKeyPressed(){
    return (keyPressed() > -1);
  }
  
  public int keyPressed(){
    if (key == ' '){
      speed = 0;
    }
    return -1;
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
  
  public int calcPitchCors(int x){
    for (int i = 0; i < 5; i++){
      if ( (isWithin(strikeCoors[0],x) ) || (isWithin(strikeCoors[1],x) ) ){
        return 0; //Strike
      }
      if ( (isWithin(singleCoors[0],x) ) || (isWithin(singleCoors[1],x) ) ){
        return 1; //Single
      }
      if ( (isWithin(doubleCoors[0],x) ) || (isWithin(doubleCoors[1],x) ) ){
        return 2; //Double
      }
      if ( (isWithin(tripleCoors[0],x) ) || (isWithin(tripleCoors[1],x) ) ){
        return 3; //Triple
      }
    }
    return 4; //Homerun!
  }
  
  public String resultMessage(int x){
    if (x == 1){
      return "Single!";
    }
    if (x == 2){
      return "Double!";
    }
    if (x == 3){
      return "Triple!";
    }
    if (x == 4){
      return "Home Run!";
    }
    return "Strike!";
  }
  
  public boolean isWithin(float[] data, int x){
    return (data[0] <= x && data[1] >= x);
  }
}
