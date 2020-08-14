//
//  NSString+MD5.h
//  GSRCUMobileBank
//
//  Created by YongQiang Wei on 2020/7/20.
//  Copyright © 2020 YongQiang Wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
NS_ASSUME_NONNULL_BEGIN

@interface NSString (MD5)
/**
 * MD5 32位 大写
 */
- (NSString *) MD5ForUpper32Bate;

/**
 * MD5 32位 小写
 */
- (NSString *) MD5ForLower32Bate;


/**
 * MD5 16位 大写
 */
- (NSString *) MD5ForUpper16Bate;

/**
 * MD5 16位 小写
 */
- (NSString *) MD5ForLower16Bate;
@end

NS_ASSUME_NONNULL_END
