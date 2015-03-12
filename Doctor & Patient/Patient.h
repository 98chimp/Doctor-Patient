//
//  Patient.h
//  Doctor & Patient
//
//  Created by Shahin on 2015-03-12.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Condition.h"

@interface Patient : NSObject

@property (nonatomic, weak) NSString *patientName;
@property (nonatomic, assign) int patientAge;
@property (nonatomic, assign) bool sex;
@property (nonatomic, assign) bool hasHealthCard;
@property (nonatomic, assign) bool isIll;
@property (nonatomic, weak) NSString *symptom;

-(instancetype) initWithNameAgeSexandEligibility:(NSString*)name patientAge:(int)age sex:(bool)sex hasHealthCard:(bool)eligible ill:(bool)ill;

-(void) seeDoctor;
-(NSString*) provideName;
-(NSString*) provideSymptom;
-(void) sayGoodbye;

@end
