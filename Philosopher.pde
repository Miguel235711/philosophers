import java.util.concurrent.Semaphore;

public final static class forkInfo{
  public static boolean[] usedForks = new boolean[5];
  public static Semaphore[] sem = new Semaphore[5];
}
public class philosopher extends Thread{
   int i;
   boolean isEating=false,isThinking=false;
   public philosopher(int i){
     this.i=i;
   }
   void checkSem(int i){
     if(forkInfo.sem[i]==null)
       forkInfo.sem[i] = new Semaphore(1); 
   }
   void initSemIfNecessary(){
     checkSem(i);
     checkSem(minusOne());
   }
   public void run(){
     println("thread: "+ i + "runnning");
     while(true){
       think();
       if(!forkInfo.usedForks[i]&&!forkInfo.usedForks[minusOne()]){
          try{
           initSemIfNecessary(); 
           forkInfo.sem[i].acquire();
           forkInfo.sem[minusOne()].acquire();
           forkInfo.usedForks[i]=forkInfo.usedForks[minusOne()]=true;
           eat();
           forkInfo.usedForks[i]=forkInfo.usedForks[minusOne()]=false;
           forkInfo.sem[i].release();
           forkInfo.sem[minusOne()].release();
         }catch(InterruptedException exc){
           println(exc);
         }
       }else{
         println("Philosopher " + i + " could not eat ):");
       }
     }
   }
   public boolean isEating(){
     return isEating;
   }
   public boolean isThinking(){
     return isThinking;
   }
   int minusOne(){
     if(i==0)
       return 4;
     return i-1;
   }
   int getRandomFrom1To10(){
     return (int)random(1,11);  
   }
   void eat(){
     int timeToEat = getRandomFrom1To10();
     isEating=true;
     println("Philosopher " + i + " is going to eat for " + timeToEat + " seconds");
     delay(timeToEat*1000);
     println("Philosopher "+ i + " stopped eating (:");
     isEating=false;
   }
   void think(){
     int timeToThink = getRandomFrom1To10();
     isThinking=true;
     println("Philosopher " + i  + " is going to think for " + timeToThink + " seconds");
     delay(timeToThink*1000);
     println("Philosopher " + i + " stopped thinking");
     isThinking=false;
   }
   //if 0 eat, uses fork 0 and 4, blocking semaphore 0 and 4
}
