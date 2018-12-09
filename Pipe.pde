class Pipe {
  
  float x;
  float xOffset = 0;
  float gapSize = 250;
  float gapHeight = height/2;
  
  int pipeW = 50;
  int dist = width * 2 / 3;
  
  float speed = 4.0;
  
  color pipeColor = #00ff00;
  
  public Pipe(int index) {
    this.x = dist * index + width/2;
    gapHeight = round(random(50, height-50));
  }
  
  public void move() {
    x -= speed;
  }
  
  public void render() {
    noStroke();
    fill(pipeColor);
    
    // Upper pipe.
    float sizeUpper = gapHeight;
    rect(x, 0, x + pipeW, gapHeight);
    rect(x, height, x + pipeW, gapHeight + gapSize);
    // Height = gapHeight + gapSize + rest
  }
  
}