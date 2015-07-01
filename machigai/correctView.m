//
//  correctView.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/15.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "correctView.h"
#import "AppDelegate.h"
#import "endView.h"
#import "Singleton.h"

@implementation correctView
{
    NSInteger num_correct;
  }
//@synthesize number_p;
- (void)correctProblem{
    c_count++;
}


-(void)viewDidLoad{
 //   static NSInteger c_problem;
//    c_problem += number_p;
//   static NSInteger c_correct; //
 //  c_correct++;
    //    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    //appDelegate.num_p++;
  // if(appDelegate.num_p == 1) c_correct = 0;
   // static NSInteger c_correct; //
   // c_correct++;
  //  num_correct = c_correct;
 //   NSLog(@"Current correct is %ld",(long)c_correct);
 //   NSLog(@"%ld",(long)c_problem);
    
    
    [super viewDidLoad];
//--------
   SystemSoundID sound1_;
   // NSString *path = [[NSBundle mainBundle] pathForResource:@"sound1" ofType:@"AIF"];
    //NSURL *url = [NSURL fileURLWithPath:path];
   // NSURL *url = [[NSBundle mainBundle]URLForResource:@"sound1" withExtension:@"AIF"];
  //  self.sound = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:NULL];
    //[self.sound play];
   
  //  AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(url), &sound1_);
    
   AudioServicesPlaySystemSound(sound1_);
    
//---------
    //viewが呼び込まれた後
    //デリゲートインスタンスがcountProblemを実装しているか確認する。
   // if([self.delegate respondsToSelector:@selector(countProblem)]);
   // [self.delegate countProblem:self.anycount];
    //c_count++;
  // NSLog(@"%ld",(long)c_count);
    /*
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.num_p++;
    NSLog(@"%ld",(long)appDelegate.num_p);
     */
    
    //シングルトンクラスを呼び出して出題した問題数をカウントしている。
    Singleton *single = [Singleton sharedManager];
    single.managedParam++;  //[Singleton sharedManager].managedParam++; と同等　　
    single.correctParam++;
    NSLog(@"Problem counts is %ld",(long)single.managedParam);
    NSLog(@"Collect counts is %ld",(long)single.correctParam);
}




- (IBAction)returnView:(id)sender {
    Singleton *single = [Singleton sharedManager];
    //AudioServicesPlaySystemSound(sound1);
/*
    AppDelegate *appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.num_p++;
    
    if (appDelegate.num_p > 4) {
        appDelegate.num_p = 1;
      
     }
 */
 
  //  NSLog(@"Total problem number is %ld",(long)appDelegate.num_p);
    //if(appDelegate.num_p % 4 == 0) [self performSegueWithIdentifier:@"endPush" sender:self];
    if(single.managedParam % 4 == 0) [self performSegueWithIdentifier:@"endPush" sender:self];
    else [self performSegueWithIdentifier:@"returnPush" sender:self];
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier]isEqualToString:@"endPush"]){
    //static NSInteger lol;
   // lol++;
        
    //    NSLog(@"Correct number is %ld",(long)num_correct);
    endView *end = [segue destinationViewController];
    end.correct_num = num_correct;
    }
}


@end
