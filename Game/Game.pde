int xScreen = 1000;
int yScreen = 750;
Node[][] grid;
int xSize = 10;
int ySize = 10;

void setup() {
  size(xScreen,yScreen);
  makeGrid(xSize,ySize);
}

void draw(){
  
}

void makeGrid(int x,int y) {
  grid = new Node[x][y];
  for (int i = 0; i < x; i++) {
    for(int j = 0; j <y; j++) {
      grid[i][j] = new Node(i,j);
    }
  }
  
  //instantiate neighbors
  for (int i = 0; i < x; i++) {
    for (int j = 0; j < y; j++) {
      //Set up low/high parameters
      //Ensures we don't add nodes outside of grid
      int loX = max(i-1,0);
      int hiX = min(i+1,x);
      int loY = max(j-1,0);
      int hiY = min(j+1,j);
      
      //Loop through 
      for (r = loX; r <= hiX; r++) {
        for (c = loY; c <= hiY; c++) {
          if (r != i && c != j) {
            grid[i][j].addNeighbor(grid[r][c]);
          }
        }
      }
      
    }
  }
  
}

void mousePressed() {
  
}
