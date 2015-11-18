//
//  main.m
//  QuickSort
//
//  Created by Jiaxiang Li on 11/18/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
int n;
int a[100];

void quickSort(int left,int right) {
    int i,j,temp;
    
    if (left > right) {
        return;
    }
    
    temp = a[left];
    i = left;
    j= right;
    
    while (i != j) {
        while (a[j] >= temp && i < j) {
            j --;
        }
        
        while (a[i] <= temp && i< j) {
            i ++;
        }
        
        if (i < j) {
            int t = a[i];
            a[i] = a[j];
            a[j] = t;
        }
    }
    
    a[left] = a[i];
    a[i] = temp;
    
    quickSort(left, i - 1);
    quickSort(i + 1, right);
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
        
        
        
        NSLog(@"Please enter the number of digits you want sort:");
        scanf("%d",&n);
        
        for (int i = 0; i < n; i++) {
            scanf("%d",&a[i]);
        }
        
        
       
        quickSort(0, n - 1);
        
        for (int i = 0; i < n; i++) {
            printf("%d",a[i]);
            printf(" ");
        }
    }
    return 0;
}
