PImage philo, food, fork;
int suma, i;

boolean semaforo = false;

fork[] forks;
philosopher[] philosophers;

void setup(){
  size(600,650, P2D);
  surface.setResizable(false); 
  philo = loadImage("filosofo.png");
  food = loadImage("comida.png");
  fork = loadImage("fork.jpg");
  
  forks = new fork[5];
  philosophers = new philosopher[5];
}

void draw(){
  background(0);
  
  fill(0,198,0);
  circle(width/2,height/2,300);
    
  drawPhilosophers();
  drawFood();
  drawText();                                                                        //Los filosofos estan acomodados desde arriba en el sentido horario
    
  for(int i = 0; i < 5; i++){
    forks[i].forkDraw();
    philosophers[i].philoDraw();
  }
    
  //thread("generateRandom");
}

void drawSingleText(String content,int x,int y){
  textSize(32);
  text(content, x, y); 
}

void drawText(){
  drawSingleText("4",40,330);
  drawSingleText("0",width/2-15,height-610);
  drawSingleText("1",540,330);
  drawSingleText("2",380,550);
}

void drawPhilosophers(){
  philosophers[0] = new philosopher(width/2-80, height/2-300);     //Filosofo de hasta arriba 1
  philosophers[1] = new philosopher(width/2+120, height/2-100);    //Filosofo 2
  philosophers[2] = new philosopher(width/2+20, height/2+100);     //Filosofo 3
  philosophers[3] = new philosopher(width/2-160, height/2+100);    //Filosofo 4
  philosophers[4] = new philosopher(width/2-270, height/2-100);    //Filosofo 5
}

int szFood=60;

void drawFood(){
   forks[0] = new fork(288, 380);
   image(food, width/2-35 , height/2-140, szFood,szFood);
   tint(228, 56, 56);
   forks[1] = new fork(395, 345);
   noTint();
   image(food, width/2+80, height/2-35,szFood, szFood);
   forks[2] = new fork(180, 340);
   image(food, width/2+20 , height/2+60 , szFood, szFood);
   tint(228, 56, 56);
   forks[3] = new fork(380, 200);
   noTint();
   image(food, width/2-85, height/2+60 , szFood, szFood);
   forks[4] = new fork(200, 200);
   image(food, width/2-140, height/2-35, szFood, szFood);
  
}

/*void generateRandom(){
  int rand;  
  rand = (int)random(0,5);

  eat(rand);

}

void eat(int i){
  int timeToEat = (int) random(1,10);
  
  if(semaforo == false){
  semaforo = true;
  println("Filosofo"+i+" va a comer durante"+timeToEat+" segundos");
  delay(timeToEat);
  println("Filosofo"+i+" dejo de comer");
  semaforo = false;
  }
  think(i);
}

void think(int i){
  int timeToThink = (int) random(1,10);
  
  semaforo=true;
  println("Filosofo"+i+" va a pensar durante "+timeToThink+" segundos");
  draw(i);
  delay(timeToThink);
  println("Filosofo"+i+" dejo de pensar");
  eat(i);
}

void func(){
  int rand = (int) random(1,6);
  while(true){
    think(rand);
  }
}*/
