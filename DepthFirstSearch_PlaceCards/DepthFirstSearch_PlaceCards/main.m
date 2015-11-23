//
//  main.m
//  DepthFirstSearch_PlaceCards
//
//  Created by Jiaxiang Li on 11/23/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//
//  There are n cards and n box, every box should place one and onyly card, to
//  calcuate how many ways can put these cards.
//

#import <Foundation/Foundation.h>

const int n = 10;
int place[n];
int book[n];
int total = 0;

void dfs (int step) {
    
    if (step == n) {
        for ( int i = 0; i < n; i ++) {
            printf("%d",place[i]);
        }
        
        printf("\n");
        
        total ++;
        return;
    }
    
    for ( int i = 0; i < n; i++) {
        if (book[i] == 0) {
            place[step] = i;
            book[i] = 1;
            dfs(step+1);
            book[i] = 0;
        }
    }
    
    return;
}




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dfs(0);
        
        NSLog(@"The total ways:%d",total);
    }
    return 0;
}
