//
//  BaseXibView.h
//  TestXib
//
//  Created by mc on 2019/5/12.
//  Copyright © 2019年 lxf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface BaseXibView : UIView

/**
 * 子类也必须链接到xib上的根view，否则运行后不显示
 */
@property (nonatomic, weak) IBOutlet UIView *baseView;

@end

