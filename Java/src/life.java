// A Java implementation of Conway's game of life
public class life {
	public static void main(String[] args) {  // Args should be grid, 
		runLife(blinker, 3);
	}
	
	// Run the game
	public static void runLife(int[][] grid, int steps) {
		while(steps > 0) {
			int[][] newgrid = grid;
			for(int i = 0; i<grid.length; i++) {
				for(int j = 0; j<grid[1].length; j++) {
					if (neighbours(i, j, grid) == 0) {
						
					}
				}
			}
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
