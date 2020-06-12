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

# A function to count the live neighbours of a cell
function countneighbours((x, y), grid)
    n = 0
    for i in -1:1
        for j in -1:1
            if i == 0 && j == 0 # Ignore central cell
            elseif x + i < 0 || y + j < 0 # goes out of bounds
            elseif x + i > eachrow(grid) || y + j > eachcol(grid)
            else n += 1
            end
        end
    end
    return n
end

# A recursive function that runs the game of life. Args of grid, steps
function life(grid, steps)
    if steps <= 0  # Break if it reaches the end
        return
    end
    for x in eachrow(grid)
        for y in eachcol(grid)
            liveneighbours = countneighbours((x, y), grid)  # Find live neighbours
        end
        println(x)
    end
    newgrid = grid
    for r in eachrow(newgrid)
        showline(r)
    end
    println("\n")
    life(newgrid, steps-1)
end
