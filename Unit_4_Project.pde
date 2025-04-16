color beige = #ffe09e;
color black = #000000;
color white = #ffffff;
color red = #ff3845;
color lightBlue = #add2ff;
color brown = #bf8045;
color lightGreen =#61ff5c;


void setup(){
  size(1500,1000);
  
  background(white);

  tower(0,0,1);

}


void tower(float x, float y, float s){
  pushMatrix(); 
  translate(x,y);
  scale(s);
  
  float r,g,b;
  r=random(0,255);
  g=random(0,255);
  b=random(0,255);
  
  frame(300,100,r,g,b,0);
  island(175,600);
  popMatrix();
}

void frame(float x, float y, float r, float g, float b, float c){

  stroke(black);
  strokeWeight(2);

  while(c<10){
    r=random(0,255);
    g=random(0,255);
    b=random(0,255);
    fill(r,g,b);
    square(x,y,50);
    y=y+50;
    c++;
    
 
    
  }
}

void island(float x, float y){
  
  noStroke();
  
  fill(lightGreen);
  rect(x,y,300,50);
  fill(brown);
  rect(x+50,y+50,200,75);
  rect(x+100,y+125,100,100);
  rect(x+125,y+225,50,125);
}
