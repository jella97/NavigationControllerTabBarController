//
//  ThirdViewController.m
//  TabAndNav
//
//  Created by Youwei Teng on 8/21/13.
//  Copyright (c) 2013 Youwei Teng. All rights reserved.
//  this is use for show pass values!!

#import "ThirdViewController.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

@synthesize position,text,bigImage;

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
    position.text = text;
    [bigImage setImageWithURL:text];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
