//
//  Student.h
//  Notepad
//
//  Created by 唐建 on 30/1/15.
//  Copyright (c) 2015 Tibby Tang. All rights reserved.
//

#import "MTLModel.h"
#import "MTLJSONAdapter.h"
@interface Student : MTLModel<MTLJSONSerializing>

@property (strong, nonatomic) NSString *name;

@property (strong, nonatomic) NSString *grade;

@property (strong, nonatomic) NSNumber *age;

+ (instancetype) getStudentWithDictionary:(NSDictionary *) dict;

+ (NSDictionary *) toDictionary:(Student *) stu;

@end
