//
//  AttachViewController.m
//  IPhone
//
//  Created by roy on 12-2-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AttachViewController.h"
@implementation AttachViewController
@synthesize attachWebView,loeadUrl,activityIndicator;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{      
    CGRect bounds = [[UIScreen mainScreen] bounds];
    CGFloat x=bounds.origin.x;
    CGFloat y=bounds.origin.y;
    CGFloat screenWidth=bounds.size.width;
    CGFloat screenHeight=bounds.size.height-20.0f;
    attachWebView=[[UIWebView alloc] initWithFrame:CGRectMake(x, y, screenWidth, screenHeight)];
    [attachWebView setScalesPageToFit:YES];
    attachWebView.delegate=self;
    NSURL *url = [[NSURL alloc] initWithString:loeadUrl];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
     NSLog(@"%@",url);
    [url release];
    [attachWebView loadRequest:request];
    [self.view addSubview:attachWebView];
    activityIndicator  = [[ UIActivityIndicatorView   alloc]  initWithFrame: CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [ activityIndicator  setCenter :  self.view. center ];
    [ activityIndicator   setActivityIndicatorViewStyle: UIActivityIndicatorViewStyleWhiteLarge];  
    [self.view addSubview:activityIndicator];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{    
    self.attachWebView=nil;
    self.loeadUrl=nil;
    self.activityIndicator=nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void )webViewDidFinishLoad:(UIWebView *)webView {
    [activityIndicator stopAnimating];
    
}

- (void )webViewDidStartLoad:(UIWebView *)webView {     
    [ activityIndicator startAnimating ]; 
}
@end
