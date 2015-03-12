//
//  Symptom.m
//  Doctor & Patient
//
//  Created by Shahin on 2015-03-12.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "Condition.h"

@implementation Condition

+(NSArray*) possibleSymptoms {
    NSArray *possibleSymptoms = [NSArray arrayWithObjects:
                                 @"I hava a headache.",
                                 @"I have muscle pain.",
                                 @"I have insomnia.",
                                 @"I see dead people.",
                                 @"I have chest pain.",
                                 @"I have shortness of breath.",
                                 @"I have difficulty breathing.",
                                 @"My urine tastes sweet.",
                                 @"It hurts when I do this.",
                                 nil];
    return possibleSymptoms;
}

@end
