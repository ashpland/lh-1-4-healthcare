//
//  Doctor.m
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "PrescriptionRecord.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface Doctor ()
@property (nonatomic, readwrite, strong) NSMutableSet *patients;
@end

@implementation Doctor

-(instancetype)initWithName:(NSString *)name
          andSpecialization:(NSString *)specialization
          inHealthAuthority:(HealthAuthority *)healthAuthority
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _patients = [NSMutableSet new];
        [healthAuthority registerWithHealthAuthority:self];
        _healthAuthority = healthAuthority;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.name];
}

-(void)recievePatient:(Patient *)patient
{
    if ([self checkHealthCard:patient]) {
        if (![self.patients containsObject:patient]) {
            [self.patients addObject:patient];
        }
        NSLog(@"\n%@ visited %@!", patient.name, self.name);
    } else {
        NSLog(@"\n%@ is not covered", patient.name);
    }
}

-(bool)checkHealthCard:(Patient *)patient
{
    return [patient hasHealthCard];
}

-(Prescription)requestMedication:(Patient *)patient
{
    if ([self.patients containsObject:patient]) {
        
        [self recievePatient:patient];
        
        NSMutableArray<PrescriptionRecord *> *pastRecords = [self.healthAuthority retrieveRecord:patient forDoctor:self];
        
        NSLog(@"Past Records for %@: %@", patient, pastRecords);
        
        Symptom symptom = [patient giveSymptoms:self];
        
        Prescription prescription;
        
        switch (symptom) {
            case sorethroat:
                prescription = honey;
                break;
                
            case headache:
            case arthritis:
                prescription = ibuprofen;
                break;
                
            case earache:
                prescription = antibiotics;
                break;
                
            case heartbreak:
                prescription = self_care;
                break;
                
            default:
                prescription = chocolate;
                break;
        }
        
        PrescriptionRecord *newRecord = [[PrescriptionRecord alloc] initWithDoctor:self symptom:symptom andPrescription:prescription];
        
        NSLog(@"New Record: %@", newRecord);
        
        [self.healthAuthority recieveRecord:newRecord forPatient:patient];
        
        return prescription;
        
    }
    NSLog(@"%@'s request for medication was rejected.", patient);
    return rejected;
}

@end
