//
//  main.m
//  Doctor & Patient
//
//  Created by Shahin on 2015-03-12.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "Condition.h"
#import "Recommendation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient *patient = [[Patient alloc] initWithNameAgeSexandEligibility:@"Shahin" patientAge:32 sex:true hasHealthCard:true ill:true];
        Doctor *doctor = [[Doctor alloc] initWithNameSpecializationAndAvailability:@"Z" specialization:@"Family Physician" availability:true];
        Condition *symptoms = [[Condition alloc] init];
        
        [patient seeDoctor];
        [patient provideName];
        
        [doctor addToPatientList:patient];
        [doctor sayGreeting:patient];
        
        [patient provideSymptom];        
        [doctor provideRecommendation:patient];
        
    }
    return 0;
}
