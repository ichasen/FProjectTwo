public class Player{
  
  int numStrikes;
  int score;
  
  int OneOrTwo; 
  
  boolean isYourTurn;
  
  public Player(boolean turn){
    if (turn){
      OneOrTwo = 1;
    }
    else{
      OneOrTwo = 2;
    }
  }
  
  public void toggleTurn(){
    isYourTurn = !isYourTurn;
  }
}
