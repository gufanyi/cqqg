//
//  IPhoneViewController.h
//  ebook
//
//  Created by roy on 12-12-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IPhoneViewController : UIViewController{
    NSMutableArray *imgArray;
    CGPoint FirstPoint;
    CGPoint SecondPoint;
    NSInteger Page;
    BOOL touchMove;
}
@property (retain, nonatomic) IBOutlet UIImageView *imageview;
@property (retain, nonatomic)  NSMutableArray *imgArray;
@property NSInteger Page;
@property (nonatomic) UIScrollView *scrollView;
@property (nonatomic) CGFloat touchX;
@property (nonatomic) CGFloat touchY;
@property (nonatomic) CGFloat currentScale;
@property (nonatomic) CGFloat offsetY;
@property (nonatomic) BOOL isTwiceTaping;
@property (nonatomic) BOOL isDoubleTapingForZoom;

@end
