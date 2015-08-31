//
//  Insert.m
//  InsertionSort
//
//  Created by Jiaxiang Li on 15/8/31.
//  Copyright © 2015年 Jiaxiang Li. All rights reserved.
//

#import "Insert.h"

@implementation Insert

-(void) inserSortArray: (NSArray *) numArray {
    NSMutableArray *arr = [NSMutableArray arrayWithArray:numArray];
    for (NSInteger i = 1; i < arr.count; i++) {
        NSInteger j = i;
        NSNumber *tempNum =(NSNumber *) [arr objectAtIndex:j];
        NSLog(@"%@",tempNum);
        while (j > 0 && tempNum < arr[j-1]) {
            NSLog(@"====");
            
            [arr replaceObjectAtIndex:j withObject:arr [j-1]];
            
            
            j--;
        }
        
        [arr replaceObjectAtIndex:j withObject:tempNum];
    }
    
    
    NSLog(@"%@",arr);
}








@end
