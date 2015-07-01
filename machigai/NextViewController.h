//
//  NextViewController.h
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/08.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextViewAnotherController.h"

@interface NextViewController : UIViewController
/*
{
    NSInteger* _myState;
}
@property (nonatomic) NSInteger* myState;
 */
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (nonatomic) NSInteger state;
//@property (nonatomic) NSInteger count;
- (IBAction)pushView:(id)sender;

@end
