//
//  ExpirationDateTableViewController.h
//  AZBrainFoodApp
//
//  Created by Ariana on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import <Parse/Parse.h>
#import "ExpirationDateObject.h"
@interface ExpirationDateTableViewController : UITableViewController
@property (strong, nonatomic) ExpirationDateObject *expire;
@property(strong, nonatomic) NSNumber *place;
@property (strong, nonatomic) NSMutableArray *food;

@end
