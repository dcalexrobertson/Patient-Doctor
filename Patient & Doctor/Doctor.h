//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Alex on 2015-10-22.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *specialization;
@property (nonatomic) NSMutableSet *acceptedPatients;
@property (nonatomic) NSDictionary *medecineCabinet;
@property BOOL canAcceptPatient;

- (instancetype)initWithName:(NSString *)name Specialization:(NSString *)specialization;

-(void)askPatient:(Patient *)patient;

-(void)givePrescription:(Patient *)patient;

@end
