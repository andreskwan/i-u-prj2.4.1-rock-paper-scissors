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
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)buttonDismissView:(id)sender {
    [self dismissViewControllerAnimated:YES
                             completion:nil];
}

@end
