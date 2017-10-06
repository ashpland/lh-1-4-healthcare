//
//  PrescriptionRecord.h
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HealthAuthority.h"

@class Doctor;
@class Patient;

@interface PrescriptionRecord : NSObject

@property (nonatomic, readonly, weak) Doctor *doctor;
@property (nonatomic, readonly) Symptom symptom;
@property (nonatomic, readonly) Prescription prescription;

- (instancetype)initWithDoctor:(Doctor* )doctor
                       symptom:(Symptom)symptom
               andPrescription:(Prescription)prescription;

@end
