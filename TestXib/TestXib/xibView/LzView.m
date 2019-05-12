//
//  LzView.m
//  TestXib
//
//  Created by mc on 2019/5/12.
//  Copyright © 2019年 lxf. All rights reserved.
//

#import "LzView.h"

@interface LzView()
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblAddress;

@property (strong, nonatomic) UIView *contentView;

@end


@implementation LzView

- (void)awakeFromNib{
    [super awakeFromNib];
    
    _contentView = [[[NSBundle mainBundle] loadNibNamed:@"LzView" owner:self options:nil] lastObject];
    [self addSubview:_contentView];
    
    
    _lblName.text = @"你确定叫做";
}





@end
