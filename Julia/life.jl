# A Julia implementation of Conway's game of life

blinker = [0 0 0 0 0;
           0 0 0 0 0;
           0 1 1 1 0;
           0 0 0 0 0;
           0 0 0 0 0]


# A recursive function that runs the game of life. Args of grid, steps
function life(grid, steps)
    if steps <= 0
        return
    end
    newgrid = grid
    println(newgrid)
    life(newgrid, steps-1)
end
