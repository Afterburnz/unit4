color beige = #ffe09e;
color black = #000000;
color white = #ffffff;
color red = #ff3845;


void setup(){
  size(1000,1000);
}

void draw(){
  background(white);
  face(0,0);

}

void face(int x, int y){
  pushMatrix(); 
  translate(x,y);
  

  ear(350,350);
  ear(650,350);
  head();
  eye(400,450);
  eye(600,450);
  mouth();
  
  popMatrix();
}


void ear(int x, int y){
  fill(beige);
  stroke(black);
  strokeWeight(3);
  circle(x,y,100);


}


void head(){
  fill(beige);
  stroke(black);
  strokeWeight(3);
  circle(500,500,400);
}


  

void eye(int x, int y){
  fill(white);
  ellipse(x,y,100,50);
  fill(red);
  circle(x,y,50);
  fill(black);
  circle(x,y,20);
}

void mouth(){
  fill(black);
  stroke(black);
  strokeWeight(3);
  ellipse(500,600,200,50);

}
