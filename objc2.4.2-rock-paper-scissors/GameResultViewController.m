//
//  GameResultViewController.m
//  objc2.4.2-rock-paper-scissors
//
//  Created by Andres Kwan on 9/27/15.
//  Copyright © 2015 Kwan. All rights reserved.
//

#import "GameResultViewController.h"

@interface GameResultViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelResultOfMatch;

@end

@implementation GameResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    self.labelResultOfMatch.text = [NSString stringWithFormat:@"%@ was selected!", self.itemSelected];
}

- (IBAction)buttonDismissView:(id)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

@end
