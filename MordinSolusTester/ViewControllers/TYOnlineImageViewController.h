//
//  TYOnlineImageViewController.h
//  MordinSolusTester
//
//  Created by Tek Yin Kwee on 2/5/14.
//  Copyright (c) 2014 laac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYOnlineImageViewController : UIViewController
- (IBAction)doLoadImages:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *uBtnFitFrame;
@property (weak, nonatomic) IBOutlet UISegmentedControl *uHAlign;
@property (weak, nonatomic) IBOutlet UISegmentedControl *uVAlign;
- (IBAction)doChangeFitFrame:(id)sender;
@end
