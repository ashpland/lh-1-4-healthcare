//
//  Doctor.h
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

typedef enum : NSUInteger {
    ibuprofen,
    honey,
    antibiotics,
    self_care,
    chocolate,
    rejected,
} Prescription;

#define prescriptionString(enum) [@[@"ibuprofen",@"honey",@"antibiotics",@"self_care",@"chocolate",@"rejected"] objectAtIndex:enum]


@interface Doctor : NSObject

@property (nonatomic, readonly, strong) NSString *name;
@property (nonatomic, readonly, strong) NSString *specialization;
@property (nonatomic, readwrite, strong) NSMutableSet *patients;

-(instancetype)initWithName:(NSString *)name
          andSpecialization:(NSString *)specialization;

-(void)recievePatient:(Patient *)patient;
-(bool)checkHealthCard:(Patient *)patient;
-(Prescription)requestMedication:(Patient *)patient;

@end
