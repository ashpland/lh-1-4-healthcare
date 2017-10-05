//
//  main.m
//  Healthcare
//
//  Created by Andrew on 2017-10-05.
//  Copyright © 2017 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#import "Patient.h"
#import "Doctor.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Patient *testPatient1 = [Patient new];
        Doctor *testDoctor1 = [Doctor new];
        
        NSLog(@"Patient %@ is %d years old", testPatient1.name, testPatient1.age);
        
        NSLog(@"%@ has a specialization in %@", testDoctor1.name, testDoctor1.specialization);
        
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:21];
        [comps setMonth:03];
        [comps setYear:1988];
        NSDate *date = [[NSCalendar currentCalendar] dateFromComponents:comps];
        
        
        
        Patient *testPatient2 = [[Patient alloc] initWithName:@"Drew" andBirthDate:date];
        Doctor *testDoctor2 = [[Doctor alloc] initWithName:@"Dr. Rutherford" andSpecialization:@"Gay Men's Health"];
        
        NSLog(@"Patient %@ is %d years old", testPatient2.name, testPatient2.age);
        
        NSLog(@"%@ has a specialization in %@", testDoctor2.name, testDoctor2.specialization);
        


    }
    return 0;
}
