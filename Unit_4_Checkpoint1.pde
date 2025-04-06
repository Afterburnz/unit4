color beige = #ffe09e;
color black = #000000;
color white = #ffffff;
color red = #ff3845;
color lightBlue = #add2ff;
color brown = #bf8045;
void setup(){
  size(1000,1000);
}

void draw(){
  background(white);
  house(300,300);

}

void house(int x, int y){
  pushMatrix(); 
  translate(x,y);
  


  main();
  window(50,100);
  window(250,100);
  roof();
  door();
  
  popMatrix();
}


void window(int x, int y){
  fill(lightBlue);
  stroke(black);
  strokeWeight(3);
  square(x,y,100);


}


void main(){
  fill(red);
  stroke(black);
  strokeWeight(3);
  square(0,0,400);
}


void roof(){
  fill(beige);
  stroke(black);
  strokeWeight(3);
  triangle(0,0,400,0,200,-200);
}

void door(){
  fill(brown);
  stroke(black);
  strokeWeight(3);
  rect(150,250,100,150);
  fill(red);
  circle(225,325,15);
}
  
