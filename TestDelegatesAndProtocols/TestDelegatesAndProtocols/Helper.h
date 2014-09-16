//
//  Helper.h
//  TestDelegatesAndProtocols
//
//  Created by Robert Seitsinger on 9/9/14.
//  Copyright (c) 2014 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>

// Define the protocol
@protocol myProtocolDelegate <NSObject>

@required
-(BOOL)valid;
-(void)makeObject:(NSString *)name;
    
@optional
-(NSString *)stringifyObjects;

@end


@interface Helper : NSObject
@property (nonatomic, strong) id <myProtocolDelegate> delegate;

-(void)makeSomethingHappen:(NSString *)message;

@end
