//
//  HJGCell.m
//  fix
//
//  Created by Developer on 2018/3/27.
//  Copyright © 2018年 Developer. All rights reserved.
//

#import "HJGCell.h"

@implementation HJGCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}


- (void)setupUI{
    
    [self textF];
    
}



- (UITextField *)textF
{
    if (!_textF) {
        UITextField * theView = [[UITextField alloc] initWithFrame:CGRectMake(10, 4, 100, 30)];
        [self.contentView addSubview:theView];
        _textF = theView;
    }
    return _textF;
}

@end
