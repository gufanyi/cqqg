//
//  RootViewController.h
//  IPhone
//
//  Created by roy on 12-2-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface RootViewController : UIViewController<UIWebViewDelegate>

@property(nonatomic,retain) UIWebView *webView;

@property(nonatomic,retain) UIActivityIndicatorView *activityIndicator;

@property(nonatomic,retain) UIImageView *splashImageView;

+(NSString *) getConnectUrl;
@end
