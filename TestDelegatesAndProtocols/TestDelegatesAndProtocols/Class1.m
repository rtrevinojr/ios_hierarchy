//
//  Class1.m
//  TestDelegatesAndProtocols
//
//  Created by Robert Seitsinger on 9/9/14.
//  Copyright (c) 2014 Infinity Software. All rights reserved.
//

#import "Class1.h"

@interface Class1 ()
@property (nonatomic, strong) NSString *description;

@end

@implementation Class1

-(instancetype)init {
    NSLog(@"Class1:init: Entry");
    self = [super init];
    if (self) {
        _description = @"lots of something";
    }
    NSLog(@"Class1:init: Exit");
    return self;
}

-(void)doSomething:(NSString *)name {
    NSLog(@"Class1:doSomething: Entry. name:%@", name);
    
    Helper *helper = [[Helper alloc] init];
    helper.delegate = self;
    [helper makeSomethingHappen:name];
    
    NSLog(@"Class1:doSomething: Exit");
}

// myProtocolDelegate required methods

-(BOOL)valid {
    NSLog(@"Class1:valid");
    return YES;
}

-(void)makeObject:(NSString *)name {
    NSLog(@"Class1:makeObject: name:%@", name);
}

@end
