//
//  AttachViewController.h
//  IPhone
//
//  Created by roy on 12-2-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AttachViewController : UIViewController<UIWebViewDelegate>

@property(nonatomic,retain) UIWebView *attachWebView;
@property(nonatomic,retain) NSString  *loeadUrl;
@property(nonatomic,retain) UIActivityIndicatorView *activityIndicator;
@end

