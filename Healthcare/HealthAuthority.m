//
//  HealthAuthority.m
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "HealthAuthority.h"
#import "Doctor.h"
#import "Patient.h"
#import "PrescriptionRecord.h"

@interface HealthAuthority ()
@property (nonatomic, readwrite, strong) NSMutableSet<Doctor *> *doctorRegistrar;
@property (nonatomic, readwrite, strong) NSMutableDictionary<NSString *, NSMutableArray<PrescriptionRecord *> *> *patientRecords;
@end


@implementation HealthAuthority

- (instancetype)init
{
    self = [super init];
    if (self) {
        _doctorRegistrar = [NSMutableSet<Doctor *> new];
        _patientRecords = [NSMutableDictionary<NSString *, NSMutableArray<PrescriptionRecord *> *> new];
    }
    return self;
}

-(void)registerWithHealthAuthority:(Doctor *)doctor
{
    [self.doctorRegistrar addObject:doctor];
}

-(void)recieveRecord:(PrescriptionRecord *)newRecord forPatient:(Patient *)patient
{
    if (![self.patientRecords objectForKey:patient.name]) {
        [self.patientRecords setObject:[NSMutableArray<PrescriptionRecord *> new] forKey:patient.name];
    }
    NSMutableArray *thisPatientsRecords = [self.patientRecords objectForKey:patient.name];
    [thisPatientsRecords addObject:newRecord];
}
-(NSMutableArray<PrescriptionRecord *> *)retrieveRecord:(Patient *)patient
                                              forDoctor:(Doctor *)doctor
{
    if ([self.doctorRegistrar containsObject:doctor]) {
        if ([self.patientRecords objectForKey:patient.name]){
            return [self.patientRecords objectForKey:patient.name];
        }
    }
    
    return nil;
}

@end
