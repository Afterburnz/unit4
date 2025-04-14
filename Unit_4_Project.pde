color beige = #ffe09e;
color black = #000000;
color white = #ffffff;
color red = #ff3845;
color lightBlue = #add2ff;
color brown = #bf8045;



void setup(){
  size(1500,1000);
  
  background(white);
  
  int x,y;
  x=50;
  y=350;
  while(y<700){
    house(x,y,random(0.25,0.6));
    x = x+500;
    if(x>=1500){
      x=50;
      y=y+300;
  }
  }

}

void draw(){

}

void house(float x, float y, float s){
  pushMatrix(); 
  translate(x,y);
  scale(s);
  
  float r,g,b;
  r=random(0,255);
  g=random(0,255);
  b=random(0,255);
  
  
  
  main();
  window(50,100,r,g,b);
  window(250,100,r,g,b);
  roof();
  door();
  
  popMatrix();
}


void window(float x, float y, float r, float g, float b){
  fill(r,g,b);
  stroke(black);
  strokeWeight(3);
  square(x,y,100);


}


void main(){
  fill(random(0,255),random(0,255),random(0,255));
  stroke(random(0,255),random(0,255),random(0,255));
  strokeWeight(3);
  square(0,0,400);
}


void roof(){
  fill(random(0,255),random(0,255),random(0,255));
  stroke(random(0,255),random(0,255),random(0,255));
  strokeWeight(3);
  triangle(0,0,400,0,200,-200);
}

void door(){
  fill(random(0,255),random(0,255),random(0,255));
  stroke(random(0,255),random(0,255),random(0,255));
  strokeWeight(3);
  rect(150,250,100,150);
  fill(red);
  circle(225,325,15);
}
