//
//  HJGContentModel.m
//  fix
//
//  Created by Developer on 2018/3/19.
//  Copyright © 2018年 Developer. All rights reserved.
//

#import "HJGContentModel.h"

@implementation HJGContentModel
+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{@"ID" : @"id"
             };
}

+ (NSDictionary *)mj_objectClassInArray{
    return @{
             @"banners" : @"HJGContentItemModel"
             };
}
@end
