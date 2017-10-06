//
//  Doctor.h
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HealthAuthority.h"
@class Patient;




@interface Doctor : NSObject

@property (nonatomic, readonly, strong) NSString *name;
@property (nonatomic, readonly, strong) NSString *specialization;
@property (nonatomic, readonly, weak) HealthAuthority *healthAuthority;

-(instancetype)initWithName:(NSString *)name
          andSpecialization:(NSString *)specialization
          inHealthAuthority:(HealthAuthority *)healthAuthority;

-(void)recievePatient:(Patient *)patient;
-(bool)checkHealthCard:(Patient *)patient;
-(Prescription)requestMedication:(Patient *)patient;

@end
