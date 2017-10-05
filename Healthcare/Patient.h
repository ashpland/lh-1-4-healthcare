//
//  Patient.h
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSDate *birthDate;

-(instancetype)initWithName:(NSString *)name andBirthDate:(NSDate *)date;
-(int)age;
@end
