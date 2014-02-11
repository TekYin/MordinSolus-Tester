//
//  TYOnlineImageViewController.m
//  MordinSolusTester
//
//  Created by Tek Yin Kwee on 2/5/14.
//  Copyright (c) 2014 laac. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "TYOnlineImageViewController.h"
#import "TYOnlineImageView.h"

@interface TYOnlineImageViewController ()

@end

@implementation TYOnlineImageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doLoadImages:(id)sender {
    for (int i = 1; i <= 5; i++) {
        TYOnlineImageView *view = (TYOnlineImageView *) [self.view viewWithTag:i];
        view.isResizeToFit = YES;
        view.hAlign = H_ALIGN_MIDDLE;
        view.vAlign = V_ALIGN_MIDDLE;
//        view.contentMode = UIViewContentModeScaleAspectFit;
        view.layer.shadowColor = [[UIColor blackColor] CGColor];
        view.layer.shadowOffset = CGSizeMake(4, 4);
        view.layer.shadowRadius = 5;
        view.layer.shadowOpacity = 1;

        [view loadImageFromUrl:@"http://theerrantbachelor.files.wordpress.com/2013/02/anna-kendrick-anna-kendrick-10124234-683-983.jpg"];
    }
}
@end
