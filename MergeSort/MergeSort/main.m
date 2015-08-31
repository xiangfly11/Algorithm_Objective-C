//
//  main.m
//  MergeSort
//
//  Created by Jiaxiang Li on 15/8/31.
//  Copyright © 2015年 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MergeSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        
        
        MergeSort *sort = [[MergeSort alloc] init];
        NSMutableArray *arr = [NSMutableArray arrayWithObjects:@3,@5,@0,@1,@2, nil];
        NSMutableArray *tempArr = [[NSMutableArray alloc]init];
        
        [sort mergeSortArr:arr fromFirstIndex:0 toLastIndex:arr.count-1 toFinalArr:tempArr];
        
        NSLog(@"%@",arr);
        NSLog(@"%@",tempArr);
    }
    return 0;
}
