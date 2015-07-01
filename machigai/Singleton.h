//
//  Singleton.h
//  machigai
//
//  Created by  Yusuke Igarashi on 2015/06/12.
//  Copyright (c) 2015年 五十嵐友輔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject {
@private
    NSInteger managedParam; //このシングルトンが管理する値
    //add
    NSInteger correctParam;
    NSInteger incorrectParam;
    NSInteger checkPram;
    NSMutableArray *arr;
}

+ (id)sharedManager; //インスタンス作成のためのクラスメソッド
@property NSInteger managedParam;
//add
@property NSInteger correctParam;
@property NSInteger incorrectParam;
@property NSInteger checkParam;
@property NSMutableArray *arr;
@end
