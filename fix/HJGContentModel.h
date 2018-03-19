//
//  HJGContentModel.h
//  fix
//
//  Created by Developer on 2018/3/19.
//  Copyright © 2018年 Developer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HJGContentItemModel.h"

@interface HJGContentModel : NSObject
@property (nonatomic, strong) NSString *b_title;

@property (nonatomic, strong) NSString *b_content;

@property (nonatomic, strong) NSString *imgY;

@property (nonatomic, strong) NSString *imgN;

@property (nonatomic, strong) NSString *content;

@property (nonatomic, strong) NSString *c_title;

@property (nonatomic, strong) NSString *c_content;

@property (nonatomic, strong) NSArray *banners;

@end
