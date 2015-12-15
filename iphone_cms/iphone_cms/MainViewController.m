//
//  MainViewController.m
//  IPhone
//
//  Created by roy on 12-2-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"

@implementation MainViewController
@synthesize rootViewController,attachViewController,backBtn;
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{    
    rootViewController=[[RootViewController alloc] init];
    [self addChildViewController:rootViewController];
    rootViewController.view.frame=[[UIScreen mainScreen] bounds];
    [self.view addSubview:rootViewController.view];
    [super viewDidLoad];
}

- (void)viewDidUnload
{   
   // self.
    self.rootViewController=nil;
    self.attachViewController=nil;
    self.backBtn=nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void)loadSubView:(NSString*)subUrl
{   

    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];;
    attachViewController=[[AttachViewController alloc] init];
    attachViewController.loeadUrl=subUrl;
    [attachViewController viewWillAppear:YES];
    [rootViewController viewWillDisappear:YES];
    [rootViewController.view removeFromSuperview];
    attachViewController.view.frame=[[UIScreen mainScreen] bounds];
    [self.view addSubview:attachViewController.view];
    [attachViewController viewDidAppear:YES];
    [rootViewController viewDidDisappear:YES];
    [UIView commitAnimations];
    backBtn=[[UIButton alloc] initWithFrame:CGRectMake(5, 430, 25,30)];
    backBtn.autoresizingMask=UIViewAutoresizingFlexibleBottomMargin;
    backBtn.alpha=0.6;
    backBtn.backgroundColor = [UIColor clearColor]; 
    [backBtn setBackgroundImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];  
    [backBtn addTarget:self action:@selector(backView) forControlEvents:UIControlEventTouchUpInside]; 
    [self.view addSubview:backBtn];
    [self.view bringSubviewToFront:backBtn];
    
}
-(void)backView
{   
    
    backBtn.hidden=YES;
    [UIView beginAnimations:@"View Flip" context:nil];
    [UIView setAnimationDuration:1.25];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
    [rootViewController viewWillAppear:YES];
    [attachViewController viewWillDisappear:YES];
    [attachViewController.view removeFromSuperview];
    [self.view addSubview:rootViewController.view];
    [rootViewController viewDidAppear:YES];
    [attachViewController viewDidDisappear:YES];
    [UIView commitAnimations];
    
}

@end
