#ifndef MAZE_H
#define MAZE_H

#include <stdbool.h>

#define MAX_WIDTH 100
#define MAX_HEIGHT 100

// Define struct for Maze
typedef struct {
    char maze[MAX_HEIGHT][MAX_WIDTH];
    int width;
    int height;
    int player_row;
    int player_col;
} Maze;

// Function prototypes
void load_maze(Maze *maze, const char *filename, int width, int height);
void print_maze(Maze *maze);
void move_player(Maze *maze, char direction);
bool check_exit(Maze *maze);

#endif

