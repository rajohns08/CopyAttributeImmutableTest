//
//  Person.h
//  CopyAttributeImmutableTest
//
//  Created by Adam Johns on 1/14/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

// If this property uses the copy attribute instead
// of strong, it can't be modified indirectly anymore
// like in our example.
@property (copy, nonatomic) NSString *name;

@end
