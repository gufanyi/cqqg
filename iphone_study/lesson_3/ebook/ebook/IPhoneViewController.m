//
//  IPhoneViewController.m
//  ebook
//
//  Created by r/work/ebook/ebook/ebook/IPhoneViewController.moy on 12-12-28.
//  Copyrigh/work/ebook/ebook/ebook/IPhoneViewController.ht (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "IPhoneViewController.h"
#define kScreenWidth  320.0
#define kScreenHeight  460.0
#define kMaxZoom 3.0

@implementation IPhoneViewController
@synthesize imageview,Page;
@synthesize  touchY = _touchY;
@synthesize  touchX = _touchX;
@synthesize offsetY = _offsetY;
@synthesize scrollView = _scrollView;
@synthesize currentScale = _currentScale;
@synthesize isTwiceTaping = _isTwiceTaping;
@synthesize isDoubleTapingForZoom = _isDoubleTapingForZoom;


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
  
    //imageview.image =[UIImage imageNamed:@"kitten.jpg"]; 
    //imageview.userInteractionEnabled = YES;
    //UITapGestureRecognizer *singleTap =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onClickImage)];
    //[imageview addGestureRecognizer:singleTap];
        [super viewDidLoad];
    imgArray = [[NSMutableArray alloc] initWithObjects:
                [UIImage imageNamed:@"01-01-1.jpg"],
                [UIImage imageNamed:@"01-01-2.jpg"],
                [UIImage imageNamed:@"01-01-3.jpg"],
                [UIImage imageNamed:@"01-01-4.jpg"],
                [UIImage imageNamed:@"01-01-5.jpg"],
                [UIImage imageNamed:@"01-01-6.jpg"],nil];
    self.navigationItem.title = [NSString stringWithFormat:@"1/%d",[imgArray count]];
    self.imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0,400, 600)];
    //单指双击  
    UITapGestureRecognizer *singleFingerTwo = [[UITapGestureRecognizer alloc] initWithTarget:self  
                                                                                      action:@selector(onClickImage:)];  
    singleFingerTwo.numberOfTouchesRequired = 1;  
    singleFingerTwo.numberOfTapsRequired = 2;  
    //singleFingerTwo.delegate = self;  
    [imageview addGestureRecognizer:singleFingerTwo];
    //tapImgViewTwice.numberOfTouchesRequired = 1;
    //[self addGestureRecognizer:tapImgViewTwice];
    //[imageview addGestureRecognizer:tapImgViewTwice];
    //[imageview requireGestureRecognizerToFail:tapImgViewTwice];
    [self.imageview setImage:[imgArray objectAtIndex:Page]];
    [self.view addSubview:imageview];
    

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setImageview:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [imageview release];
    [super dealloc];
}
-(void)onClickImage{
    // here, do whatever you wantto do
    imageview.image =[UIImage imageNamed:@"kitten2.jpg"]; 

    NSLog(@"imageview is clicked!");
}
/*=======================================================
 //触摸事件：点击弹出导航条，左右划动切换图片
 ========================================================*/
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint point = [touch locationInView:self.view];
    FirstPoint = point;
    touchMove = NO;
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    SecondPoint = point;
    touchMove = YES;
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if(touchMove == NO)
    {
    }else 
    {
        if (FirstPoint.x > SecondPoint.x)
        {
            if(Page < [imgArray count] - 1)
            {
                Page++;
                CGContextRef context = UIGraphicsGetCurrentContext();
                [UIView beginAnimations:nil context:context];
                [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                [imageview setAlpha:0.8];
                [UIView setAnimationDuration:0.1];
                [UIView commitAnimations];
                [self performSelector:@selector(ChangeImage) withObject:nil afterDelay:0.2];
            }else if (Page == [imgArray count] -1) {
                CGContextRef context = UIGraphicsGetCurrentContext();
                [UIView beginAnimations:nil context:context];
                [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                [imageview setAlpha:0.8];
                [UIView setAnimationDuration:0.1];
                [UIView commitAnimations];
                Page = 0;
                [self performSelector:@selector(ChangeImage) withObject:nil afterDelay:0.2];
            }
        }else {
            if(Page >= 1)
            {
                Page--;
                CGContextRef context = UIGraphicsGetCurrentContext();
                [UIView beginAnimations:nil context:context];
                [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
                [imageview setAlpha:0.8];
                [UIView setAnimationDuration:0.1];
                [UIView commitAnimations];
                [self performSelector:@selector(ChangeImage) withObject:nil afterDelay:0.2];
            }
        }    
    }    
}


/*=======================================================
 更新图片显示
 ========================================================*/
-(void)ChangeImage{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    [UIView setAnimationDuration:2]; //动画长度，单位为秒
    [self.view setAlpha:2];
    [imageview setAlpha:1];
    [imageview setImage:[imgArray objectAtIndex:Page]];
    //[myimageview setAnimationRepeatCount:4]; //设置重复次数
    [UIView commitAnimations];
    self.navigationItem.title = [NSString stringWithFormat:@"%d/%d",Page+1,[imgArray count]];
}

-(IBAction)tapImgViewHandleTwice:(UIGestureRecognizer *)sender{
    _touchX = [sender locationInView:sender.view].x;
    _touchY = [sender locationInView:sender.view].y;
    if(_isTwiceTaping){
        return;
    }
    _isTwiceTaping = YES;
    
    NSLog(@"tap twice");
    
    if(_currentScale > 1.0){
        _currentScale = 1.0;
        [_scrollView setZoomScale:1.0 animated:YES];
    }else{
        _isDoubleTapingForZoom = YES;
        _currentScale = kMaxZoom;
        [_scrollView setZoomScale:kMaxZoom animated:YES];
    }
    _isDoubleTapingForZoom = NO;
    //延时做标记判断，使用户点击3次时的单击效果不生效。
    [self performSelector:@selector(twiceTaping) withObject:nil afterDelay:0.65];
    NSLog(@"sdfdf");
}


@end
