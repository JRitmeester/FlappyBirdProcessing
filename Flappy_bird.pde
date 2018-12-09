Bird bird;
Pipe[] pipes;

color background_blue = #7FFFFF;


void setup() {
  frameRate(30);
  size(600, 800);
  ellipseMode(CENTER);
  rectMode(CORNERS);
  
  bird = new Bird();
  pipes = new Pipe[30];
  for (int i = 0; i < pipes.length; i++) {
    pipes[i] = new Pipe(i+1);
  }
}

void draw() {
  background(#7FFFFF);
  
  bird.update();
  bird.render();
  
  for (Pipe pipe: pipes) {
    pipe.render();
    pipe.move();
  }
  
}

public void keyPressed() {
  if (key == ' ') {
    bird.up();
  }
}