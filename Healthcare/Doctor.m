//
//  Doctor.m
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

- (instancetype)init
{
    return [self initWithName:@"Dr. Jones" andSpecialization:@"Archaeology"];
}

-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
    }
    return self;
}

@end
