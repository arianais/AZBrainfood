//
//  ExpirationDateObject.m
//  
//
//  Created by Ariana on 7/24/15.
//
//

#import "ExpirationDateObject.h"
@implementation ExpirationDateObject
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.foodName = [[NSArray alloc] initWithObjects: @"carrot", @"orange", nil];
    }
    return self;
}

- (NSArray*)food {
    return self.foodName;
}


@end
