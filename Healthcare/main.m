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
#import "HealthAuthority.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        HealthAuthority *vch = [HealthAuthority new];
        

       
        NSDateComponents *comps0 = [[NSDateComponents alloc] init];
        [comps0 setDay:14];
        [comps0 setMonth:05];
        [comps0 setYear:1997];
        NSDate *date0 = [[NSCalendar currentCalendar] dateFromComponents:comps0];
            
        Patient *testPatient1 = [[Patient alloc] initWithName:@"Barbie Girl" andBirthDate:date0];
        
        
        
        
        Doctor *testDoctor1 = [[Doctor alloc]
                               initWithName:@"Dr. Jones"
                               andSpecialization:@"Archaeology"
                               inHealthAuthority:vch];

        NSDateComponents *comps1 = [[NSDateComponents alloc] init];
        [comps1 setDay:21];
        [comps1 setMonth:03];
        [comps1 setYear:1988];
        NSDate *date1 = [[NSCalendar currentCalendar] dateFromComponents:comps1];
        
        Patient *testPatient2 = [[Patient alloc] initWithName:@"Drew" andBirthDate:date1];
        
        Doctor *testDoctor2 = [[Doctor alloc]
                               initWithName:@"Dr. Rutherford"
                               andSpecialization:@"Gay Men's Health"
                               inHealthAuthority:vch];
       
        NSDateComponents *comps2 = [[NSDateComponents alloc] init];
        [comps2 setDay:18];
        [comps2 setMonth:03];
        [comps2 setYear:1952];
        NSDate *date2 = [[NSCalendar currentCalendar] dateFromComponents:comps2];
        
        Patient *testPatient3 = [[Patient alloc] initWithName:@"Alan" andBirthDate:date2];
        
        

        
        [testPatient1 visitDoctor:testDoctor1];
        [testPatient2 visitDoctor:testDoctor2];
        [testPatient2 visitDoctor:testDoctor1];
        [testPatient3 setHealthCard:NO];
        [testPatient3 visitDoctor:testDoctor1];
        [testDoctor1 requestMedication:testPatient3];
        [testDoctor1 requestMedication:testPatient1];
        [testDoctor2 requestMedication:testPatient3];
        [testDoctor2 requestMedication:testPatient2];
        [testDoctor1 requestMedication:testPatient2];
        [testDoctor2 requestMedication:testPatient2];
        [testDoctor1 requestMedication:testPatient2];
        
        

    }
    return 0;
}
