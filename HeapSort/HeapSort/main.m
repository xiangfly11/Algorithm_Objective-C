//
//  main.m
//  HeapSort
//
//  Created by Jiaxiang Li on 10/19/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HeapSort.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array = @[@"10",@"11",@"-6",@"55",@"100",@"-66",@"22"];
        
        NSMutableArray *testArray = [[NSMutableArray alloc] initWithArray:array];
        HeapSort *sort = [[HeapSort alloc] init];
        
        //[sort buildHeapFromArray:testArray];
        
        NSMutableArray *resultArray = [[NSMutableArray alloc] init];
        resultArray = [sort heapSortWithArray:testArray];
        NSInteger number = 0;
        for (NSInteger index = 0; index < resultArray.count; index++) {
            
            NSLog(@"=======number%ld:%ld",number,[resultArray[index] integerValue]);
            
            number++;
        }
        
    }
    return 0;
}
