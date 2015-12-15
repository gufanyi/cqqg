//
//  RootViewController.m
//  IPhone
//
//  Created by roy on 12-2-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "UIDevice+IOKit_Extensions.h"
@implementation RootViewController
@synthesize webView,activityIndicator,splashImageView;
BOOL isInterrupted=NO;
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
    CGFloat screenHeight=bounds.size.height-20;
    webView=[[UIWebView alloc] initWithFrame:CGRectMake(x, y, screenWidth, screenHeight)];
    [webView setDataDetectorTypes:UIDataDetectorTypeNone];
    [webView setDelegate:self];
    [webView setScalesPageToFit:YES];
    [webView setOpaque:NO];
    [webView goBack];
    [webView goForward];
    [webView  setBackgroundColor:[ UIColor colorWithRed:255.0/255 green:255.0/255 blue:255.0/255 alpha:1]];
    NSString *tmp = [[RootViewController getConnectUrl] stringByAddingPercentEscapesUsingEncoding:
                     NSUTF8StringEncoding];
    tmp = [tmp stringByReplacingOccurrencesOfString:@"%00" withString:@""];
    NSURL *url = [[NSURL alloc] initWithString:tmp];
    NSLog(@"%@",url);
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    [url release];
    [webView loadRequest:request];
    webView.autoresizingMask= UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:webView];
    splashImageView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"splash.png"]];
    //[self.view addSubview:splashImageView];     
    activityIndicator  = [[ UIActivityIndicatorView   alloc]  initWithFrame: CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [ activityIndicator  setCenter :  self.view. center ];
    [ activityIndicator   setActivityIndicatorViewStyle: UIActivityIndicatorViewStyleWhiteLarge];  
    [ self . view  addSubview :  activityIndicator];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void )webViewDidFinishLoad:(UIWebView *)webView {
    [activityIndicator stopAnimating];
    splashImageView.hidden=YES;  
    
}

- (void )webViewDidStartLoad:(UIWebView *)webView {     
    [ activityIndicator startAnimating ]; 
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.webView=nil;
    self.activityIndicator=nil;
    self.splashImageView=nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

+(NSString *) getConnectUrl1
{
    NSMutableString *url=[[[NSMutableString alloc] init] autorelease];
    NSString *filePath=[[NSBundle mainBundle] pathForResource:@"System" ofType:@"plist"];
    NSMutableDictionary *dict=[[NSMutableDictionary alloc] initWithContentsOfFile:filePath];
    //[url appendString:[dict objectForKey:@"URL"]];
    [url appendString:@"http://172.16.0.92:8027/phone/tp/imei/verify"];
    [url appendString:@"?"];
    NSArray *parameters=[dict objectForKey:@"Parameters"];
    NSArray *parameterValues=[dict objectForKey:@"ParameterValues"];
    for ( int i=0; i<[parameters count]; i++) {
        [url appendString:[parameters objectAtIndex:i]];
        [url appendString:@"="];
        if([@"auto" isEqualToString:[parameterValues objectAtIndex:i]]){
            [url appendString:[[UIDevice currentDevice] serialnumber] ];
        }else{
            [url appendString:[parameterValues objectAtIndex:i]];
        }
        if(i==[parameters count]-1){
            break;
        }else{
            [url appendString:@"&"];
        }
        
    }
    [url appendString:@"&pk_site=0000AA1000000000ZAUL"];
    [dict release];
    NSLog(@"%@",url);
    return url;
}

+(NSString *) getConnectUrl
{
    NSMutableString *url=[[[NSMutableString alloc] init] autorelease];
    NSString *filePath=[[NSBundle mainBundle] pathForResource:@"System" ofType:@"plist"];
    NSMutableDictionary *dict=[[NSMutableDictionary alloc] initWithContentsOfFile:filePath];
    [url appendString:[dict objectForKey:@"URL"]];
    [url appendString:@"?"];
    NSArray *parameters=[dict objectForKey:@"Parameters"];
    NSArray *parameterValues=[dict objectForKey:@"ParameterValues"];
    for ( int i=0; i<[parameters count]; i++) {
        [url appendString:[parameters objectAtIndex:i]];
        [url appendString:@"="];
        if([@"auto" isEqualToString:[parameterValues objectAtIndex:i]]){
            [url appendString:[[UIDevice currentDevice] serialnumber] ];
        }else{
            [url appendString:[parameterValues objectAtIndex:i]];
        }
        if(i==[parameters count]-1){
            break;
        }else{
            [url appendString:@"&"];
        }
        
    }
    [url appendString:@"&pk_site=0000AA1000000000ZAUL"];
    [dict release];
    NSLog(@"%@",url);
    return url;
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{   
    
    
    if(isInterrupted){
        [activityIndicator stopAnimating];
    }else{
        if ([error code] == NSURLErrorCancelled) {
            return;
            //show error alert, etc.
        }
        
        UIAlertView *alterview = [[UIAlertView alloc] 
                                  initWithTitle:@"" 
                                  message:[error localizedDescription]  delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        
        
        [alterview show];
        [alterview release];
        [activityIndicator stopAnimating];
    }
    
    
}
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    NSString *url=[[request mainDocumentURL] absoluteString];
    if(url !=nil){
        // NSLog(@"URL IS %@",url);
        NSArray *urls=[url componentsSeparatedByString:@"/"];
        for(int i=0;i< [urls count];i++){
            if([@"tf" isEqualToString:[urls objectAtIndex:i]]||[[urls objectAtIndex:i] hasPrefix:@"showfile"]||[@"wap" isEqualToString:[urls objectAtIndex:i]]){
                isInterrupted=YES;
                NSArray *urlfs=[url componentsSeparatedByString:@"&"];
                for(int j=0;j<[urlfs count];j++){
                    if([[urlfs objectAtIndex:j] hasSuffix:@"iscebx"]){
                        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
                        return NO;
                    }
                }
                [self.parentViewController performSelector:@selector(loadSubView:) withObject:[[request mainDocumentURL] absoluteString]];
                return NO;
            }if([@"verify" isEqualToString:[urls objectAtIndex:i]]){
                if([[urls objectAtIndex:i] hasPrefix:@"num"]){
                    return YES;
                }else{
                    isInterrupted=YES;
                    NSString *tmp = [[RootViewController getConnectUrl1] stringByAddingPercentEscapesUsingEncoding:
                                     NSUTF8StringEncoding];
                    tmp = [tmp stringByReplacingOccurrencesOfString:@"%00" withString:@""];
                    NSURL *url = [[NSURL alloc] initWithString:tmp];
                    NSURLRequest *request =[NSURLRequest requestWithURL:url];
                    [url release];
                    [self.webView loadRequest:request];
                    return YES;                    
                    //                    @try{
                    //                        NSURL *myURL_APP_A = [NSURL URLWithString:@"haiyou_oa://com.haiyou.oa"];
                    //                        [[UIApplication sharedApplication] openURL:myURL_APP_A];  
                    //                        return YES;
                    ////                        if ([[UIApplication sharedApplication] canOpenURL:myURL_APP_A]) {  
                    ////                            NSLog(@"canOpenURL");  
                    ////                            [[UIApplication sharedApplication] openURL:myURL_APP_A];  
                    ////                        }else{
                    ////                            return NO;
                    ////                        }
                    //                    }
                    //                    @catch(NSException* exception){
                    //                        NSLog(@"Exception: %@", exception);
                    //                    }
                }
            }
        }
    }
    return YES; 
}

@end
