//
//  LxfView.m
//  TestXib
//
//  Created by mc on 2019/5/12.
//  Copyright © 2019年 lxf. All rights reserved.
//

#import "LxfView.h"

@interface LxfView()

@property (nonatomic, strong) UILabel *lblName;
@property (nonatomic, strong) UILabel *lblAddress;

@end

@implementation LxfView


- (instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initViews];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self layout];
    }
    return self;
}

- (void)awakeFromNib{
    [super awakeFromNib];
    [self layout];
}

- (void)layout{
    _lblAddress.frame = CGRectMake(0, self.bounds.size.height/2, self.bounds.size.width, self.bounds.size.height/2);
    _lblName.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height/2);
    
}

- (void)initViews{
    [self addSubview:self.lblAddress];
    [self addSubview:self.lblName];
    self.backgroundColor = UIColor.yellowColor;
}


- (UILabel *)lblName{
    if (!_lblName) {
        _lblName = [[UILabel alloc] init];
        _lblName.text = @"李狗蛋";
    }
    return _lblName;
}

- (UILabel *)lblAddress{
    if (!_lblAddress) {
        _lblAddress = [[UILabel alloc] init];
        _lblAddress.text = @"上海市";
    }
    return _lblAddress;
}



@end
