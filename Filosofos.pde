PImage fork,philosophersImage,thinkingCloud;
int suma, i;

boolean semaforo = false;

fork[] forks = new fork[5];
cloud[] clouds = new cloud[5];
philosopher[] philosophers = new philosopher[5];
text[] texts= new text[5];

void setup(){
  size(650,650, P2D);
  surface.setResizable(false); 
  fork = loadImage("fork.jpg");
  philosophersImage = loadImage("philosohers.png");
  thinkingCloud = loadImage("thinkingCloud.png");
  initForks();
  initClouds();
  initThreads();
  initCoordinatesText();
}

String eatingText = "I am eating...";

void initCoordinatesText(){
  texts[0] = new text(width/2+70,height/6-100,eatingText);
  texts[1] = new text(width-60,height/3-20,eatingText);
  texts[2] = new text(width/2+180,height/2+150,eatingText);
  texts[3] = new text(width/4+90,height-140,eatingText);
  texts[4] = new text(width/4-80,height/4+30,eatingText);
}
void initForks(){
   forks[0] = new fork(width/2+70, height/4+50);
   forks[1] = new fork(width/4*3-50, height/2+50);
   forks[2] = new fork(width/2-20,height/2+90);
   forks[3] = new fork(width/4+20, height/2+30);
   forks[4] = new fork(width/4+30, height/4+30);
}
void initClouds(){
  clouds[0] = new cloud(width/2+70,height/6-100);
  clouds[1] = new cloud(width-60,height/3-20);
  clouds[2] = new cloud(width/2+180,height/2+150);
  clouds[3] = new cloud(width/4+90,height-140);
  clouds[4] = new cloud(width/4-80,height/4+30);
}
void initThreads(){
  for(int i = 0 ; i < 5 ; i ++){
    philosophers[i] = new philosopher(i);
    philosophers[i].start();
  }
}

void draw(){
  background(0);
  fill(0,198,0);
  circle(width/2,height/2,300);
  image(philosophersImage,0,0);
  drawForks();
  drawClouds();
}

int szFood=60;
void drawClouds(){
  for(int i = 0 ; i < 5 ; i ++){
    if(philosophers[i].isThinking())
      clouds[i].draw();
    else
      texts[i].draw();
  }
}
void drawForks(){
   for(int i = 0; i < 5; i++){
    if(forkInfo.usedForks[i])
       forks[i].drawWithTint();
    else
       forks[i].draw();
   }
}
