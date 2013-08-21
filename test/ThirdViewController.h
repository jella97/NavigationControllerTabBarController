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
@property (weak, nonatomic) IBOutlet UIImageView *bigImage;

@property (nonatomic, retain) UILabel *position;
@property (nonatomic, retain) NSString *text;

@end
