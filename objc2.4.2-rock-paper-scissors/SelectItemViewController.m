//
//  ViewController.m
//  objc2.4.2-rock-paper-scissors
//
//  Created by Andres Kwan on 9/27/15.
//  Copyright (c) 2015 Kwan. All rights reserved.
//

#import "SelectItemViewController.h"
#import "GameResultViewController.h"

static NSString * const kViewControllerIdentifierGameResult = @"GameResult";
static NSString * const kSegueIdentifierRock = @"playWithRock";
static NSString * const kSegueIdentifierScissors = @"playWithScissors";

@interface SelectItemViewController ()

@end

@implementation SelectItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPaper:(UIButton *)sender {
    //1) instantiate the VC
    GameResultViewController *gameResultVC = [self.storyboard instantiateViewControllerWithIdentifier:kViewControllerIdentifierGameResult];
    //2) Pass data to the VC
        gameResultVC.itemSelected = @"Paper";
    //3) Present VC
    [self presentViewController:gameResultVC
                       animated:YES
                     completion:nil];
}

- (IBAction)buttonRock:(id)sender {
    //Just perform the segue
    [self performSegueWithIdentifier:kSegueIdentifierRock
                              sender:sender];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //1) identify if it is the right segue
    if ([segue.identifier isEqualToString:kSegueIdentifierRock]) {
        //1) instantiate the VC
        GameResultViewController *gameResultVC = [segue destinationViewController];
        //2) Pass data to the VC
        gameResultVC.itemSelected = @"Rock";
    }
}
@end
