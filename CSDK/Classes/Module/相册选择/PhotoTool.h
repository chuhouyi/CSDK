//
//  PhotoTool.h
//  CSDK
//
//  Created by TC on 2018/4/18.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^Block)(NSString * str);
@interface PhotoTool : NSObject
//block属性
@property(nonatomic,copy) void(^SelectBlock)(NSString * str);

/**
 获取所有图片
 */
-(void)getAllPhotosCompletion:(void(^)(NSArray *))completion;

-(void)getAllAblums;







/*
 PHAsset:
 属性：mediaType :资源类型,图片或者音频或视频
 mediaSubtypes:图片又包含全景图(Panorama)、HDR图片、屏幕截图、livePhoto .
 Creation date  创建日期
 Location       位置
 Favorite 布尔值，用户是否标记资源为"收藏"，我们平时浏览照片或视频，在下方点💗就表示收藏这张图。
 hidden 要验证一个资源是否被用户标记为收被隐藏，只要检查 PHAsset 实例的 hidden 属性即可。
 sourceType ： 资源可以来源自用户相册、iCloud、iTunes同步
 representsBurst 和 burstSelectionTypes: 对于一个资源，如果其 PHAsset 的 representsBurst 属性为 true，则表示这个资源是一系列连拍照片中的代表照片 (多张照片是在用户按住快门时拍摄的)。它还有一个属性是 burstIdentifier，如果想要获取连拍照片中的剩余的其他照片，可以通过将这个值传入 fetchAssetsWithBurstIdentifier(...) 方法来获取。
 
 localIdentifier
 
 Photos 框架中的根类PHObject只有一个公开接口localIdentifier,是对象唯一唯一标志符.PHObject实现了-isEqual 和-hash方法.可以直接使用localIdentifier属性对PHObject及其子类对象进行对比是否同一个对象。
 
 
 PHAssetCollection:
 PHAssetCollection是一组有序的资源集合,包括相册、moments、智能相册以及共享照片流.
 属性：
 assetCollectionType 资源集合类型，比如相册，智能相册或者“时刻”相册
         enum PHAssetCollectionType : Int {
         case Album //从 iTunes 同步来的相册，以及用户在 Photos 中自己建立的相册
         case SmartAlbum //经由相机得来的相册
         case Moment //Photos 为我们自动生成的时间分组的相册
         }
 assetCollectionSubtype 子类型
         enum PHAssetCollectionSubtype : Int {
         case AlbumRegular //用户在 Photos 中创建的相册
         case AlbumSyncedEvent //使用 iTunes 从 Photos 照片库或者 iPhoto 照片库同步过来的事件。然而，在iTunes 12 以及iOS 9.0 beta4上，选用该类型没法获取同步的事件相册，而必须使用AlbumSyncedAlbum。
         case AlbumSyncedFaces //使用 iTunes 从 Photos 照片库或者 iPhoto 照片库同步的人物相册。
         case AlbumSyncedAlbum //做了 AlbumSyncedEvent 应该做的事
         case AlbumImported //从相机或是外部存储导入的相册，完全没有这方面的使用经验，没法验证。
         case AlbumMyPhotoStream //用户的 iCloud 照片流
         case AlbumCloudShared //用户使用 iCloud 共享的相册
         case SmartAlbumGeneric //文档解释为非特殊类型的相册，主要包括从 iPhoto 同步过来的相册。
         case SmartAlbumPanoramas //相机拍摄的全景照片
         case SmartAlbumVideos //相机拍摄的视频
         case SmartAlbumFavorites //收藏文件夹
         case SmartAlbumTimelapses //延时视频文件夹，同时也会出现在视频文件夹中
         case SmartAlbumAllHidden //包含隐藏照片或视频的文件夹
         case SmartAlbumRecentlyAdded //相机近期拍摄的照片或视频
         case SmartAlbumBursts //连拍模式拍摄的照片
         case SmartAlbumUserLibrary //这个命名最神奇了，就是相机相册，所有相机拍摄的照片或视频都会出现在该相册中，而且使用其他应用保存的照片也会出现在这里。
         case Any //包含所有类型
         }
 
 PHFetchOptions：
 属性：
 predicate ： 做选择的约束条件。比如，只获取图片，不获取视频。指定 PHAssetMediaType为image.
 li：// 只取图片
 options.predicate = [NSPredicate predicateWithFormat:@"mediaType == %d",PHAssetMediaTypeImage];
 sortDescriptors 可指定字段用来对获取结果进行排序
 li:// 按时间排序
 options.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:YES]];
 includeHiddenAssets 获取结果是否包括被隐藏的资源
 includeAllBurstAssets 获取结果是否包括连拍资源
 
 
 PHImageManager:
 
 
 */



@end
