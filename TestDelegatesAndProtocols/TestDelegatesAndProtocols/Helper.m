//
//  Helper.m
//  TestDelegatesAndProtocols
//
//  Created by Robert Seitsinger on 9/9/14.
//  Copyright (c) 2014 Infinity Software. All rights reserved.
//

#import "Helper.h"

@implementation Helper

-(void)makeSomethingHappen:(NSString *)message {
    NSLog(@"Helper:makeSomethingHappen: Entry. message:%@", message);
    
    // Call the protocol methods in the delegate
    [self.delegate valid];
    [self.delegate makeObject:message];
    
    NSLog(@"Helper:makeSomethingHappen: Exit");
}

@end
