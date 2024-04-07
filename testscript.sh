#!/bin/bash

# Function to run a test and check its result
run_test() {
    echo "Running test: $1"
    if $2; then
        echo "Test passed"
    else
        echo "Test failed"
    fi
    echo ""
}

# Test 1: Test with valid maze file
echo "Test 1: Valid maze file"
./maze maze_valid.txt 10 10
# Add assertion for test result

# Test 2: Test with invalid maze file
echo "Test 2: Invalid maze file"
./maze maze_invalid.txt 10 10
# Add assertion for test result

# Test 3: Test minimum maze size
echo "Test 3: Minimum maze size"
./maze maze_min_size.txt 5 5
# Add assertion for test result

# Test 4: Test maximum maze size
echo "Test 4: Maximum maze size"
./maze maze_max_size.txt 100 100
# Add assertion for test result

# Test 5: Test maze height out of range
echo "Test 5: Maze height out of range"
./maze maze_height_out_of_range.txt 101 10
# Add assertion for test result

# Test 6: Test maze width out of range
echo "Test 6: Maze width out of range"
./maze maze_width_out_of_range.txt 10 101
# Add assertion for test result

# Test 7: Test moving up to empty space
echo "Test 7: Moving up to empty space"
./maze maze_empty.txt 10 10 < input_up.txt
# Add assertion for test result

# Test 8: Test moving down to empty space
echo "Test 8: Moving down to empty space"
./maze maze_empty.txt 10 10 < input_down.txt
# Add assertion for test result

# Test 9: Test moving left to empty space
echo "Test 9: Moving left to empty space"
./maze maze_empty.txt 10 10 < input_left.txt
# Add assertion for test result

# Test 10: Test moving right to empty space
echo "Test 10: Moving right to empty space"
./maze maze_empty.txt 10 10 < input_right.txt
# Add assertion for test result

# Test 11: Test moving up to wall
echo "Test 11: Moving up to wall"
./maze maze_wall.txt 10 10 < input_up.txt
# Add assertion for test result

# Test 12: Test moving left to wall
echo "Test 12: Moving left to wall"
./maze maze_wall.txt 10 10 < input_left.txt
# Add assertion for test result

# Test 13: Test moving down to edge
echo "Test 13: Moving down to edge"
./maze maze_edge.txt 10 10 < input_down.txt
# Add assertion for test result

# Test 14: Test moving right to edge
echo "Test 14: Moving right to edge"
./maze maze_edge.txt 10 10 < input_right.txt
# Add assertion for test result

# Test 15: Test viewing map
echo "Test 15: Viewing map"
./maze maze_valid.txt 10 10 < input_view_map.txt
# Add assertion for test result

# Test 16: Test viewing map and continue
echo "Test 16: Viewing map and continue"
./maze maze_valid.txt 10 10 < input_view_map_continue.txt
# Add assertion for test result

# Test 17: Test quitting game (upper case)
echo "Test 17: Quitting game (upper case)"
./maze maze_valid.txt 10 10 < input_quit_upper.txt
# Add assertion for test result

# Test 18: Test quitting game (lower case)
echo "Test 18: Quitting game (lower case)"
./maze maze_valid.txt 10 10 < input_quit_lower.txt
# Add assertion for test result

# Test 19: Test invalid input
echo "Test 19: Invalid input"
./maze maze_valid.txt 10 10 < input_invalid.txt
# Add assertion for test result

# Test 20: Test moving to map edge
echo "Test 20: Moving to map edge"
./maze maze_edge.txt 10 10 < input_edge.txt

