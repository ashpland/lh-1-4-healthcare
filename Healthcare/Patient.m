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
    return [NSString stringWithFormat:@"%@", self.name];
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

-(Symptom)giveSymptoms:(Doctor *)doctor
{
    return (Symptom)arc4random_uniform(5);
}



@end
