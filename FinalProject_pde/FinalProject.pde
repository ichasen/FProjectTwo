//Pitch p = new Pitch();
//PitchMeter meter = new PitchMeter();
//Runner r = new Runner();


/*
public void setup(){
  //size(700,700);
  bases[0] = new Base(1, 410, 410); //Southeast
  bases[1] = new Base(2,410, 10); //Northeast
  bases[2] = new Base(3,10,10); //Northwest
  bases[3] = new Base(4,10,410); //Southwest
}
*/




public class Base{
  float x, y; 
  int baseNum;
  color c;
  
  public Base(int _baseNum, float _x, float _y){
    c = color(255);
    x = _x;
    y = _y;
    baseNum = _baseNum;
  }
  
  public void display(){
    fill(c);
    rect(x,y,40,40);
  }
  
}