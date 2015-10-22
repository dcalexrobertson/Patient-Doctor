//
//  main.m
//  Patient & Doctor
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Patient *patient = [[Patient alloc] initWithName:@"Bob" Age:30 Symptoms:@"Broken Bones" HealthCard:YES];
        Doctor *doctor = [[Doctor alloc] initWithName:@"Dave" Specialization:@"brain surgery"];
        
        [patient askDoctor:doctor];
        [doctor askPatient:patient];
        
        [patient requestMedication:doctor];        
        
        
        
        
        
    }
    return 0;
}
