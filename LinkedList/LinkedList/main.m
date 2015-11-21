//
//  main.m
//  LinkedList
//
//  Created by Jiaxiang Li on 11/20/15.
//  Copyright © 2015 Jiaxiang Li. All rights reserved.
//

#import <Foundation/Foundation.h>
struct node {
    int data;
    struct node *next;
};

void constructLinkedList() {
    NSLog(@"Please enter the number of input digits:");
    int cont;
    scanf("%d",&cont);
    
    struct node *head = NULL,*p,*q = NULL;
    NSLog(@"Please enter integers:");
    for (int i = 0; i < cont; i++) {
        int a;
        
        scanf("%d",&a);
        p = (struct node *) malloc(sizeof(struct node));
        p->data = a;
        p->next = NULL;
        
        if (head == NULL) {
            head = p;
        }else {
            q->next = p;
            
        }
        
        q = p;
        
    }
    
    NSLog(@"Pleanse enter inset integer:");
    int a;
    scanf("%d",&a);
    
    struct node *t;
    
    t = head;
    
    while (t != NULL) {
        if (t->next->data > a) {
            p = (struct node *) malloc(sizeof(struct node));
            p->data = a;
            p->next = t->next;
            t->next = p;
            break;
        }
        t = t->next;
    }
    
    t = head;
    while (t != NULL) {
        NSLog(@"%d",t->data);
        t = t->next;
    }
}






int main(int argc, const char * argv[]) {
    @autoreleasepool {
        constructLinkedList();
    }
    return 0;
}
