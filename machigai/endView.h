//
//  endView.h
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/15.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface endView : UIViewController
@property NSInteger correct_num;
@property (weak, nonatomic) IBOutlet UILabel *end_label;
- (IBAction)restartBtn:(id)sender;
@end
