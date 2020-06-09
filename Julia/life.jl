# A Julia implementation of Conway's game of life

blinker = [0 0 0 0 0;
           0 0 0 0 0;
           0 1 1 1 0;
           0 0 0 0 0;
           0 0 0 0 0]

function showline(x)
    for i in x
        if i == 1
            print("# ")
        else
            print(". ")
        end
    end
    print("\n")
end

# A recursive function that runs the game of life. Args of grid, steps
function life(grid, steps)
    if steps <= 0  # Break if it reaches the end
        return
    end
    for x in grid
        liveneighbours = 0  # Find live neighbours
        for i in -1:1
            for j in -1:1
                position[x]
            end
        end
    end
    newgrid = grid
    for r in eachrow(newgrid)
        showline(r)
    end
    println("\n")
    life(newgrid, steps-1)
end
