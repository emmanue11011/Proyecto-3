interface Personajes
{
  void display();  
}


//
class kris implements Personajes
{
String nombre;
int personaje;
int vida;
float ataque;

 kris (String nombre_,int personaje_,int vida_, float ataque_){
  
 nombre = nombre_;
 personaje = personaje_;
 vida = vida_;
 ataque = ataque_;
}

void display()
{
  pushMatrix();
  image (krisK,width/2,height/2);
  popMatrix();
}
}
//
class kim implements Personajes
{
String nombre;
int personaje;
int vida;
float ataque;

 kim (String nombre_,int personaje_,int vida_, float ataque_){
  
 nombre = nombre_;
 personaje = personaje_;
 vida = vida_;
 ataque = ataque_;
}

void display()
{
  pushMatrix();
  image (kimK,width/2,height/2);
  popMatrix();
}
}
//
class kendall implements Personajes
{
String nombre;
int personaje;
int vida;
float ataque;

 kendall (String nombre_,int personaje_,int vida_, float ataque_){
  
 nombre = nombre_;
 personaje = personaje_;
 vida = vida_;
 ataque = ataque_;
}

void display()
{
  pushMatrix();
  image (kendallK,width/2,height/2);
  popMatrix();
}
}

class kylie implements Personajes
{
String nombre;
int personaje;
int vida;
float ataque;

 kylie (String nombre_,int personaje_,int vida_, float ataque_){
  
 nombre = nombre_;
 personaje = personaje_;
 vida = vida_;
 ataque = ataque_;
}

void display()
{
  pushMatrix();
  image (kylieK,30,30);
  popMatrix();
}
}

class keisi implements Personajes
{
String nombre;
int personaje;
int vida;
float ataque;

 keisi (String nombre_,int personaje_,int vida_, float ataque_){
  
 nombre = nombre_;
 personaje = personaje_;
 vida = vida_;
 ataque = ataque_;
}

void display()
{
  pushMatrix();
  image (keisiK,width/2,height/2);
  popMatrix();
}
}




 