class Run {
  float posX;
  float posY;
  float Xspeed;
  //float Yspeed;
  float s;

  Run(float posX, float posY) {
    this.posX = posX;
    this.posY = posY;
    //this.Xspeed = random(-5, 5);
    //this.Yspeed = random(-5, 5);
    //this.s = random(50, 100);
    this.Xspeed = random(1, 20);
    this.s = 150;
  }

  void display() {
    //ellipse(this.posX, this.posY, s, s);
    imageMode(CENTER);
    image(images[currentFrame], this.posX, this.posY, 150, 150);
  }

  void update() {
    this.posX += this.Xspeed;
    //this.posY += this.Yspeed;
    //s = s -1;

    if (this.posX > width+this.s/2 || this.posX < -this.s/2) {
      //this.Xspeed *= -1;
      this.posX = 0 + this.Xspeed;
      //this.posX += this.Xspeed;
    }
    //if (this.posY > height-this.s/2 || this.posY < this.s/2) {
    //  this.Yspeed *= -1;
    //}
    
    //if (s > 100 || s < - 100){
    //  s = -s;
    //}
    
    //noStroke();
    //fill((int(map(posX, 0, 255,0,width))),(int(map(posY, 0, 255,0,height))), 0);
  }
}
