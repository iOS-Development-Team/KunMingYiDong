//
//  NSString+JSONValue.h
//  GSRCUMobileBank
//
//  Created by YongQiang Wei on 2020/7/20.
//  Copyright © 2020 YongQiang Wei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (JSONValue)
- (NSString *)JSONRepresentation;

- (id)JSONValue;
@end

NS_ASSUME_NONNULL_END
