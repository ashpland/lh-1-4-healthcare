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
        
        

        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:21];
        [comps setMonth:03];
        [comps setYear:1988];
        NSDate *date = [[NSCalendar currentCalendar] dateFromComponents:comps];
        
        Patient *testPatient2 = [[Patient alloc] initWithName:@"Drew" andBirthDate:date];
        
        Doctor *testDoctor2 = [[Doctor alloc] initWithName:@"Dr. Rutherford" andSpecialization:@"Gay Men's Health"];
       
        NSDateComponents *comps2 = [[NSDateComponents alloc] init];
        [comps2 setDay:18];
        [comps2 setMonth:03];
        [comps2 setYear:1952];
        NSDate *date3 = [[NSCalendar currentCalendar] dateFromComponents:comps2];
        
        Patient *testPatient3 = [[Patient alloc] initWithName:@"Alan" andBirthDate:date3];
        
        NSLog(@"%@", testPatient1);
        NSLog(@"%@", testDoctor1);
        NSLog(@"%@", testPatient2);
        NSLog(@"%@", testDoctor2);
        NSLog(@"%@", testPatient3);

        NSLog(@"");
        
        NSLog(@"1 Log: %@", testDoctor1.patients);
        
        [testPatient1 visitDoctor:testDoctor1];
        
        NSLog(@"1 Log: %@", testDoctor1.patients);

        
        [testPatient2 visitDoctor:testDoctor2];
        NSLog(@"\n%@ moved to Saskatchewan.", testPatient3.name);
        [testPatient3 setHealthCard:NO];
        [testPatient3 visitDoctor:testDoctor1];


    }
    return 0;
}
