//
//  PhotoSelectViewController.m
//  CSDK
//
//  Created by TC on 2018/4/17.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "PhotoSelectViewController.h"

@interface PhotoSelectViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,strong) UICollectionView *collectionView;

@property(nonatomic,strong) NSMutableArray *dataArray;

@end

static NSString * cellId = @"Cell";
@implementation PhotoSelectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    
    UILabel * label = [UILabel addLabelText:@"相册选择" color:RGB(255,255,255) font:17 isFit:YES textAlign:NSTextAlignmentCenter inView:nil];
    label.size = CGSizeMake(100, 20);
    self.navigationItem.titleView = label;
    [label addTapGestureTarget:self selector:@selector(clickNaviTitle)];
    
    CGFloat width = (ScreenWidth-40)/4;
    UICollectionViewFlowLayout * layout = [[UICollectionViewFlowLayout alloc]init];
    layout.itemSize = CGSizeMake(width, width);
    layout.minimumLineSpacing = 8;
    layout.minimumInteritemSpacing = 8;
    
    UICollectionView * collectionview = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, self.view.height) collectionViewLayout:layout];
    collectionview.delegate = self;
    collectionview.dataSource = self;
    
    [self.view addSubview:self.collectionView = collectionview];
    [collectionview registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellId];
}
-(void)clickNaviTitle{
    
    
    
    
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    
    
    
    
    return cell;
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
