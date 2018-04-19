//
//  HomeViewController.m
//  CSDK
//
//  Created by TC on 2018/4/16.
//  Copyright © 2018年 ChuHouyi. All rights reserved.
//

#import "HomeViewController.h"
#import "TestViewController.h"
#import "PhotoViewController.h"

@interface HomeViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) UITableView *  tableView;

@property(nonatomic,strong) NSArray *  textArray;

@end

@implementation HomeViewController

- (UITableView *)tableView{
    if (!_tableView) {
        
        _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textArray = @[@"测试",
                       @"从相册选择照片"];
    
    [self setSubViews];
 
    self.title = @"首页";
    
    
    
 
    
}
-(void)setSubViews{
    
    self.tableView.tableHeaderView = [UIView new];
    self.tableView.tableFooterView = [UIView new];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}




- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = self.textArray[indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.textArray.count;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
            {
                TestViewController * vc = [[TestViewController alloc]init];
                [self.navigationController pushViewController:vc animated:YES];
            }break;
        case 1:
        {
            PhotoViewController * vc = [[PhotoViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }break;
        case 2:
        {
            
        }break;
        case 3:
        {
            
        }break;
        case 4:
        {
            
        }break;
        case 5:
        {
            
        }break;
        case 6:
        {
            
        }break;
        case 7:
        {
            
        }break;
        case 8:
        {
            
        }break;
        case 9:
        {
            
        }break;
        default:{
            
        }
            break;
    }
    
    
}




@end
