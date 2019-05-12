//
//  XibView.m
//  TestXib
//
//  Created by mc on 2019/5/6.
//  Copyright © 2019年 lxf. All rights reserved.
//

#import "XibView.h"

@implementation XibView

//- (instancetype)initWithCoder:(NSCoder *)coder
//{
//    self = [super initWithCoder:coder];
//    if (self) {
//        self.autoresizingMask =  UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//        [[NSBundle mainBundle] loadNibNamed:@"XibView" owner:self options:nil];
//        self.baseView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//        [self addSubview:self.baseView];
//    }
//    return self;
//}

- (void)awakeFromNib{
    [super awakeFromNib];
    
    [[NSBundle mainBundle] loadNibNamed:@"XibView" owner:self options:nil];
    [self addSubview:self.baseView];

    [self.baseView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.bottom.top.left.right.offset(0);
    }];
}

@end
