//
//  NextViewAnotherController.m
//  machigai
//
//  Created by 五十嵐友輔 on 2015/05/08.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import "NextViewAnotherController.h"
#import "correctView.h"
#import "Singleton.h"

@implementation NextViewAnotherController
{
  //  NSInteger cc;
}
@synthesize  myState = _myState;
@synthesize image2;
@synthesize labelA;
@synthesize labelB;
@synthesize labelC;
@synthesize judge;
//@synthesize number_p;

- (void)viewDidLoad {
    NSInteger state;
    //state = *(_myState);
    state = _myState;
          [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    static NSInteger number;
    number++;
  //  cc++;
    Singleton *single = [Singleton sharedManager];
    
switch (single.checkParam) {
    case 1:
        labelA.text = @"写真右に居たおじさんが居ない。"; //
        labelB.text = @"手前に居た人が1人少ない。";
        labelC.text = @"ボードが1つ少ない。";
        image2.image = [UIImage imageNamed:@"k_01_2.jpg"];
        break;
    case 2:
        labelA.text = @"写真右に居た鴨がいない。";
        labelB.text = @"写真右奥に鴨が1羽増えている。";
        labelC.text = @"写真奥にあったパイロンがない。";//
        image2.image = [UIImage imageNamed:@"k_02_2.JPG"];
        break;
    case 3:
        labelA.text = @"写真上の雲がない。";
        labelB.text = @"写真中央のあった花がない。"; //
        labelC.text = @"写真左下にあった花がない。";
        image2.image = [UIImage imageNamed:@"k_03_2.JPG"];
        break;
    case 4:
        labelA.text = @"写真右下にあったボートがない。"; //
        labelB.text = @"写真左のあったボートが1つ少ない。";
        labelC.text = @"対岸にあった大きな木がない。";
        image2.image = [UIImage imageNamed:@"k_04_2.JPG"];
        break;
        
    default:
        break;
}
     NSLog(@"Problem is %ld",(long)single.checkParam);
    NSInteger size;
    size = [single.arr count];
      if(size > 1){
          for (NSInteger i = 0; i < [single.arr count]; i++) {
              // 配列から要素を取得する
              NSString *str = [single.arr objectAtIndex:i];
            if(str.integerValue == single.checkParam)
                [single.arr removeObject:str];
          }
     //   [single.arr removeObjectAtIndex:single.checkParam];
     size = [single.arr count];
     }
  
}

- (IBAction)buttonA:(id)sender {
   // NSInteger state2;
   // state2 = _myState;
    Singleton *single = [Singleton sharedManager];
    switch (single.checkParam) { //state2 -> single.checkParam
        case 1:
            judge = 1;
            break;
        case 2:
            judge = 0;
            break;
        case 3:
            judge = 0;
            break;
        case 4:
            judge = 1;
            break;
        default:
            break;
    }
    if(judge)[self performSegueWithIdentifier:@"correctBtn" sender:self];
   else if(!judge) [self performSegueWithIdentifier:@"incorrectBtn" sender:self];
}

- (IBAction)buttonB:(id)sender {
  //  NSInteger state2;
  //  state2 = _myState;
     Singleton *single = [Singleton sharedManager];
    switch (single.checkParam) {
        case 1:
            judge = 0;
            break;
        case 2:
            judge = 0;
            break;
        case 3:
            judge = 1;
            break;
        case 4:
            judge = 0;
            break;
        default:
            break;
    }
    if(judge) [self performSegueWithIdentifier:@"correctBtn" sender:self];
    else if(!judge) [self performSegueWithIdentifier:@"incorrectBtn" sender:self];
}

- (IBAction)buttonC:(id)sender {
    
  //  NSInteger state2;
  //  state2 = _myState;
     Singleton *single = [Singleton sharedManager];
    switch (single.checkParam) {
        case 1:
            judge = 0;
            break;
        case 2:
            judge = 1;
            break;
        case 3:
            judge = 0;
            break;
        case 4:
            judge = 0;
            break;
        default:
            break;
    }
    
   if(judge)  [self performSegueWithIdentifier:@"correctBtn" sender:self];
    else if(!judge)[self performSegueWithIdentifier:@"incorrectBtn" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"correctBtn"]) {
        correctView *correctView = [segue destinationViewController];
       // correctView.number_p = cc;
    }
}
 
@end
