//
//  main.m
//  BinarySearch
//
//  Created by Jiaxiang Li on 15/8/28.
//  Copyright (c) 2015年 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinarySearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSArray *array = @[@1,@2,@3,@10,@8];
        
        
        BinarySearch *search = [[BinarySearch alloc] init];
        
        [search searchArr:array forNum:@3 fromFirst:0 toLast:array.count-1];
      
    }
    return 0;
}
