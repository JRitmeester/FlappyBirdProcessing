class Bird {

  float x, y;
  int size = 40;

  float velocity = 0;
  float Vmax = 15;
  float gravity = 0.5;
  float lift = 0.40;


  color birdColor = #FA9817;

  public Bird() {
    x = width/4;
    y = height/2;
  }

  public void render() {
    noStroke();
    fill(birdColor);
    ellipse(x, y, size, size);
  }

  public void update() {
    velocity += gravity;
    y += velocity;

    if (y + size > height) {
      y = height - size/2;
      velocity = 0;
    }

    if (velocity > Vmax) {
      velocity = Vmax;
    } else if (velocity < -Vmax) {
      velocity = -Vmax;
    }
  }

  public void up() {
    println("UP");
    velocity -= (lift * frameRate);
  }
}