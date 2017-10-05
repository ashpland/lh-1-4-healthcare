//
//  Doctor.m
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

//@interface Doctor ()
//@property (nonatomic, readwrite, strong) NSMutableSet *patients;
//@end

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
        _patients = [NSMutableSet new];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ has a specialization in %@", self.name, self.specialization];
}

-(void)recievePatient:(Patient *)patient
{
    if ([self checkHealthCard:patient]) {
        if (![self.patients containsObject:patient]) {
            [self.patients addObject:patient];
        }
        NSLog(@"%@ visited %@!", patient.name, self.name);
    } else {
        NSLog(@"%@ is not covered", patient.name);
    }
}

-(bool)checkHealthCard:(Patient *)patient
{
    return [patient hasHealthCard];
}

-(Prescription)requestMedication:(Patient *)patient
{
    if ([self.patients containsObject:patient]) {
        Symptom symptom = [patient giveSymptoms:self];
        
        switch (symptom) {
            case sorethroat:
                return honey;
                break;
                
            case headache:
            case arthritis:
                return ibuprofen;
                break;
                
            case earache:
                return antibiotics;
                break;
                
            case heartbreak:
                return self_care;
                
            default:
                return chocolate;
                break;
        }
    }
    
    return rejected;
}

@end
