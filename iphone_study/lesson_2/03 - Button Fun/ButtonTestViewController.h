//
//  ButtonTestViewController.h
//  Button Fun
//
//  Created by roy on 13-12-22.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonTestViewController : UIViewController{

}

@property (nonatomic, retain) IBOutlet UILabel *labeltest;
@property (nonatomic,retain) IBOutlet UIButton *buttontest;

-(IBAction)buttontestPressed:(id)sender;

@end
