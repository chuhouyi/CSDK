//
//  PhotoSelectCollectionViewCell.m
//  CSDK
//
//  Created by TC on 2018/4/17.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "PhotoSelectCollectionViewCell.h"

@implementation PhotoSelectCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
       
        
        self.imageView = [[UIImageView alloc]init];
        [self.imageView addFillInView:self.contentView];
        
        self.backView = [[UIView alloc]init];
        [self.backView addFillInView:self.contentView];
        self.backView.backgroundColor = RGBA(255, 255, 255, 0.9);
        self.backView.hidden = YES;
        
        
    }
    
    return self;
}



- (void)layoutSubviews{
    [super layoutSubviews];
    
   
    
    
    
    
    
}

@end
