public class philosopher{
   
  int x, y, wPhilos = 150, hPhilos = 150; 
  
  public philosopher(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  public void philoDraw(){
    image(philo, x, y, wPhilos, hPhilos);
  }
}
