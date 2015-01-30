//
//  Student.m
//  Notepad
//
//  Created by 唐建 on 30/1/15.
//  Copyright (c) 2015 Tibby Tang. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (NSDictionary *)JSONKeyPathsByPropertyKey{
    
    return @{@"name":@"name",@"grade":@"grade",@"age":@"age"};
}

+ (instancetype) getStudentWithDictionary:(NSDictionary *) dict{
    NSError *error = nil;
    Student *student = [MTLJSONAdapter modelOfClass:[Student class] fromJSONDictionary:dict error:&error];
    if (error != nil) {
        NSLog(@"Parse dict to Student %@",error);
        return nil;
    }
    return student;
}

+ (NSDictionary *) toDictionary:(Student *) stu{

    return [MTLJSONAdapter JSONDictionaryFromModel:stu];
}
@end
