//
//  Patient.h
//  Patient & Doctor
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *symptoms;
@property (nonatomic) NSString *medication;
@property (nonatomic) NSMutableSet *writtenPrescriptions;
@property BOOL hasHealthCard;
@property int age;

- (instancetype)initWithName:(NSString *)name Age:(int)age Symptoms:(NSString *)symptoms HealthCard:(BOOL)yesOrNo;

-(void)askDoctor:(Doctor *)doctor;

-(void)requestMedication:(Doctor *)doctor;

@end
