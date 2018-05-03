

int pantalla=0;
int turno=0;
int jugador1;
int jugador2;
float j1v1;
float j1ata;
float j2vi;
float j2ata;
PImage krisK, kimK, kendallK, kylieK, keisiK, fondo1, fondo2, fondo3;
//SoundFile file;


kylie kylie1;
kim kim1;
kendall kendall1;
kris kris1;
keisi keisi1;

void setup(){
  size(800,600);
  
  krisK = loadImage ("krisK.PNG");
  kimK = loadImage ("kimK.PNG");
  kendallK = loadImage ("kendallK.PNG");
  kylieK = loadImage ("kylieK.PNG");
  keisiK = loadImage ("keisiK.PNG");
  fondo1 = loadImage ("fondo1.jpg"); 
  fondo2 = loadImage ("fondo2.jpg");
  fondo3 = loadImage ("fondo3.jpg"); 
  //fondo3 = loadImage ("fondo3.jpg"); 
  //fondo4 = loadImage ("fondo4.jpg"); 
  
  
  
  kylie1 = new kylie("Kylie",1,100,random(1,25));
  kim1 = new kim("kim",2,100,random(1,25));
  kendall1 = new kendall("kendall",3,100,random(1,25));
  kris1 = new kris("kris",4,100,random(1,25));
  keisi1 = new keisi("keisi",5,100,random(1,25));
  
  /*file = new SoundFile (this,"audio.mp3");
  file.play();*/
}

void draw(){
  /*kylie1.display();
  kim1.display();
  kendall1.display();
  kris1.display();
  keisi1.display();*/

    
    if (pantalla==0)
    {
      pantallaUno();
      
      if (keyPressed && (key=='k'||key=='K'))
      {
        pantalla=1;
      }
    }
    
    if (pantalla==1)
    {
      pantallaDos();
      mouseClicked();
      keyPressed();
     if (jugador1!=0 && jugador2 !=0){
     pantalla=2; 
    }
    }
    
    if (pantalla==2){
     pantallaTres(); 
    }
    if (j1v1<=0||j2vi<=0){
   if (key=='g'||key=='G'){
    pantalla=3; 
   }
  }
  if (pantalla==3){
   pantallaCuatro(); 
   if (key=='0'){
   pantallaUno();
   pantalla=0;
   jugador1=0;
   jugador2=0;
   turno=0;
   
   
   }
  }  
  
    
}

void pantallaUno()
{
  
  pushMatrix();
  imageMode (CENTER);
  translate (-400,-300);
  image (fondo1,width,height);
  popMatrix();
 
}

void pantallaDos(){

    //background(59,55,104);
    pushMatrix();
    translate(0,0);
    scale(2,2);
    image (fondo2,0,0,width,height);
    popMatrix();
    
    pushMatrix();
    fill(255);
    textSize(15);
    text("KYLIE q", 10, 95);
    text("KIM w", 280, 95);
    text("KENDALL r", 530, 95);
    text("KRIS t",130, 355);
    text("LA KEISI y", 400, 355);
    
    noStroke();
    fill (#CE25C6);
    rect (7,25,780,30);
    textSize(17); 
    fill(255);
    text("SELECCIONA AL JUGADOR 1 CON TU MOUSE Y AL JUGADOR 2 CON .q w r t y. EN TU TECLADO",12,45); 
    popMatrix();
    
    imageMode (CENTER);
    pushMatrix();
    translate(150,200);
    scale(0.08,0.08);
    kylie1.display();
    popMatrix();
    
    pushMatrix();
    translate(380, 180);
    scale(0.08,0.08);
    kim1.display();
    popMatrix();
    
    pushMatrix();
    translate(670, 180);
    scale(0.08,0.08);
    kendall1.display();
    popMatrix();

    pushMatrix();
    translate(250, 430);
    scale(0.08,0.08);
    kris1.display();
    popMatrix();

    pushMatrix();
    translate(570,430);
    scale(0.08,0.08);
    keisi1.display();
    popMatrix();
    
       }       
   
void pantallaTres(){
imageMode(CENTER);
pushMatrix();
translate (-400,-300);
image (fondo3,width,height);
popMatrix();
//background(229,56,81);
noStroke();

fill(9,24,63);
ellipse(400,500,900,600);
fill(17,43,89);
ellipse(0,600,1000,400);
fill(21,53,124);
ellipse(900,700,1000,600);
fill(63,73,79);
rectMode(CENTER);
rect(100,800,1500,600);
fill(255);
textSize(55);
text("HOLLYWOOD", 250, 300); 
textSize(25);

text("JUGADOR 1   ATAQUE = A         JUGADOR 2   ATAQUE = Z",50, 50);
//BARRA DE VIDA JUGADOR 1
    pushMatrix();
    fill(255);
    rect(210,80,(j1v1)*3,35);

    popMatrix();
    
 //BARRA DE VIDA JUGADOR 2
    pushMatrix();
    fill(255);
    rect(600,80,(j2vi)*3,35);
    popMatrix();



    if (jugador1==1)
    {
      pushMatrix();
      translate(100, 370);
      scale(0.1,0.1);
      kylie1.display();
      popMatrix();
    } else if (jugador1==2)
    {
      pushMatrix();
      translate(100, 350);
      scale(0.1,0.1);
      kim1.display();
      popMatrix();
    } else if (jugador1==3)
    {
      pushMatrix();
      translate(100, 350);
      scale(0.1,0.1);
      kendall1.display();
      popMatrix();
    } else if (jugador1==4)
    {
      pushMatrix();
      translate(100, 350);
      scale(0.1,0.1);
      kris1.display();
      popMatrix();
    } else if (jugador1==5)
    {
      pushMatrix();
      translate(100, 350);
      scale(0.1,0.1);
      keisi1.display();
      popMatrix();
    } 

   
    
    if (jugador2==1)
    {
      pushMatrix();
      translate(670,370);
      scale(0.1,0.1);
      kylie1.display();
      popMatrix();
    } else if (jugador2==2)
    {
      pushMatrix();
      translate(670,350);
      scale(0.1,0.1);
      kim1.display();
      popMatrix();
    } else if (jugador2==3)
    {
      pushMatrix();
      translate(670,350);
      scale(0.1,0.1);
      kendall1.display();
      popMatrix();
    } else if (jugador2==4)
    {
      pushMatrix();
      translate(670,350);
      scale(0.1,0.1);
      kris1.display();
      popMatrix();
      
    } else if (jugador2==5)
    {
      pushMatrix();
      translate(670,350);
      scale(0.1,0.1);
      keisi1.display();
      popMatrix();
    } 

    
    if (j1v1<=0)
    {
      
      fill(255);
      textSize(50);
      text("HAY UN GANADOR", 170,170 );
      textSize(30);
      text("PRESIONA LA TECLA G", 250, 570);
    } else 
    if (j2vi<=0)
    {
      fill(255);
      textSize(50);
      text("HAY UN GANADOR", 170,170 );
      textSize(30);
      text("PRESIONA LA TECLA G", 250, 570);
    }
    
    
}
    
void pantallaCuatro(){

pushMatrix();

fill (#5166B2);
rect (0,0,8000,8000);

    if (j1v1<=0)
    {
    noStroke();
    fill(178,52,101);
    ellipse((width/2), (height/2),630,350);
    fill(255);
    rectMode(CENTER);
    rect((width/2), (280),600,5);
      
      fill(255);
      textSize(70);
      text("GANADOR",230, 250);
      textSize(90);
      fill(255);
      text("JUGADOR 1",170,380);
      
      fill(255);
      textSize(25);
      text("PRESIONA CERO PARA REGRESAR", 200,550);
     
    }     
  
 
    if (j2vi<=0)
    {
  noStroke();
    fill(178,52,101);
    ellipse((width/2), (height/2),630,350);
    fill(255);
    rectMode(CENTER);
    rect((width/2), (280),600,5);
      
      fill(255);
      textSize(70);
      text("GANADOR",230, 250);
      textSize(90);
      fill(255);
      text("JUGADOR 2",170,380);
      
      fill(255);
      textSize(25);
      text("PRESIONA CERO PARA REGRESAR", 200,550);
     }
    popMatrix();


}



void mouseClicked(){
 
  //p1
  if(mouseX>0&&mouseX<266&&mouseY>0&&mouseY<300){
       jugador1=1;
       j1v1=100;
       j1ata=random(1,25);
}
//p2
if (mouseX>2661&&mouseX<532&&mouseY>0&&mouseY<300){
      jugador1=2;
     j1v1=100;
       j1ata=random(1,25);
      }   
//p3      
if (mouseX>532&&mouseX<800&&mouseY>0&&mouseY<300){
        jugador1=3;
        j1v1=100;
       j1ata=random(1,25);
      }
//p4     
if (mouseX>0&&mouseX<400&&mouseY>300&&mouseY<600){
        jugador1=4;
       j1v1=100;
       j1ata=random(1,25);
      }  
//p5    
if (mouseX>400&&mouseX<800&&mouseY>300&&mouseY<600){
       jugador1=5;
       j1v1=100;
       j1ata=random(1,25);
      }  
}


void keyPressed(){
  switch (key){
  case 'q':
  jugador2=1;
  j2vi=100;
  j2ata=random(1,25);
  break;
  
  case 'w':
  jugador2=2;
  j2vi=100;
  j2ata=random(1,25);
  break;
  
  case 'r':
  jugador2=3;
  j2vi=100;
  j2ata=random(1,25);
  break;
  
  case 't':
  jugador2=4;
  j2vi=100;
  j2ata=random(1,25);
  break;
  
  case 'y':
  jugador2=5;
  j2vi=100;
  j2ata=random(1,25);
  break;
  }
  
  if (turno==0&&pantalla==2){
    if (key=='a'||key=='A')
    {
     j2vi=j2vi-j1ata;
     println(j1v1);
     turno=1;
    }
  }
  if (turno==1&&pantalla==2){
   if (key=='z'||key=='Z'){
    j1v1=j1v1-j2ata;
    println(j2vi);
    turno=0;
   }
  }
  
  }
  
  
 