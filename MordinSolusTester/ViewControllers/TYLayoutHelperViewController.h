//
//  TYLayoutHelperViewController.h
//  MordinSolusTester
//
//  Created by Tek Yin Kwee on 2/4/14.
//  Copyright (c) 2014 laac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYLayoutHelperViewController : UIViewController

@property(weak, nonatomic) IBOutlet UIScrollView *uContainer;

@property(nonatomic, strong) NSMutableArray *viewCollection;

- (IBAction)doAddMember:(id)sender;

- (IBAction)doRandomizeMember:(id)sender;

- (IBAction)doSortHorizontal:(id)sender;

- (IBAction)doSortVertical:(id)sender;
@end
