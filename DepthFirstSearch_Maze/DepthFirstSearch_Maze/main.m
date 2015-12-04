//
//  main.m
//  DepthFirstSearch_Maze
//
//  Created by Jiaxiang Li on 12/2/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
const int row = 51;
const int col = 51;
int maze[row][col];
int book[row][col];
int startX;
int startY;
int endX;
int endY;
int step = 0;
int min = 99999;
int m,n;

void dfs_maze(int startX,int startY, int step){
    int move[4][2] = {
                      {0,-1},
                      {1,0},
                      {0,1},
                      {-1,0}
    };
    if (startX == endX && startY == endY && step <= m*n) {
        if (step < min) {
            min = step;
        }
        return;
    }
    
    for (int k = 0; k < 4; k ++) {
        int x = startX + move[k][0];
        int y = startY + move[k][1];
        
        if (x < 0||x > m || y < 0||y > n) {
            continue;
        }
        
        if (maze[x][y] == 0 && book[x][y] == 0) {
            book[x][y] = 1;
            dfs_maze(x, y, step + 1);
            book[x][y] = 0;
        
        }
        
    }
    
    return;
    
}




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Please enter the number of rows and columns for the maze(<= 51)");
        scanf("%d",&m);
        scanf("%d",&n);
        NSLog(@"Please set up the maze using 0 and 1:");
        for (int i = 0; i < m; i ++) {
            for (int j = 0; j < n; j++) {
                scanf("%d",&maze[i][j]);
            }
            //NSLog(@"\n");
        }
        
        NSLog(@"Please enter start coordinate:");
        scanf("%d",&startX);
        scanf("%d",&startY);
        
        NSLog(@"Pleanse enter end coordinate:");
        scanf("%d",&endX);
        scanf("%d",&endY);
        
        
        dfs_maze(startX,startY,step);
        
        NSLog(@"The minimum step is %d",min);
        
    }
    return 0;
}
