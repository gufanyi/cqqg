//
//  SplashViewContronller.m
//  IPhone
//
//  Created by roy on 12-2-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SplashViewContronller.h"

@implementation SplashViewContronller

@synthesize timer,splashImageView,mainViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
-(void)loadView{
    UIView *view=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    view.autoresizingMask=UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    self.view=view;
    [view release];
    splashImageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"splash.png"]];
    //splashImageView.frame=CGRectMake(0,0, 320,480);
    splashImageView.center=self.view.center;
    [self.view addSubview:splashImageView];
    mainViewController=[[MainViewController alloc] init];
    mainViewController.view.alpha=0.0;
    [self.view addSubview:mainViewController.view];
    [splashImageView sizeToFit];
    timer=[NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(fadeScreen) userInfo:nil repeats:NO];
    
}

-(void) fadeScreen{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:0.75];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(finishFading)];
    self.view.alpha=0.0;
    [UIView commitAnimations];
}

-(void) finishFading{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDelay:0.75];
    self.view.alpha=1.0;
    mainViewController.view.alpha=1.0;
    [UIView commitAnimations];
    [splashImageView removeFromSuperview];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
