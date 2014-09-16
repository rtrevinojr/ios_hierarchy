//
//  Class1.h
//  TestDelegatesAndProtocols
//
//  Created by Robert Seitsinger on 9/9/14.
//  Copyright (c) 2014 Infinity Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"

// <myProtocolDelegate> means this class conforms to the myProtocolDelegate protocol
@interface Class1 : NSObject <myProtocolDelegate>
-(void)doSomething:(NSString *)name;

@end
