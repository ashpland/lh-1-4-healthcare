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

        Patient *testPatient = [Patient new];
        
        NSLog(@"%d", testPatient.age);
    
    }
    return 0;
}
