//
//  WifiUtil.m
//  AttendanceAssistant
//
//  Created by Sure on 2018/1/12.
//  Copyright © 2018年 Sure. All rights reserved.
//

#import "WifiUtil.h"
#import <SystemConfiguration/CaptiveNetwork.h>
#import <NetworkExtension/NetworkExtension.h>

@implementation WifiUtil

+ (NSDictionary *)SSIDInfo
{
    NSArray *ifs = (__bridge_transfer NSArray *)CNCopySupportedInterfaces();
    NSDictionary *info = nil;
    for (NSString *ifnam in ifs) {
        info = (__bridge_transfer NSDictionary *)CNCopyCurrentNetworkInfo((__bridge CFStringRef)ifnam);
        if (info && [info count]) {
            break;
        }
    }
    return info;
}


//可以直接根据
+ (BOOL)isConnectedWifi
{
    NSString *ssid = [[self SSIDInfo] objectForKey:@"SSID"];
    return ssid.length > 0;
}

@end
