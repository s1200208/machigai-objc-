//
//  correctView.h
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/15.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NextViewController.h"
#import <AudioToolbox/AudioServices.h>
//#import <AVFoundation/AVFoundation.h>
//SystemSoundID sound1;
//@class correctView;

/*@protocol correctDelegate <NSObject>

@optional
//correctViewを表示した時の呼び出すメソッド
- (void)countProblem:(NSInteger *)count;
@end
*/
@interface correctView : UIViewController
{
     NSInteger c_count;
}
- (IBAction)returnView:(id)sender;
//@property (nonatomic, weak) id<correctDelegate> delegate;
//@property NSInteger number_p;
//- (id)init;
//@property AVAudioPlayer *sound;
@end
