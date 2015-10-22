//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        _medecineCabinet = @{@"Cold": @"Cold Medication", @"Depression" : @"Anti-Depressants", @"Broken Bones" : @"Painkillers"};
        _acceptedPatients = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)askPatient:(Patient *)patient
{
    
    NSLog(@"Patient's name is %@ and they are %d years old.", patient.name, patient.age);
    
    if (patient.hasHealthCard) {
        self.canAcceptPatient = YES;
        [self.acceptedPatients addObject:patient];
        NSLog(@"Congratulations! You are now my patient.");
    } else {
        self.canAcceptPatient = NO;
        NSLog(@"You don't have a health card? Get the hell out of here!");
    }
    
}

-(void)givePrescription:(Patient *)patient
{
    
    if (patient.hasHealthCard) {
        NSLog(@"You are suffering from %@. I have just the thing. It's called %@. Take two and call me in the morning.", patient.symptoms, [self.medecineCabinet objectForKey:patient.symptoms]);
        patient.medication = [self.medecineCabinet objectForKey:patient.symptoms];
        patient.writtenPrescriptions = [self.medecineCabinet objectForKey:patient.symptoms];
    }
    
}


@end
