color black = #000000;
color white = #ffffff;
color lightBlue = #add2ff;
color brown = #bf8045;
color lightGreen =#61ff5c;
color skyBlue =#0a1b4a;
color yellow =#ffff57;
color darkBrown = #6b3c05;

void setup(){
  size(1500,1000);
  
  int countBg = 0;
  float bgX,bgY,bgBlue;
  bgX = 0;
  bgY = 0;
  bgBlue = 11;
  
  while(countBg<10){
  noStroke();
  fill(24, 33, bgBlue);
  rect(bgX,bgY,1500,100);
  bgY = bgY +100;
  bgBlue = bgBlue + 15;
  countBg++;
  
  
  }
  
  float moonLayer;
  int moonCount = 0;
  moonLayer = 500;
  
  while(moonCount<20){
  float moonShade = random(155,255);
  fill(moonShade);
  circle(750,0,moonLayer);
  moonLayer=moonLayer-25;
  moonCount++;
  }
  
  int x,y;
  x=-100;
  y=0;
  
  float x2,y2;
  x2= random(50,150);
  y2= random(50,150);
  
  int count =0;
  
  float x3,y3;
  x3 = random(-200,-300);
  y3 = random(-75,-125);
  int playerCount = 0;
  
  
  fill(white);
  stroke(0);
  strokeWeight(1);

  while(count<6){
    star(x2,y2,random(0.7,1.3),0);
    x2=x2+600;
    count=count+1;
    if(x2>1500){
    x2=random(50,150);
    y2=y2+300;
    }
    
  }
  
  
  strokeWeight(2);
  while(x<1500){
    tower(x,y,1);
    x= x+1050;
    y= y-50;
  


}
  while(playerCount<2){
    player(x3,y3,random(0.8,1.2));
    x3=x3+random(250,350);
    y3=y3+random(-100,100);
    playerCount++;
    
    
  }
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
  tree(random(175,225),500);
  tree(random(375,425),500);
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
  
  void tree(float x,float y){
    
    noStroke();
    fill(darkBrown);
    rect(x,y,25,100);
    fill(30,random(100,200),0);
    rect(x,y,25,20);
    rect(x-25,y+20,75,20);
    rect(x-50,y+40,125,20);
  }
  

void star(float x, float y, float s, float c){  
  pushMatrix();
  translate(x,y);
  scale(s);
  
  while(c<8){
  starLength(0,0);
  rotate(PI/4);
  c++;
  
  
  
  }
  starCenter(0,0);
  
  popMatrix();
}

  void starLength(float x, float y){
    noStroke();
    fill(random(215,255));
    
    ellipse(x,y,random(100,125),random(25,50));
  }
  

  void starCenter(float x, float y){
    noStroke();
    fill(random(200,255));

    circle(x,y,random(50,75));
  }



void player(float x, float y, float s){
  pushMatrix(); 
  translate(x,y);
  scale(s);
  
  float armX = 742.5;
  float armY = 500;
  
  float legX = 772.5;
  float legY = 590;
    
  float r,g,b;
  r=random(0,255);
  g=random(0,255);
  b=random(0,255);
 
  torso(762.5,500,r,g,b);
  head(777.5,450);
 
    int c=0;
    int c2=0;
    while(c<2){
    r=random(0,255);
    g=random(0,255);
    b=random(0,255);
    fill(r,g,b);
    arms(armX,armY);
    armX=armX+90;
    c++;
    }
    
    
    
    while(c2<2){
    r=random(0,255);
    g=random(0,255);
    b=random(0,255);
    fill(r,g,b);
    legs(legX,legY);
    legX=legX+30;
    c2++;
    
    }
  popMatrix();
    


}  
  void torso(float x, float y, float r, float g, float b){
    stroke(0);
    strokeWeight(2);
    
    r=random(0,255);
    g=random(0,255);
    b=random(0,255);
    fill(r,g,b);
    
    rect(x,y,75,90);
    
    
  }
  
  void head(float x, float y){
    stroke(0);
    strokeWeight(2);
    
    fill(200);
    
    rect(x,y,50,50,5);
    
    int eye = 0;
    float eyeX = x;
    
    while(eye<2){
    circle(eyeX+10,y+10,2);
    eyeX=eyeX+30;
    eye++;
    }
    
    ellipse(x+25,y+40,30,10);
  }
  
  void arms(float x, float y){
    stroke(0);
    strokeWeight(2);
    
    rect(x,y,30,90);
        

    
    }
  
    
  void legs(float x, float y){
    stroke(0);
    strokeWeight(2);
    
    
    rect(x,y,30,80);
    

  }
