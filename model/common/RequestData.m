//
//  RequestData.m
//  Notepad
//
//  Created by 唐建 on 30/1/15.
//  Copyright (c) 2015 Tibby Tang. All rights reserved.
//

#import "RequestData.h"

@implementation RequestData

+ (NSDictionary *)JSONKeyPathsByPropertyKey{

    return @{@"userId":@"userId",@"protocolVersion":@"version",@"command":@"command",@"extra":@"extra",};
}

@end
