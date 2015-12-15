//
//  MainViewController.h
//  IPhone
//
//  Created by roy on 12-2-10.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"
#import "AttachViewController.h"

@interface MainViewController : UIViewController

@property(nonatomic,retain) RootViewController *rootViewController;

@property(nonatomic,retain) AttachViewController *attachViewController;

@property(nonatomic,retain) UIButton *backBtn;

-(void)loadSubView:(NSString*)subUrl;

-(void)backView;
@end
