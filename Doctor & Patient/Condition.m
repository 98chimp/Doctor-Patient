//
//  Symptom.m
//  Doctor & Patient
//
//  Created by Shahin on 2015-03-12.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "Condition.h"
#import "Recommendation.h"

@implementation Condition

+(NSArray*) possibleSymptoms {
    NSArray *possibleSymptoms = [[Recommendation recommendations] allKeys];
return possibleSymptoms;
}

@end
