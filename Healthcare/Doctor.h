//
//  Doctor.h
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *specialization;

-(instancetype)initWithName:(NSString *)name
          andSpecialization:(NSString *)specialization;

@end
