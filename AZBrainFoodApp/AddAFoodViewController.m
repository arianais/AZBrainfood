//
//  AddAFoodViewController.m
//  AZBrainFoodApp
//
//  Created by Ariana on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import "AddAFoodViewController.h"

@interface AddAFoodViewController ()

@end

@implementation AddAFoodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.error.hidden = YES;
    self.pan.hidden = YES;
    self.re.hidden = YES;
    self.fr.hidden = YES;
 [self.frSeg setSelectedSegmentIndex:0];
    [self.frSeg setSelectedSegmentIndex:0];
    [self.pantrySeg setSelectedSegmentIndex:0];
    [self.reSeg setSelectedSegmentIndex:0];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)reSeg:(id)sender {
    if (self.reSeg.selectedSegmentIndex == 0) {
          self.re.hidden = YES;
    }
    else{
        self.re.hidden = NO;
    }
}
- (IBAction)frSeg:(id)sender {
    if (self.frSeg.selectedSegmentIndex == 0) {
        self.fr.hidden = YES;
    }
    else{
        self.fr.hidden = NO;
    }
}
- (IBAction)panSeg:(id)sender {
    if (self.pantrySeg.selectedSegmentIndex == 0) {
        self.pan.hidden = YES;
    }
    else{
        self.pan.hidden = NO;
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)done:(id)sender {
    PFObject *food = [PFObject objectWithClassName:@"Food"];
 
   
 
    if ([self.foodName.text length] > 0 &&[self.link.text length] > 0 ){
        food[@"name"] = self.foodName.text;
        food[@"approved"] = @"yes";
        food[@"link"] = self.link.text;
            self.error.hidden = YES;
        
    }
    else{
        self.error.hidden = YES;
    }
        if (self.pantrySeg.selectedSegmentIndex != 0) {
    
            if ([self.pan.text length] > 0){
                    self.error.hidden = YES;
                
                food[@"pan"] = self.pan.text;
            }
            else{
                  self.error.hidden = NO;
            }
        }
        if (self.frSeg.selectedSegmentIndex != 0) {
            if ([self.fr.text length] > 0){
                    self.error.hidden = YES;
                food[@"fr"] = self.fr.text;
            }
            else{
                  self.error.hidden = NO;
            }
        }
        if (self.reSeg.selectedSegmentIndex != 0) {
            if ([self.re.text length] > 0){
                    self.error.hidden = YES;
                food[@"re"] = self.re.text;
            }
            else{
                  self.error.hidden = NO;
            }
        }
        
    if (self.error.hidden) {
        
    
    [food saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        NSLog(@"done");
        if (succeeded) {
            self.pan.text = nil;
            self.fr.text = nil;
            self.re.text = nil;
            self.foodName.text = nil;
            self.link.text = nil;
              self.error.hidden = YES;
            self.pan.hidden = YES;
            self.fr.hidden = YES;
            self.re.hidden = YES;
            [self.frSeg setSelectedSegmentIndex:0];
            [self.frSeg setSelectedSegmentIndex:0];
            [self.pantrySeg setSelectedSegmentIndex:0];
            [self.reSeg setSelectedSegmentIndex:0];

          
        } else {
            NSLog(@"%@",error.description);
            // There was a problem, check error.description
        }
    }];}
}

@end
