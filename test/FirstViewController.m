//
//  FirstViewController.m
//  test
//
//  Created by Youwei Teng on 8/21/13.
//  Copyright (c) 2013 Youwei Teng. All rights reserved.
//

#import "FirstViewController.h"
#import "ThirdViewController.h"
#import "MyCell.h"

UISegmentedControl *segmentedControl;
NSInteger MODE = 0;
@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 30;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (MyCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MyCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSLog(@"cellForItemAtIndexPath");
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    //    MyCell *cell = (MyCell*)[collectionView cellForItemAtIndexPath:indexPath];
    //NSArray *views = [cell.contentView subviews]; //not use right now
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    thirdVC.hidesBottomBarWhenPushed = YES; // hide the tab bar
    thirdVC.myString = @"Hi";
    [self.navigationController pushViewController:thirdVC animated:YES];
    //[self performSegueWithIdentifier:(@"doFuck") sender:self]; //only for story board, so i use properties to pass values  =v=
    
    NSLog(@"%d",indexPath.row);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self myCollectionView]setDataSource:self];
    [[self myCollectionView]setDelegate:self];
    [self setUpSegment];
    
    UINib *cellNib = [UINib nibWithNibName:@"MyCell" bundle:nil];
    [self.myCollectionView registerNib:cellNib forCellWithReuseIdentifier:@"Cell"];
    
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goToThird:(id)sender {
    // FIXME: tswe
    
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:YES];
}

-(void)segmentAction:(UISegmentedControl *)sender {
    
    switch ([sender selectedSegmentIndex]) {
        case 0:
            break;
            
        case 1:
            
            break;
            
            
        default:
            break;
    }
    MODE = [sender selectedSegmentIndex];
    NSLog(@"%d",[sender selectedSegmentIndex]);
    [[self myCollectionView] reloadData];
    //reload collection View here
    
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated {
    
    [super setEditing:editing animated:animated];
    
    if (editing) {
        
        NSLog(@"editing");
        
        
    } else {
        
        NSLog(@"done");
        
        
    }
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    screenWidth = (screenWidth-6)/3;
    return CGSizeMake(screenWidth, screenWidth);
}

-(void)setUpSegment{
    NSArray *segmentedArray = [[NSArray alloc]initWithObjects:@"IMAGE",@"PDF",nil];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc]initWithItems:segmentedArray];
    
    segmentedControl.frame = CGRectMake(0,0, 320.0, 56.0);
    segmentedControl.selectedSegmentIndex = 0;
    segmentedControl.tintColor = [UIColor blackColor];
    segmentedControl.segmentedControlStyle = 7;
    
    [segmentedControl addTarget:self action:@selector(segmentAction:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:segmentedControl];
}

@end