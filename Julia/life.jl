# A Julia implementation of Conway's game of life

# A function to display each line
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
                continue
            elseif x + i < 1 || y + j < 1 # goes out of bounds
                continue
            elseif x + i > size(grid, 1) || y + j > size(grid, 2)
                continue
            elseif grid[x+i, y+j] == 1 # valid position, now check if it is live
                n += 1
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

    newgrid = Array{Int}(undef, size(grid)) # Create new grid to avoid conflict

    for x in 1:size(grid, 1) # Apply rules
        for y in 1:size(grid, 2)
            liveneighbours = countneighbours((x, y), grid)  # Find live neighbours
            if grid[x, y] == 1 && (liveneighbours == 2 || liveneighbours == 3) # Cell survives if it has 2 or 3 neighbours
                newgrid[x, y] = 1
            elseif grid[x, y] == 0 && liveneighbours == 3 # Cell is born if it has 3 live neighbours
                newgrid[x, y] = 1
            else # Otherwise the cell is dead. Combines several rules into this one
                newgrid[x, y] = 0
            end
        end
    end

    for r in eachrow(newgrid) # Print grid
        showline(r)
    end
    println("\n")

    life(newgrid, steps-1) # return ecursive call
end

# Pre-defined patterns

# Oscillators
blinker = [0 0 0 0 0;
           0 0 0 0 0;
           0 1 1 1 0;
           0 0 0 0 0;
           0 0 0 0 0]

toad = [0 0 0 0 0 0;
        0 0 0 0 0 0;
        0 0 1 1 1 0;
        0 1 1 1 0 0;
        0 0 0 0 0 0;
        0 0 0 0 0 0]

beacon = [0 0 0 0 0 0;
          0 1 1 0 0 0;
          0 1 1 0 0 0;
          0 0 0 1 1 0;
          0 0 0 1 1 0;
          0 0 0 0 0 0]

pulsar = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0;
          0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0;
          0 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 0 0;
          0 0 0 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 0 0;
          0 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 0;
          0 0 0 0 1 0 1 0 1 0 1 0 1 0 1 0 0 0 0 0;
          0 0 1 1 1 0 0 1 1 0 1 1 0 0 1 1 1 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 1 1 0 0 0 1 1 0 0 0 0 0 0 0;
          0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0;
          0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
          0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;]
