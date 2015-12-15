//
//  SplashViewContronller.h
//  IPhone
//
//  Created by roy on 12-2-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"

@interface SplashViewContronller : UIViewController

@property(nonatomic,retain) NSTimer *timer;
@property(nonatomic,retain) UIImageView *splashImageView;
@property(nonatomic,retain) MainViewController *mainViewController;


@end
