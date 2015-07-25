//
//  ExpirationDateTableViewController.m
//  AZBrainFoodApp
//
//  Created by Ariana on 7/24/15.
//  Copyright (c) 2015 Logical Nonsense Apps. All rights reserved.
//

#import "ExpirationDateTableViewController.h"

@interface ExpirationDateTableViewController ()

@end

@implementation ExpirationDateTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
      self.expire = [[ExpirationDateObject alloc] init];
    PFObject *food = [PFObject objectWithClassName:@"food"];
    food[@"foo"] = @"carrott";
    [food saveInBackground];
 
    PFQuery *query = [PFQuery queryWithClassName:@"food"];
    [query whereKey:@"foo" equalTo:@"carrott"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            // The find succeeded.
            NSLog(@"Successfully retrieved %lu scores.", (unsigned long)objects.count);
            // Do something with the found objects
            for (PFObject *object in objects) {
                NSLog(@"%@", object.objectId);
            }
        } else {
            // Log details of the failure
            NSLog(@"Error: %@ %@", error, [error userInfo]);
        }
    }];
    
}

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
 
    // Configure the cell...
    NSMutableArray *tempContentArray = [[NSMutableArray alloc] initWithObjects:@"apple", @"chocolate", @"carrots", nil];
 
    NSLog(@"%ld",(long)indexPath.row);

    NSString *tempString = [tempContentArray objectAtIndex:indexPath.row];
    cell.textLabel.text = tempString;
    
    cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:20];
 
    
  
    //self.color.backgroundColor=[UIColor greenColor];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSNumber *selRow = [[NSNumber alloc] initWithInteger:indexPath.row];
    self.place = selRow;
    
    [self performSegueWithIdentifier:@"showy" sender:self];
    

    
    
    //self.place = [NSNumber numberWithLong:indexPath.row];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
       if ([segue.identifier isEqualToString:@"show"]) {
           ViewController *hi = (ViewController *)segue.destinationViewController;
           hi.index = self.place;
            NSLog(@"fff%@",self.place);
          // imageViewController.message = self.selectedMessage;
           

        
    }
}
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
