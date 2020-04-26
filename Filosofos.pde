PImage philosopher, food, fork;
int suma, i;
int tenedores[];
boolean semaforo = false;

void setup(){
  size(600,650, P3D);
  surface.setResizable(false); 
  philosopher = loadImage("filosofo.png");
  food = loadImage("comida.png");
  fork = loadImage("fork.jpg");
}

void draw(){
  background(0);
  
  fill(0,198,0);
  circle(width/2,height/2,300);
  drawPhilosophers();
  drawFood();
  drawText();                                                                        //Los filosofos estan acomodados desde arriba en el sentido horario
    
  
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
  image(philosopher, width/2-80 , height/2-300, 150, 150);              //Filosofo de hasta arriba 1 
  image(philosopher, width/2+120, height/2-100, 150, 150);              //Filosofo 2
  image(philosopher, width/2+20 , height/2+100 , 150, 150);              //Filosofo 3
  image(philosopher, width/2-160, height/2+100 , 150, 150);              //Filosofo 4
  image(philosopher, width/2-270, height/2-100, 150, 150);              //Filosofo 5
}

int szFood=60;
int wFork=20,hFork=40;

void drawFood(){
  image(fork,288, 380,wFork,hFork);
  image(food, width/2-35 , height/2-140, szFood,szFood);
  tint(228, 56, 56);
  image(fork,395, 345,wFork,hFork);
  noTint();
  image(food, width/2+80, height/2-35,szFood, szFood);
  image(fork,180, 340,wFork,hFork);
  image(food, width/2+20 , height/2+60 , szFood, szFood);
  tint(228, 56, 56);
  image(fork,380, 200,wFork,hFork);
  noTint();
  image(food, width/2-85, height/2+60 , szFood, szFood);
  image(fork,200, 200,wFork,hFork);
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
