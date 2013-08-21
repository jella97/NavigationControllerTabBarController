//
//  FirstViewController.h
//  test
//
//  Created by Youwei Teng on 8/21/13.
//  Copyright (c) 2013 Youwei Teng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCell.h"

@interface FirstViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UIButton *goToThird;

@end
