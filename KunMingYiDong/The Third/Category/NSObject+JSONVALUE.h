//
//  NSObject+JSONVALUE.h
//  GSRCUMobileBank
//
//  Created by YongQiang Wei on 2020/7/21.
//  Copyright © 2020 YongQiang Wei. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (JSONVALUE)

- (NSString *)JSONRepresentation;

- (id)JSONValue;

@end

NS_ASSUME_NONNULL_END
