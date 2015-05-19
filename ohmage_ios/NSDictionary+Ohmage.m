//
//  NSDictionary+Ohmage.m
//  ohmage_ios
//
//  Created by Charles Forkish on 4/1/14.
//  Copyright (c) 2014 VPD. All rights reserved.
//

#import "NSDictionary+Ohmage.h"

@interface NSDictionary (SAMAdditions)
- (NSString *)sam_SHA1Digest;
@end

@implementation NSDictionary (Ohmage)

//- (NSArray *)jsonArray
//{
//    return @[self];
//}

- (id)nonNullValueForKey:(NSString *)key
{
    id value = self[key];
    if (value == [NSNull null]) {
        return nil;
    }
    else {
        return value;
    }
}

-(NSString *)authToken
{
    return [self nonNullValueForKey:@"access_token"];
}

- (NSString *)refreshToken
{
    return [self nonNullValueForKey:@"refresh_token"];
}

- (NSString *)userID
{
    return [self nonNullValueForKey:@"user_id"];
}

- (NSString *)username
{
    return [self nonNullValueForKey:@"username"];
}

- (NSString *)userFullName
{
    return [self nonNullValueForKey:@"full_name"];
}

- (NSArray *)ohmlets
{
    return [self nonNullValueForKey:@"ohmlets"];
}

- (NSString *)ohmletID
{
    return [self nonNullValueForKey:@"ohmlet_id"];
}

- (NSString *)ohmletName
{
    return [self nonNullValueForKey:@"name"];
}

- (NSString *)ohmletDescription
{
    return [self nonNullValueForKey:@"description"];
}

- (NSArray *)surveyDefinitions
{
    return [self nonNullValueForKey:@"surveys"];
}

- (NSString *)surveySchemaNamespace
{
    NSDictionary *schemaID = self[@"schema_id"];
    if (schemaID) {
        return [schemaID nonNullValueForKey:@"namespace"];
    }
    else {
        return nil;
    }
}

- (NSString *)surveySchemaName
{
    NSDictionary *schemaID = self[@"schema_id"];
    if (schemaID) {
        return [schemaID nonNullValueForKey:@"name"];
    }
    else {
        return nil;
    }
}

- (NSString *)surveySchemaVersion
{
    NSString *version = nil;
    NSDictionary *schemaID = self[@"schema_id"];

    if (schemaID != nil) {
        id schemaVersion = schemaID[@"version"];
        if ([schemaVersion isKindOfClass:[NSDictionary class]]) {
            NSDictionary *versionDictionary = (NSDictionary *)schemaVersion;
            NSNumber *major = versionDictionary[@"major"];
            NSNumber *minor = versionDictionary[@"minor"];
            if (major && minor) {
                version = [NSString stringWithFormat:@"%@.%@", major, minor];
            }
        }
        else if ([schemaVersion isKindOfClass:[NSNumber class]]) {
            NSNumber *versionNumber = (NSNumber *)schemaVersion;
            version = [NSString stringWithFormat:@"%g", [versionNumber floatValue]];
        }
        else if ([schemaVersion isKindOfClass:[NSString class]]) {
            version = schemaVersion;
        }

    }
    return version;
}

- (NSString *)surveyName
{
    return [self nonNullValueForKey:@"name"];
}

- (NSString *)surveyDescription
{
    return [self nonNullValueForKey:@"description"];
}

- (NSArray *)surveyItems
{
    return [self nonNullValueForKey:@"survey_items"];
}

- (NSString *)surveyItemTypeKey
{
    return [self nonNullValueForKey:@"survey_item_type"];
}

- (NSString *)surveyItemID
{
    return [self nonNullValueForKey:@"survey_item_id"];
}

- (NSString *)surveyItemCondition
{
    return [self nonNullValueForKey:@"condition"];
}

- (NSString *)surveyItemText
{
    return [self nonNullValueForKey:@"text"];
}

- (NSString *)surveyItemDefaultStringResponse
{
    return [self nonNullValueForKey:@"default_response"];
}

- (NSNumber *)surveyItemDefaultNumberResponse
{
    return [self nonNullValueForKey:@"default_response"];
}

- (NSArray *)surveyItemDefaultChoiceValues
{
    id response = [self nonNullValueForKey:@"default_response"];
    if (response) {
        if ([[response class] isSubclassOfClass:[NSArray class]]) {
            return response;
        }
        else {
            return @[response];
        }
    }
    else {
        return nil;
    }
}

- (NSString *)surveyItemDisplayType
{
    return [self nonNullValueForKey:@"display_type"];
}

- (NSString *)surveyItemDisplayLabel
{
    return [self nonNullValueForKey:@"display_label"];
}

- (NSNumber *)surveyItemMin
{
    return [self nonNullValueForKey:@"min"];
}

- (NSNumber *)surveyItemMax
{
    return [self nonNullValueForKey:@"max"];
}

- (NSString *)surveyItemMinChoices
{
    return [self nonNullValueForKey:@"min_choices"];
}

- (NSString *)surveyItemMaxChoices
{
    return [self nonNullValueForKey:@"max_choices"];
}

- (NSNumber *)surveyItemMaxDimension
{
    return [self nonNullValueForKey:@"max_dimension"];
}

- (NSNumber *)surveyItemMaxDuration
{
    return [self nonNullValueForKey:@"max_duration"];
}

- (NSArray *)surveyItemChoices
{
    return [self nonNullValueForKey:@"choices"];
}

- (NSNumber *)surveyItemIsSkippable
{
    return [self nonNullValueForKey:@"skippable"];
}

- (NSNumber *)surveyItemWholeNumbersOnly
{
    return [self nonNullValueForKey:@"whole_numbers_only"];
}


- (NSString *)surveyPromptChoiceText
{
    return [self nonNullValueForKey:@"text"];
}

- (NSString *)surveyPromptChoiceStringValue
{
    return [self nonNullValueForKey:@"value"];
}

- (NSNumber *)surveyPromptChoiceNumberValue
{
    return [self nonNullValueForKey:@"value"];
}

- (NSDictionary *)surveyResponseMetadata
{
    return [self nonNullValueForKey:@"meta_data"];
}

- (NSDictionary *)surveyResponseMetadataLocation
{
    return [self nonNullValueForKey:@"location"];
}

- (NSDictionary *)surveyResponseData
{
    return [self nonNullValueForKey:@"data"];
}

- (NSString *)surveyResponseID
{
    return [self nonNullValueForKey:@"id"];
}

- (NSString *)surveyResponseTimestamp
{
    return [self nonNullValueForKey:@"timestamp"];
}

- (NSNumber *)surveyResponseLatitude
{
    return [self nonNullValueForKey:@"latitude"];
}

- (NSNumber *)surveyResponseLongitude
{
    return [self nonNullValueForKey:@"longitude"];
}

- (NSNumber *)surveyResponseLocationAccuracy
{
    return [self nonNullValueForKey:@"accuracy"];
}

- (NSNumber *)surveyResponseLocationTimestamp
{
    return [self nonNullValueForKey:@"time"];
}

- (NSString *)reminderID
{
    return [self nonNullValueForKey:@"reminderID"];
}

- (NSString *)SHA1Digest {
    return [self sam_SHA1Digest];
}

@end


@implementation NSMutableDictionary (Ohmage)

- (void)setSurveyResponseMetadata:(NSDictionary *)metadata
{
    self[@"meta_data"] = metadata;
}

- (void)setSurveyResponseMetadataLocation:(NSDictionary *)location
{
    self[@"location"] = location;
}

- (void)setSurveyResponseData:(NSDictionary *)data
{
    self[@"data"] = data;
}

- (void)setSurveyResponseID:(NSString *)surveyResponseID
{
    self[@"id"] = surveyResponseID;
}

- (void)setSurveyResponseTimestamp:(NSString *)surveyResponseTimestamp
{
    self[@"timestamp"] = surveyResponseTimestamp;
}

- (void)setSurveyResponseLatitude:(NSNumber *)latitude
{
    self[@"latitude"] = latitude;
}

- (void)setSurveyResponseLongitude:(NSNumber *)longitude
{
    self[@"longitude"] = longitude;
}

- (void)setSurveyResponseLocationAccuracy:(NSNumber *)accuracy
{
    self[@"accuracy"] = accuracy;
}

- (void)setSurveyResponseLocationTimestamp:(NSNumber *)timestamp
{
    self[@"time"] = timestamp;
}

- (void)setReminderID:(NSString *)reminderID;
{
    self[@"reminderID"] = reminderID;
}

@end




#pragma mark - SAMAdittions
// https://github.com/soffes/SAMCategories

#include <CommonCrypto/CommonDigest.h>

@implementation NSDictionary(SAMAdditions)

- (NSString *)sam_SHA1Digest {
    return [[self class] sam_SHA1DigestWithData:[self sam_prehashData]];
}

- (NSData *)sam_prehashData {
    return [NSPropertyListSerialization dataWithPropertyList:self format:NSPropertyListBinaryFormat_v1_0 options:kNilOptions error:nil];
}

+ (NSString *)sam_SHA1DigestWithData:(NSData *)data {
    uint8_t digest[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(data.bytes, (CC_LONG)data.length, digest);
    return [[self class] sam_stringFromDigest:digest length:CC_SHA1_DIGEST_LENGTH];
}

+ (NSString *)sam_stringFromDigest:(uint8_t *)digest length:(int)length {
    NSMutableString *ms = [[NSMutableString alloc] initWithCapacity:length * 2];
    for (int i = 0; i < length; i++) {
        [ms appendFormat: @"%02x", (int)digest[i]];
    }
    return [ms copy];
}

@end
