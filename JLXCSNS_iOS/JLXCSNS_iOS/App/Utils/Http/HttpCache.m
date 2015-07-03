//
//  NetCache.m
//  UBaby_iOS
//
//  Created by bhczmacmini on 14-12-10.
//  Copyright (c) 2014年 bhczmacmini. All rights reserved.
//

#import "HttpCache.h"
#import "NSString+Encrypt.h"

@implementation HttpCache

+ (void)cacheHandleWith:(NSData *)data andUrl:(NSString *)url
{
    //不为空的时候写入本地缓存
    NSString * cachePath = [PATH_OF_DOCUMENT stringByAppendingFormat:@"/textCache/"];
    //不存在创建 文件夹
    if (![[NSFileManager defaultManager] fileExistsAtPath:cachePath]) {
        if (![[NSFileManager defaultManager] createDirectoryAtPath:cachePath withIntermediateDirectories:YES attributes:nil error:nil]) {
            //创建失败了 打印提示
            debugLog(@"创建失败 ！！！！");
        }
        
    }
    
    //创建文件
    cachePath = [cachePath stringByAppendingString:[url md5Encrypt]];
    debugLog(@"%@ %d", cachePath, [data writeToFile:cachePath atomically:YES]);
    ///var/mobile/Containers/Data/Application/5B2085EA-1FE9-4E46-850D-00B16A8DE8FA/DocumentstextCache/130763cdd352b6ca38a564ff008e8ca2
    ///var/mobile/Containers/Data/Application/5B2085EA-1FE9-4E46-850D-00B16A8DE8FA/Documents/textCache/130763cdd352b6ca38a564ff008e8ca2
}

+ (NSData *)getCacheWithUrl:(NSString *)url
{
    NSString * cachePath = [PATH_OF_DOCUMENT stringByAppendingFormat:@"/textCache/%@", [url md5Encrypt]];
    debugLog(@"%@", cachePath);
    NSData * data = [NSData dataWithContentsOfFile:cachePath];
    
    return data;
    
}

@end
