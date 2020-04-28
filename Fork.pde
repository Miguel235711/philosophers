public class fork{
   
  int wFork=20,hFork=40, x, y;
  
  public fork(int x, int y){
    this.x = x;
    this.y = y;
  }
 
  public void forkDraw(){
    image(fork, x, y, wFork, hFork);
  }
  
}
