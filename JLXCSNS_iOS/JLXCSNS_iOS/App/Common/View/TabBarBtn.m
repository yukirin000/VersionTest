//
//  TabBarBtn.m
//  TabBtn
//
//  Created by bhczmacmini on 14-11-26.
//  Copyright (c) 2014年 bhczmacmini. All rights reserved.
//

#import "TabBarBtn.h"

@implementation TabBarBtn
{
    //徽标图片(其实是个Btn)
    UIButton * _badgeImage;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //创建徽标图片
        _badgeImage = [UIButton buttonWithType:UIButtonTypeCustom];
        [_badgeImage setBackgroundImage:[UIImage imageNamed:@"ch_tv_count_bg"] forState:UIControlStateNormal];
        _badgeImage.titleLabel.font = [UIFont systemFontOfSize:12];
        _badgeImage.frame = CGRectMake(CGRectGetWidth(frame)-25, 8, 15, 15);
        [self addSubview:_badgeImage];
        _badgeImage.hidden = YES;
        
        self.titeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, CGRectGetWidth(frame), CGRectGetHeight(frame)-30)];
        self.titeLabel.font = [UIFont systemFontOfSize:12];
        self.titeLabel.textColor = [UIColor darkGrayColor];
        self.titeLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.titeLabel];
    }
    return self;
}

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    if (selected) {
        self.titeLabel.textColor = [UIColor blueColor];
    }else{
        self.titeLabel.textColor = [UIColor darkGrayColor];
    }

}

- (void)refreshBadgeWith:(int)num
{
    dispatch_async(dispatch_get_main_queue(), ^{
        if (num == 0) {
            
            _badgeImage.hidden = YES;
            return ;
        }
        
        NSString * title = [NSString stringWithFormat:@"%d", num];
        [_badgeImage setTitle:title forState:UIControlStateNormal];
        _badgeImage.hidden = NO;
    });

}

//弃用
- (void)cancelBadge
{
    dispatch_async(dispatch_get_main_queue(), ^{
        _badgeImage.hidden = YES;
    });
}

@end
