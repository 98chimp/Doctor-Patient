//
//  Recommendation.m
//  Doctor & Patient
//
//  Created by Shahin on 2015-03-12.
//  Copyright (c) 2015 98% Chimp. All rights reserved.
//

#import "Recommendation.h"

@implementation Recommendation

+(NSDictionary*) recommendations {
    NSDictionary *recommedations = @{
                               @"I hava a headache.":              @"take some tylenol or advil!",
                               @"I have muscle pain.":             @"get some swedish massage!",
                               @"I have insomnia.":                @"get some more sleep!",
                               @"I hear voices inside my head.":   @"see my psychiatrist colleague!",
                               @"I have chest pain.":              @"see my cardiologist colleague!",
                               @"I have shortness of breath.":          @"stop smoking!",
                               @"I have difficulty breathing.":         @"do more respirometry tests.",
                               @"My urine tastes sweet.":        @"stop tasting your urine!",
                               @"It hurts when I do this.":      @"stop doing that!",
                               };
    return recommedations;
}

@end
