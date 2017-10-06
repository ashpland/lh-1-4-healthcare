//
//  HealthAuthority.h
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;
@class Doctor;
@class PrescriptionRecord;

typedef enum : NSUInteger {
    ibuprofen,
    honey,
    antibiotics,
    self_care,
    chocolate,
    rejected,
} Prescription;

typedef enum : NSUInteger {
    headache,
    sorethroat,
    arthritis,
    earache,
    heartbreak,
} Symptom;

#define prescriptionString(enum) [@[@"ibuprofen",@"honey",@"antibiotics",@"self_care",@"chocolate",@"rejected"] objectAtIndex:enum]
#define symptomString(enum) [@[@"headache",@"sorethroat",@"arthritis",@"earache",@"heartbreak"] objectAtIndex:enum]




@interface HealthAuthority : NSObject

-(void)registerWithHealthAuthority:(Doctor *)doctor;
-(void)recieveRecord:(PrescriptionRecord *)newRecord forPatient:(Patient *)patient;
-(NSMutableArray<PrescriptionRecord *> *)retrieveRecord:(Patient *)patient forDoctor:(Doctor *)doctor;


@end
