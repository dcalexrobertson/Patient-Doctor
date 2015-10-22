//
//  Patient.m
//  Patient & Doctor
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name Age:(int)age Symptoms:(NSString *)symptoms HealthCard:(BOOL)yesOrNo
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _symptoms = symptoms;
        _hasHealthCard = yesOrNo;
        _writtenPrescriptions = [[NSMutableSet alloc] init];
    }
    return self;
}

-(void)askDoctor:(Doctor *)doctor
{
    
    NSLog(@"Doctor's name is %@ and they specialize in %@.", doctor.name, doctor.specialization);
    
}


-(void)requestMedication:(Doctor *)doctor
{
    
    NSLog(@"Help me doctor. I have %@.", self.symptoms);
    
    if ([doctor.acceptedPatients containsObject:self]) {
        NSLog(@"Gimme some meds!");
        [doctor givePrescription:self];
    } else {
        NSLog(@"I'm do %@, not a rocket science. I can't help you.", doctor.specialization);
    }
    
}


@end
