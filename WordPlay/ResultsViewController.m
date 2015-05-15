//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Chee Vue on 5/12/15.
//  Copyright (c) 2015 Chee Vue. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //NOTE: Solution does not work properly if a single character is enter.
    //The NSRange will look for the first letter match and then bold it.
    //For example, if adjective is 'e' then the first word's e is highlighted
    NSString *strTextView = [NSString stringWithFormat:@"The weather was %@ ; %@ is planning to %@ spend the day at %@.", self.adjective, self.name, self.verb, self.place];

    NSRange rangeBold1 = [strTextView rangeOfString:self.adjective];
    NSRange rangeBold2 = [strTextView rangeOfString:self.name];
    NSRange rangeBold3 = [strTextView rangeOfString:self.verb];
    NSRange rangeBold4 = [strTextView rangeOfString:self.place];
    UIFont *fontText = [UIFont boldSystemFontOfSize:14];
    NSDictionary *dictBoldText = [NSDictionary dictionaryWithObjectsAndKeys:fontText, NSFontAttributeName, nil];

    NSMutableAttributedString *mutAttrTextViewString = [[NSMutableAttributedString alloc] initWithString:strTextView];
    [mutAttrTextViewString setAttributes:dictBoldText range:rangeBold1];
    [mutAttrTextViewString setAttributes:dictBoldText range:rangeBold2];
    [mutAttrTextViewString setAttributes:dictBoldText range:rangeBold3];
    [mutAttrTextViewString setAttributes:dictBoldText range:rangeBold4];

    self.resultsTextView.attributedText = mutAttrTextViewString;
}

@end
