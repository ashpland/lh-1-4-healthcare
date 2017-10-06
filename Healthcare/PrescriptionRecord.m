//
//  PrescriptionRecord.m
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "PrescriptionRecord.h"
#import "Doctor.h"
#import "Patient.h"


@implementation PrescriptionRecord

- (instancetype)initWithDoctor:(Doctor* )doctor
                       symptom:(Symptom)symptom
               andPrescription:(Prescription)prescription
{
    self = [super init];
    if (self) {
        _doctor = doctor;
        _symptom = symptom;
        _prescription = prescription;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ prescribed %@ for %@", self.doctor, prescriptionString(self.prescription), symptomString(self.symptom)];
}

@end
