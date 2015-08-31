//
//  main.m
//  InsertionSort
//
//  Created by Jiaxiang Li on 15/8/31.
//  Copyright © 2015年 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Insert.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        
        NSArray *num = [NSArray arrayWithObjects:@5,@3,@1,@2,nil];
        
        Insert *sort = [[Insert alloc] init];
        
        [sort inserSortArray:num];
        
        
        
    }
    return 0;
}
