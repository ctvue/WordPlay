//
//  PlaceViewController.m
//  WordPlay
//
//  Created by Chee Vue on 5/12/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import "PlaceViewController.h"
#import "ResultsViewController.h"

@interface PlaceViewController ()
@property (weak, nonatomic) IBOutlet UITextField *placeTextField;

@end

@implementation PlaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    ResultsViewController * resultsvc = segue.destinationViewController;
    resultsvc.place = self.placeTextField.text;
    resultsvc.verb = self.verb;
    resultsvc.name = self.name;
    resultsvc.adjective = self.adjective;
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.placeTextField.text isEqual:@""]) {
        return NO;
    } else {
        return YES;
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

@end
