//
//  Doctor.m
//  Doctor & Patient
//
//  Created by Shahin on 2015-03-12.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor {
    NSMutableArray *_patientList;
}

- (instancetype)initWithName:(NSString*)name specialization:(NSString*)specialization availability:(bool)availability {
    self = [super init];
    if (self) {
        self.doctorName = name;
        self.doctorSpecialization = specialization;
        self.isAvailable = availability;
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _patientList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void) addToPatientList:(Patient *)patient{
    if (self.isAvailable) {
        if (patient.hasHealthCard) {
            [_patientList addObject:patient];
        }
        else {
            NSLog(@"Sorry, you don't have insurance so I cannot treat you!");
        }
    }
}

-(void) sayGreeting:(Patient *)patient{
    NSLog(@"Hello %@. I am Dr %@.", patient.patientName, self.doctorName);
}

-(void) askForSymptoms {
    NSLog(@"What brings you to my office today?");
}

-(void) provideRecommendation:(Patient *)patient {
    NSLog(@"You should %@", [[Recommendation recommendations] objectForKey:patient.symptom]);
}

-(void) sayGoodbye {
    NSLog(@"Hope you feel better soon. Bye!");
}

@end
