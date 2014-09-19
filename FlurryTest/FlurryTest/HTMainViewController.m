//
//  HTMainViewController.m
//  FlurryTest
//
//  Created by Jason on 2014/8/28.
//  Copyright (c) 2014年 HappyMan. All rights reserved.
//

#import "HTMainViewController.h"

@interface HTMainViewController ()

@end

@implementation HTMainViewController
-(void)viewWillLayoutSubviews{
    NSLog(@"viewWillLayoutSubviews");
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
    NSLog(@"viewDidLoad");
    [Flurry logEvent:@"Test"];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
    NSLog(@"viewDidAppear");
    [Flurry logEvent:@"HappyMan"];
}

-(IBAction)button1Clicked:(UIButton *)button
{
    [Flurry logEvent:@"one"];
}
-(IBAction)button2Clicked:(UIButton *)button
{
    [Flurry logEvent:@"two"];
}

-(IBAction)button3Clicked:(UIButton *)button
{
    [Flurry logEvent:@"three"];
}

@end
