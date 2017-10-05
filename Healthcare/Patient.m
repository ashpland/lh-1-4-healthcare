//
//  Patient.m
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);


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
        _healthCard = true;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Patient %@ is %d years old", self.name, self.age];
}

-(int)age{
    
    NSCalendar *sysCalendar = [NSCalendar currentCalendar];
    
    NSCalendarUnit unitFlags = NSCalendarUnitYear;
    
    NSDateComponents *breakdownInfo = [sysCalendar components:unitFlags fromDate:self.birthDate  toDate:[NSDate date]  options:0];
    
    return (int)[breakdownInfo year];
}

-(void)visitDoctor:(Doctor *)doctor
{
    [doctor recievePatient:self];
}



@end
