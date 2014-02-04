//
//  TYLayoutHelperViewController.m
//  MordinSolusTester
//
//  Created by Tek Yin Kwee on 2/4/14.
//  Copyright (c) 2014 laac. All rights reserved.
//

#import "TYLayoutHelperViewController.h"
#import "TYLayoutHelper.h"

@interface TYLayoutHelperViewController ()

@end

@implementation TYLayoutHelperViewController

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

- (IBAction)doAddMember:(id)sender {
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(arc4random() % 200, arc4random() % 300, arc4random() % 100, arc4random() % 100)];
    btn.titleLabel.text = [NSString stringWithFormat:@"%i", self.uContainer.subviews.count + 1];
    [self.uContainer addSubview:btn];
}

- (IBAction)doRandomizeMember:(id)sender {

}

- (IBAction)doSortHorizontal:(id)sender {
    TYLayoutHelper *lh = [[TYLayoutHelper alloc] initWithParent:self.uContainer];
}

- (IBAction)doSortVertical:(id)sender {
}
@end
