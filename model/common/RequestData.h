//
//  RequestData.h
//  Notepad
//
//  Created by 唐建 on 30/1/15.
//  Copyright (c) 2015 Tibby Tang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTLModel.h"
#import "MTLJSONAdapter.h"
@interface RequestData : MTLModel<MTLJSONSerializing>

@property (strong, nonatomic) NSString *userId;

@property (strong, nonatomic) NSString *protocolVersion;

@property (strong, nonatomic) NSNumber *command;

@property (strong, nonatomic) NSDictionary *extra;

@end
