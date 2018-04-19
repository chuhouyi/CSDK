//
//  PhotoTool.m
//  CSDK
//
//  Created by TC on 2018/4/18.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "PhotoTool.h"
#import <Photos/Photos.h>


@implementation PhotoTool

/**
 获取所有图片
 */
-(void)getAllPhotosCompletion:(void(^)(NSArray *))completion{
    NSMutableArray * photoArray = [NSMutableArray array];
    PHFetchOptions * options = [[PHFetchOptions alloc]init];
    //只获取图片
    options.predicate = [NSPredicate predicateWithFormat:@"mediaType == %d",PHAssetMediaTypeImage];
    //按照创建时间来排列
    options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:YES]];
    
    PHFetchResult * result = [PHAsset fetchAssetsWithOptions:options];
    for (PHAsset * asset in result) {
        
        
        
    }
    
    
    completion(photoArray);
    
}






@end
