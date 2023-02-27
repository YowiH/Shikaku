class Wall {
    PImage img;
    int imgNumber;
    int size, x, y;
    Wall(int size_, int imgNumber_) {
        this.size = size_;
        this.imgNumber = imgNumber_;
    }
    void sprite() {
        this.img = loadImage("sprites/walls/"+this.imgNumber+".png");
    }
    void display() {
        image(this.img, this.x, this.y, this.size, this.size);
    }
    void aim() {
        this.x = round(mouseX/grid.size)*grid.size;
        this.y = round(mouseY/grid.size)*grid.size;
    }
}
Wall wood = new Wall(50, 1);