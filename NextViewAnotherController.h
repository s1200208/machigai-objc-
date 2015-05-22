//
//  NextViewAnotherController.h
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/08.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewAnotherController : UIViewController
{
    NSInteger* _myState;
}
@property (nonatomic) NSInteger* myState;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UILabel *labelA;
@property (weak, nonatomic) IBOutlet UILabel *labelB;
@property (weak, nonatomic) IBOutlet UILabel *labelC;
@property (nonatomic) NSInteger judge;
- (IBAction)buttonA:(id)sender;
- (IBAction)buttonB:(id)sender;
- (IBAction)buttonC:(id)sender;





@end
