class Particula{
  float x,y,dx,dy;
  int relleno;
  int tamano;
  
  Particula(float x_,float y_, float dx_, float dy_, int relleno_,int tamano_){
    x = x_;
    y = y_;
    dx = dx_;
    dy = dy_;
    relleno = relleno_;
    tamano = tamano_;
  }

void movimiento(){
  x+= dx;
  y+= dy;
}

void display(){
   noStroke();
   fill(relleno);
   ellipseMode(CENTER);
   ellipse(x,y,tamano, tamano);
 }
void rebota(){
   if(x > width){
     x = width;
     dx=dx*-1;
   }
   if(y > height){
     y=height;
     dy=dy*-1;
   }
   if(x<0){
     x = 0;
     dx = dx*-1;
   }
   if(y<0){
     y = 0;
     dy=dy*-1;
   }
  }
}

Particula una;

void setup(){
  size(400,400);
  una = new Particula(200.0,200.0,random(-3,3), random(-3,3),0,20);
}

void draw(){
  background(255);
  una.display();
  una.movimiento();
  una.rebota();
}