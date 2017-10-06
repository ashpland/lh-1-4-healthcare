//
//  Patient.h
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HealthAuthority.h"

@class Doctor;





@interface Patient : NSObject

@property (nonatomic, readonly, strong) NSString *name;
@property (nonatomic, readonly, strong) NSDate *birthDate;
@property (nonatomic, readwrite, getter=hasHealthCard) bool healthCard;
@property (nonatomic, readwrite)Symptom symptom;


-(instancetype)initWithName:(NSString *)name andBirthDate:(NSDate *)date;
-(int)age;

-(void)visitDoctor:(Doctor *)doctor;
-(Symptom)giveSymptoms:(Doctor *)doctor;

@end
