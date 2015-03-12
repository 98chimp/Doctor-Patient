//
//  Patient.m
//  Doctor & Patient
//
//  Created by Shahin on 2015-03-12.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype) initWithNameAgeSexandEligibility:(NSString*)name patientAge:(int)age sex:(bool)sex hasHealthCard:(bool)eligible ill:(bool)ill {
    self = [super init];
    
    if (self) {
        self.patientName = name;
        self.patientAge = age;
        self.sex = sex;
        self.hasHealthCard = eligible;
        self.isIll = ill;
    }
    return self;
}

-(void) seeDoctor {
    if (self.isIll) {
        NSLog(@"Hello, Doctor!");
    }
}

-(NSString*) provideName {
    NSLog(@"My name is %@", self.patientName);
    return self.patientName;
}

-(NSString*) provideSymptom {
    NSUInteger randomIndex = arc4random() % [Condition.possibleSymptoms count];
    NSString *symptom = [Condition.possibleSymptoms objectAtIndex: randomIndex];
    NSLog(@"%@", symptom);
    self.symptom = symptom;
    return symptom;
}

-(void) sayGoodbye {
    NSLog(@"Thank you for your help, Doctor! Hope I don't have to see you again.");
}

@end
