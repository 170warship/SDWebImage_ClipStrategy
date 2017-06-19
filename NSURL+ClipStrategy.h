//
//  NSURL+NSURL_Radius.h
//  爱豆
//
//  Created by idol_ios on 2017/6/17.
//  Copyright © 2017年 idol_ios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDImageCacheClipStrategy.h"


@interface NSURL (ClipStrategy)
@property (nonatomic, strong) SDImageCacheClipStrategy* clipStrategy;

+ (nullable instancetype)URLWithString:( NSString * _Nullable)URLString width:(CGFloat)width height:(CGFloat)height cornerRadius:(CGFloat)cornerRadius;
@end
