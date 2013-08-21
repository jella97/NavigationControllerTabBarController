//
//  SecondViewController.m
//  test
//
//  Created by Youwei Teng on 8/21/13.
//  Copyright (c) 2013 Youwei Teng. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
- (IBAction)go:(UIButton *)sender {
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    //thirdVC.hidesBottomBarWhenPushed = YES; // hide the tab bar
    thirdVC.text = @"from tab 2";
    [self.navigationController pushViewController:thirdVC animated:YES];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
