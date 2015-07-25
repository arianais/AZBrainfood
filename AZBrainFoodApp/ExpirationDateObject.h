//
//  ExpirationDateObject.h
//  
//
//  Created by Ariana on 7/24/15.
//
//

#import <Foundation/Foundation.h>

@interface ExpirationDateObject : NSObject

@property (strong, nonatomic) NSArray *foodName;
@property (strong, nonatomic) NSMutableArray *keep;
@property (strong, nonatomic) NSMutableArray *tips;
-(NSArray*)food;

@end
