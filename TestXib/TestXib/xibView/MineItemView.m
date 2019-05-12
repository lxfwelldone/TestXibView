//
//  MineItemView.m
//  TestXib
//
//  Created by mc on 2019/5/12.
//  Copyright © 2019年 lxf. All rights reserved.
//

#import "MineItemView.h"

@interface MineItemView()

@property (weak, nonatomic) IBOutlet UIView *baseView;

@property (weak, nonatomic) IBOutlet UIImageView *imgViewIcon;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

//可以在xib上设置的属性
@property(nonatomic) IBInspectable NSString *title;
@property(nonatomic) IBInspectable UIImage *image;
@property(nonatomic) IBInspectable UIColor *bgColor;

@end

@implementation MineItemView

@dynamic baseView;

- (void)awakeFromNib{
    [super awakeFromNib];
    
    if (_image) {
        _imgViewIcon.image = _image;
    }
    
    if (_title) {
        _lblTitle.text = _title;
    }
    
    if (_bgColor) {
        self.backgroundColor = _bgColor;
    }
}

@end
