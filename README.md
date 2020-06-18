# Game-of-life
Implementations of Conway's game of life 

Conway's game of life was created by John Horton Conway in 1970. It is a zero player game, so does not require any input after it starts. The game consists of an infinite grid of cells, each of which can be 'live' or 'dead'. Cells are 'born' or 'die' according to the following rules :

* A live cell with less than 2 live neighbours dies by underpopulation
* A live cell with 2 or 3 live neighbours lives to the next generation
* A live cell with more than 3 live neighbours dies by overpopulation
* A dead cell with 3 live neighbours becomes live by reproduction

There are many well known patterns in this game, I will implement them in each language I implement the game in. 
So far, I have implemented the game of life in:
* Julia
* Java
