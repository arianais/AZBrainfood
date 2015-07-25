//
//  AddAFoodViewController.h
//  AZBrainFoodApp
//
//  Created by Ariana on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface AddAFoodViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISegmentedControl *reSeg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *frSeg;
@property (strong, nonatomic) IBOutlet UISegmentedControl *pantrySeg;
@property (strong, nonatomic) IBOutlet UITextField *foodName;
@property (strong, nonatomic) IBOutlet UITextField *re;
@property (strong, nonatomic) IBOutlet UITextField *fr;
@property (strong, nonatomic) IBOutlet UITextField *pan;
@property (strong, nonatomic) IBOutlet UITextField *link;
@property (strong, nonatomic) IBOutlet UILabel *error;

@end
