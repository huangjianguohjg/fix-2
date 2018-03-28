//
//  ViewController.m
//  fix
//
//  Created by Developer on 2018/3/19.
//  Copyright © 2018年 Developer. All rights reserved.
//

#import "ViewController.h"
#import "HJGCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *rootTable;

@property (nonatomic, strong) NSMutableArray *inputArr;

@end
@implementation ViewController


- (NSMutableArray *)inputArr{
    
    if (!_inputArr) {
        _inputArr = [NSMutableArray array];
    }
    return _inputArr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configView];
    
    [self configBaseData];

}

- (void)configBaseData{
    
    for (int i = 0; i < 100 ; i ++) {
        [self.inputArr addObject:@"1"];
    }
    
    [self.rootTable reloadData];
}

- (void)configView{
    self.rootTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.rootTable.delegate = self;
    self.rootTable.dataSource = self;
    [self.rootTable registerClass:[HJGCell class] forCellReuseIdentifier:@"hjgcell"];
    [self.view addSubview:self.rootTable];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    HJGCell *cell = [tableView dequeueReusableCellWithIdentifier:@"hjgcell"];
    [cell.textF addTarget:self action:@selector(textFieldChange: event:) forControlEvents:UIControlEventEditingDidEnd];
    if ([self.inputArr[indexPath.row] isEqualToString:@"1"]) {
        cell.textF.text = @"";
        cell.textF.placeholder = @"请输入内容";
    }else{
        cell.textF.text = self.inputArr[indexPath.row];
    }
    return cell;
}


- (void)textFieldChange:(UITextField *)textField event:(id)event{
    NSIndexPath *indexP = [self.rootTable indexPathForCell:(UITableViewCell *)[[textField superview] superview]];
    if (textField.text.length == 0) {}else{
        [self.inputArr replaceObjectAtIndex:indexP.row withObject:textField.text];
    }
    [self.rootTable reloadData];
}





@end
