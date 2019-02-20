//
//  WifiUtil.h
//  AttendanceAssistant
//
//  Created by Sure on 2018/1/12.
//  Copyright © 2018年 Sure. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WifiUtil : NSObject

+ (NSDictionary *)SSIDInfo;

+ (BOOL)isConnectedWifi;

@end
