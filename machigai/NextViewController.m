//
//  NextViewController.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/08.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "NextViewController.h"
#import "Singleton.h"

@implementation NextViewController
//@synthesize myState = _myState;
@synthesize label1;
@synthesize image1;
@synthesize state;
//@synthesize count;

- (void)viewDidLoad {
   // static NSInteger cc;
    //cc++;
    //NSLog(@"%ld",(long)cc);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    Singleton *single = [Singleton sharedManager];
    
    //NSMutableArray *array = [NSMutableArray array];
   // static dispatch_once_t token;
   // dispatch_once(&token, ^{
    //配列を作る
  //      NSMutableArray *array = [NSMutableArray array];
   // [array addObject:[NSNumber numberWithInteger:1]];
   // [array addObject:[NSNumber numberWithInteger:2]];
    //[array addObject:[NSNumber numberWithInteger:3]];
    //[array addObject:[NSNumber numberWithInteger:4]];
 
  //  });
    
    
    //乱数の発生
    //static dispatch_once_t token;
    //dispatch_once(&token, ^{
    //問題数が2問からこの処理は行われない。
    if(single.managedParam < 1){
    NSMutableArray *array = [NSMutableArray array];
    single.arr = array;
    [single.arr addObject:[NSNumber numberWithInteger:1]];
    [single.arr addObject:[NSNumber numberWithInteger:2]];
    [single.arr addObject:[NSNumber numberWithInteger:3]];
    [single.arr addObject:[NSNumber numberWithInteger:4]];
    }
    //});
    
    //配列の長さを取得
    NSInteger size = [single.arr count];
   // NSInteger size2 = [single.arr count];
    NSLog(@"Array size is %ld",(long)size);
   // NSLog(@"Array size2 is %ld",(long)size2);
    //srand((unsigned)time(NULL));
    state = arc4random()%size; //4 -> size　0to3
    //state = 1+arc4random_uniform(4);
    
    
    NSLog(@"State is %ld",(long)state);
    NSString *str = [single.arr objectAtIndex:state];
   // NSInteger form = str.integerValue;
    single.checkParam = str.integerValue;
    NSLog(@"single.checkParm is %ld",(long)single.checkParam);
    
    //乱数に従い問題をランダムに出題。state -> form
    switch (single.checkParam) {
        case 1:
            label1.text = @"問題1";
            image1.image = [UIImage imageNamed:@"k_01_1.jpg"];
            break;
        case 2:
            label1.text = @"問題2";
            image1.image = [UIImage imageNamed:@"k_02_1.JPG"];
            break;
        case 3:
            label1.text = @"問題3";
            image1.image = [UIImage imageNamed:@"k_03_1.JPG"];
            break;
        case 4:
            label1.text = @"問題4";
            image1.image = [UIImage imageNamed:@"k_04_1.JPG"];
            break;
            
        default:
            break;
    }
    
   // NSLog(@"Problem is %ld",(long)single.checkParam);
  //  if(size > 1){
  // [single.arr removeObjectAtIndex:single.checkParam];
  //  size = [single.arr count];
   // }
 
  NSLog(@"Array size is %ld",(long)size);
    for (NSInteger i = 0; i < [single.arr count]; i++) {
        // 配列から要素を取得する
        NSString *str = [single.arr objectAtIndex:i];
        NSLog(@"%@", str);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushView:(id)sender {
    //count++;
    //NSLog(@"%ld",(long)count);

    [self performSegueWithIdentifier:@"pushBtn" sender:self];
}
- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NextViewAnotherController *viewCon = segue.destinationViewController;
   // viewCon.myState = &(state);
    viewCon.myState = state;
}
@end
