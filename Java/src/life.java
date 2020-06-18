// A Java implementation of Conway's game of life
public class life {
	public static void main(String[] args) {  // Args should be grid, 
		runLife(blinker, 3);
	}
	
	// Run the game
	public static void runLife(int[][] grid, int steps) {
		while(steps > 0) {
			int[][] newgrid = new int[grid.length][grid[0].length];
			for(int i = 0; i<grid.length; i++) {
				for(int j = 0; j<grid[1].length; j++) {
					if ((neighbours(i, j, grid) == 2 || neighbours(i, j, grid) == 3) && grid[i][j] == 1) {
						newgrid[i][j] = 1; // Cell survives 
					}
					else if (neighbours(i, j, grid) == 3 && grid[i][j] == 0) {
						newgrid[i][j] = 1; // Cell is born
					}
					else {
						newgrid[i][j] = 0; // Else the cell dies
					}
				}
			}
			grid = newgrid; // Set the current grid as newgrid for the next iteration
			display(grid);
			steps--;
		}
		
	}
	
	// Display a grid
	static void display(int[][] grid) {
		for(int i = 0; i<grid.length; i++) {
			for(int j = 0; j<grid[1].length; j++) {
				if(grid[i][j] == 1) {
					System.out.print("# ");
				}
				else { 
					System.out.print(". ");
				}
			}
			System.out.print('\n');
		}
		System.out.print('\n');
	}
	
	// Finds the number of neighbours of a cell
	static int neighbours(int x, int y, int[][] grid) {
		int neighbours = 0;
		for(int i = -1; i<=1; i++) {
			for(int j = -1; j<=1; j++) {
				if ((i == 0) && (j == 0)) {  // Ignore centre
					continue;
				}
				else if ((x + i < 0) || (y + j < 0)) { // goes out of bounds
	                continue;
				}
	            else if ((x + i >= grid.length) ||( y + j >= grid[0].length)) {
	            	continue;
	            }
	            else if ((grid[x+i][y+j] == 1)) {// valid position, now check if it is live
	                neighbours++;
	            }
			}
		}
		return neighbours;
	}

	// Example patterns 
	static int[][] blinker = new int[][] {
		{0, 0, 0, 0, 0},
		{0, 0, 1, 0, 0},
		{0, 0, 1, 0, 0},
		{0, 0, 1, 0, 0},
		{0, 0, 0, 0, 0}
	};
}
