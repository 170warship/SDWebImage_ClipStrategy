//
//  NSURL+NSURL_Radius.m
//  爱豆
//
//  Created by idol_ios on 2017/6/17.
//  Copyright © 2017年 idol_ios. All rights reserved.
//

#import "NSURL+ClipStrategy.h"
#import <objc/runtime.h>




@implementation NSURL (ClipStrategy)

static const void* sdWebImage_NSURL_ClipStrategy_NameKey = &sdWebImage_NSURL_ClipStrategy_NameKey;

+ (nullable instancetype)URLWithString:( NSString * _Nullable)URLString width:(CGFloat)width height:(CGFloat)height cornerRadius:(CGFloat)cornerRadius{
    
    NSURL* url = [self URLWithString:URLString];
    SDImageCacheClipStrategy* clipStragegy = [[SDImageCacheClipStrategy alloc] init];
    clipStragegy.cornerRadius = cornerRadius;
    clipStragegy.width = width;
    clipStragegy.height = height;
    url.clipStrategy = clipStragegy;
    return url;
    
}

-(SDImageCacheClipStrategy*)clipStrategy{
    return objc_getAssociatedObject(self, sdWebImage_NSURL_ClipStrategy_NameKey);
}

-(void)setClipStrategy:(SDImageCacheClipStrategy*)clipStrategy{
    objc_setAssociatedObject(self, sdWebImage_NSURL_ClipStrategy_NameKey, clipStrategy, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


@end
