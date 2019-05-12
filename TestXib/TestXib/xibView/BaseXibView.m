//
//  BaseXibView.m
//  TestXib
//
//  Created by mc on 2019/5/12.
//  Copyright © 2019年 lxf. All rights reserved.
//

#import "BaseXibView.h"

@implementation BaseXibView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSString *nibName = NSStringFromClass([self class]);
    [[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil];
    [self addSubview:self.baseView];
    
//    在xib文件上或sb文件上的约束高度大于 viewxib默认高度时 会产生空白。
//    我这里为了方便就使用了Masonry进行约束。。。
    [self.baseView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.bottom.top.left.right.offset(0);
    }];
//    如果有更好的解决方式。请写下来。谢谢。
}
@end
