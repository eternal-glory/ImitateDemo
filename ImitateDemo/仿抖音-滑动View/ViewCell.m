//
//  ViewCell.m
//  Douyin
//
//  Created by   on 2019/5/10.
//  Copyright © 2019 literature. All rights reserved.
//

#import "ViewCell.h"

@implementation ViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.contentView.backgroundColor = [self randomColor];
        [self.contentView addSubview:self.label];
    }
    return self;
}


- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, (UIScreen.mainScreen.bounds.size.height - 20) / 2, UIScreen.mainScreen.bounds.size.width, 20)];
        _label.textAlignment = NSTextAlignmentCenter;
    }
    return _label;
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (UIColor *)randomColor {
    CGFloat hue = (arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}

@end
