//
//  Doctor.h
//  Doctor & Patient
//
//  Created by Shahin on 2015-03-12.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Recommendation.h"
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, weak) NSString *doctorName;
@property (nonatomic, weak) NSString *doctorSpecialization;
@property (nonatomic, assign) bool isAvailable;

-(instancetype) initWithName:(NSString*)name specialization:(NSString*)specialization availability:(bool)availability;

-(void) addToPatientList:(Patient *)patient;
-(void) sayGreeting:(Patient *)patient;
-(void) askForSymptoms;
-(void) provideRecommendation:(Patient *)patient;
-(void) sayGoodbye;

@end
