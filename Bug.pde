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
    rectMode(CENTER);
    rect(xPos, yPos, 15, 15);
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
      case UP: this.yPos += 5;
      break;
      case RIGHT: this.xPos += 5;
      break;
      case DOWN: this.yPos -= 5;
      break;
      case LEFT: this.xPos -= 5;
    }
  }
  
  String getPos() {
    return String.format("[%d , %d]", this.xPos, this.yPos);
  }
  
}
