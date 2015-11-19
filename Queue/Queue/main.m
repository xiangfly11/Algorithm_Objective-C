//
//  main.m
//  Queue
//
//  Created by Jiaxiang Li on 11/19/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>

struct queue {
    int head;
    int tail;
    int data[100];
};

int number;


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        struct queue q;
        q.head = 0;
        q.tail = 0;
        NSLog(@"Enter the number of digits in the queue:");
        scanf("%d",&number);
    
        NSLog(@"Enter digits:");
        for (int i = 0; i < number; i ++) {
            scanf("%d",&q.data[q.tail]);
            q.tail++;
        }
        
        while (q.head < q.tail) {
            NSLog(@"%d",q.data[q.head]);
            q.head++;
            
            q.data[q.tail] = q.data[q.head];
            q.tail++;
            q.head ++;
        }
    }
    
    
    return 0;
}
