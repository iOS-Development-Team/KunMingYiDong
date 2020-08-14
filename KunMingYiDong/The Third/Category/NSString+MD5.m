//
//  NSString+MD5.m
//  GSRCUMobileBank
//
//  Created by YongQiang Wei on 2020/7/20.
//  Copyright © 2020 YongQiang Wei. All rights reserved.
//

#import "NSString+MD5.h"

#import <CommonCrypto/CommonDigest.h>
@implementation NSString (MD5)

#pragma mark - MD5加密 32位 大写

- (NSString *)MD5ForUpper32Bate{
    //要进行UTF8的转码
    const char *str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), result);
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02X", result[i]];
    }
    return digest;
}

#pragma mark - MD5加密 32位 小写
-(NSString *)MD5ForLower32Bate{
    const char *str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), result);
    NSMutableString *digest = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for (NSInteger i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [digest appendFormat:@"%02x", result[i]];
    }
    return digest;
}

#pragma mark - MD5加密 16位 小写

- (NSString *)MD5ForLower16Bate {
    NSString *md5Str = [self MD5ForLower32Bate];
    
    NSString *string = @"";
    if (md5Str.length == 32) {
        string = [md5Str substringWithRange:NSMakeRange(8, 16)];;
    }
    
    return string;
}

#pragma mark - MD5加密 16位 大写

- (NSString *)MD5ForUpper16Bate {
    NSString *md5Str = [self MD5ForUpper32Bate];
    
    NSString *string = @"";
    if (md5Str.length == 32) {
        string=[md5Str substringWithRange:NSMakeRange(8, 16)];
    }
    
    return string;
}

@end
