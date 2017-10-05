//
//  Patient.m
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "Patient.h"

@implementation Patient

- (instancetype)init
{
    
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setDay:14];
    [comps setMonth:05];
    [comps setYear:1997];
    NSDate *date = [[NSCalendar currentCalendar] dateFromComponents:comps];
    
    return [self initWithName:@"Barbie Girl" andBirthDate:date];
}

-(instancetype)initWithName:(NSString *)name andBirthDate:(NSDate *)date
{
    self = [super init];
    if (self) {
        _name = name;
        _birthDate = date;
    }
    return self;
}

-(int)age{
    
    NSCalendar *sysCalendar = [NSCalendar currentCalendar];
    
    NSCalendarUnit unitFlags = NSCalendarUnitYear;
    
    NSDateComponents *breakdownInfo = [sysCalendar components:unitFlags fromDate:self.birthDate  toDate:[NSDate date]  options:0];
    
    return (int)[breakdownInfo year];
}


@end
