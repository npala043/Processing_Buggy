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
      case UP: this.direction = Direction.UR;
      break;
      case UR: this.direction = Direction.RIGHT;
      break;
      case RIGHT: this.direction = Direction.DR;
      break;
      case DR: this.direction = Direction.DOWN;
      break;
      case DOWN: this.direction = Direction.DL;
      break;
      case DL: this.direction = Direction.LEFT;
      break;
      case LEFT: this.direction = Direction.UL;
      break;
      case UL: this.direction = Direction.UP;
    }
  }
  
  void turnLeft() {
    switch(direction) {
      case UP: this.direction = Direction.UL;
      break;
      case UL: this.direction = Direction.LEFT;
      break;
      case LEFT: this.direction = Direction.DL;
      break;
      case DL: this.direction = Direction.DOWN;
      break;
      case DOWN: this.direction = Direction.DR;
      break;
      case DR: this.direction = Direction.RIGHT;
      break;
      case RIGHT: this.direction = Direction.UR;
      break;
      case UR: this.direction = Direction.UP;
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
      break;
      case UL: changeXY(-10, 10);
      break;
      case UR: changeXY(10, 10);
      break;
      case DL: changeXY(-10, -10);
      break;
      case DR: changeXY(10, -10);
    }
  }
  
  void changeX(int distance) {
    this.xPos += distance;
    checkOOB();
  }
  
  void changeY(int distance) {
    this.yPos += distance;
    checkOOB();
  }
  
  void changeXY(int x, int y) {
    this.xPos += x;
    this.yPos += y;
    
    if (xPos > width - 20 && yPos > height - 20) {
      this.direction = Direction.UL;
    }
    if (xPos < 0 + 20 && yPos < 0 + 20) {
      this.direction = Direction.DR;
    }
    checkOOB();
  }
  
  void checkOOB() {
    if (xPos > width - 20) {
      this.direction = Direction.LEFT;
    }
    if (xPos < 0 + 20) {
      this.direction = Direction.RIGHT;
    }
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
