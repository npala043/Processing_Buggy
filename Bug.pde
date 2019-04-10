class Bug {
  
  int xPos;
  int yPos;
  Direction direction;
  
  Bug(int xPos, int yPos, Direction direction) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.direction = direction;
  }
  
  void display() {
    ellipseMode(CENTER);
    ellipse(xPos, yPos, 20, 20);
  }
  
  void turnRight() {
    switch(direction) {
      case UP: this.direction = Direction.RIGHT;
      break;
      case RIGHT: this.direction = Direction.DOWN;
      break;
      case DOWN: this.direction = Direction.LEFT;
      break;
      case LEFT: this.direction = Direction.UP;
    }
  }
  
  void turnLeft() {
    switch(direction) {
      case UP: this.direction = Direction.LEFT;
      break;
      case LEFT: this.direction = Direction.DOWN;
      break;
      case DOWN: this.direction = Direction.RIGHT;
      break;
      case RIGHT: this.direction = Direction.UP;
    }
  }
  
  void move() {
    switch(direction) {
      case UP: changeY(-10);
      break;
      case RIGHT: changeX(10);
      break;
      case DOWN: changeY(10);
      break;
      case LEFT: changeX(-10);
    }
  }
  
  void changeX(int distance) {
    this.xPos += distance;
    if (xPos > width - 20) {
      this.direction = Direction.LEFT;
    }
    if (xPos < 0 + 20) {
      this.direction = Direction.RIGHT;
    }
  }
  
  void changeY(int distance) {
    this.yPos += distance;
    if (yPos > height - 20) {
      this.direction = Direction.UP;
    }
    if (yPos < 0 + 20) {
      this.direction = Direction.DOWN;
    }
  }
  
  String getPos() {
    return String.format("[%d , %d]", this.xPos, this.yPos);
  }
  
}
