//
//  ViewController.m
//  fix
//
//  Created by Developer on 2018/3/19.
//  Copyright © 2018年 Developer. All rights reserved.
//

#import "ViewController.h"
#import "HJGContentModel.h"
#import <MJExtension.h>
#import "HJGContentModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    NSData *JSONData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"a" ofType:@"json"]];
    NSDictionary *json =  [NSJSONSerialization JSONObjectWithData:JSONData options:NSJSONReadingAllowFragments error:nil];
    
    HJGContentModel *model = [HJGContentModel mj_objectWithKeyValues:json];
    
    NSLog(@"%@",model);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
