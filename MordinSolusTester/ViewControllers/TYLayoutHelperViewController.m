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
    self.viewCollection = [NSMutableArray array];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doAddMember:(id)sender {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(arc4random() % 200, arc4random() % 200, 20 + arc4random() % 50, 20 + arc4random() % 50);
    [btn setTitle:[NSString stringWithFormat:@"%i", self.viewCollection.count + 1] forState:UIControlStateNormal];
    [self.uContainer addSubview:btn];
    [self.viewCollection addObject:btn];
}

- (IBAction)doRandomizeMember:(id)sender {

}

- (IBAction)doSortHorizontal:(id)sender {
    TYLayoutHelper *lh = [[TYLayoutHelper alloc] initWithContainer:self.uContainer padding:CGBorderMake(0, 0, 0, 0) orientation:TYLayoutOrientationHorizontal];
    for (UIView *view in self.viewCollection) {
        NSLog(@"view: %@", view);
        [lh addMemberWithView:view];
    }
    [lh doReLayoutWithAnimation:YES duration:1];
    self.uContainer.contentSize = [lh getContentBounds];
}

- (IBAction)doSortVertical:(id)sender {
    TYLayoutHelper *lh = [[TYLayoutHelper alloc] initWithContainer:self.uContainer orientation:TYLayoutOrientationVertical];
    for (UIView *view in self.viewCollection) {
        [lh addMemberWithView:view align:TYLayoutAlignCenter margin:CGBorderMake(2, 2, 2, 2)];
    }
    [lh doReLayoutWithAnimation:YES duration:1];
    self.uContainer.contentSize = [lh getContentBounds];
}
@end
