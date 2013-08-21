//
//  ThirdViewController.h
//  TabAndNav
//
//  Created by Youwei Teng on 8/21/13.
//  Copyright (c) 2013 Youwei Teng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController{
    UILabel *position;
    NSString *text;
}
@property (weak, nonatomic) IBOutlet UILabel *Label;

@property (nonatomic, retain) UILabel *myLabel;
@property (nonatomic, retain) NSString *myString;

@end
