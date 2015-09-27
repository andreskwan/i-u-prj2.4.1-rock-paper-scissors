//
//  ViewController.m
//  objc2.4.2-rock-paper-scissors
//
//  Created by Andres Kwan on 9/27/15.
//  Copyright (c) 2015 Kwan. All rights reserved.
//

#import "SelectItemViewController.h"
#import "GameResultViewController.h"

static NSString * const kGameResult = @"GameResult";

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
    GameResultViewController *gameResultVC = [self.storyboard instantiateViewControllerWithIdentifier:kGameResult];
    //2) Pass data to the VC
        gameResultVC.itemSelected = @"Paper";
    //3) Present VC
    [self presentViewController:gameResultVC
                       animated:YES
                     completion:nil];
}

@end
