//
//  ViewController.m
//  Notepad
//
//  Created by 唐建 on 30/1/15.
//  Copyright (c) 2015 Tibby Tang. All rights reserved.
//

#import "ViewController.h"
#import "RequestData.h"
#import "MTLJSONAdapter.h"
#import "Student.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Student *stu1 = [[Student alloc] init];
    [stu1 setName:@"zhangsan"];
    [stu1 setAge:[[NSNumber alloc] initWithInt:21]];
    [stu1 setGrade:@"090612114"];
    
    Student *stu2 = [[Student alloc] init];
    [stu2 setName:@"Tibby Tang"];
    [stu2 setAge:[[NSNumber alloc] initWithInt:22]];
    [stu2 setGrade:@"090611104"];
    
    RequestData *requestData = [[RequestData alloc] init];
    [requestData setUserId:@"18702941907"];
    [requestData setCommand:[[NSNumber alloc] initWithInt:3]];
    [requestData setProtocolVersion:@"1.0"];
    [requestData setExtra:[[NSDictionary alloc] initWithObjectsAndKeys:[Student toDictionary:stu1],@"stu1",[Student toDictionary:stu2],@"stu2", nil]];
    
    NSDictionary *data = [MTLJSONAdapter JSONDictionaryFromModel:requestData];
    NSData *jsonString = [NSJSONSerialization dataWithJSONObject:data options:NSJSONWritingPrettyPrinted error:nil];
    NSLog(@"json is :%@",[[NSString alloc] initWithData:jsonString encoding:NSUTF8StringEncoding]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
