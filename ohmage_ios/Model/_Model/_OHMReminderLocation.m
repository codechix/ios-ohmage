// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to OHMReminderLocation.m instead.

#import "_OHMReminderLocation.h"

const struct OHMReminderLocationAttributes OHMReminderLocationAttributes = {
	.hasCustomName = @"hasCustomName",
	.latitude = @"latitude",
	.longitude = @"longitude",
	.name = @"name",
	.radius = @"radius",
	.streetAddress = @"streetAddress",
	.uuid = @"uuid",
};

const struct OHMReminderLocationRelationships OHMReminderLocationRelationships = {
	.reminders = @"reminders",
	.user = @"user",
};

@implementation OHMReminderLocationID
@end

@implementation _OHMReminderLocation

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"OHMReminderLocation" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"OHMReminderLocation";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"OHMReminderLocation" inManagedObjectContext:moc_];
}

- (OHMReminderLocationID*)objectID {
	return (OHMReminderLocationID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	if ([key isEqualToString:@"hasCustomNameValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"hasCustomName"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"latitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"latitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"longitudeValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"longitude"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"radiusValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"radius"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}

@dynamic hasCustomName;

- (BOOL)hasCustomNameValue {
	NSNumber *result = [self hasCustomName];
	return [result boolValue];
}

- (void)setHasCustomNameValue:(BOOL)value_ {
	[self setHasCustomName:@(value_)];
}

- (BOOL)primitiveHasCustomNameValue {
	NSNumber *result = [self primitiveHasCustomName];
	return [result boolValue];
}

- (void)setPrimitiveHasCustomNameValue:(BOOL)value_ {
	[self setPrimitiveHasCustomName:@(value_)];
}

@dynamic latitude;

- (double)latitudeValue {
	NSNumber *result = [self latitude];
	return [result doubleValue];
}

- (void)setLatitudeValue:(double)value_ {
	[self setLatitude:@(value_)];
}

- (double)primitiveLatitudeValue {
	NSNumber *result = [self primitiveLatitude];
	return [result doubleValue];
}

- (void)setPrimitiveLatitudeValue:(double)value_ {
	[self setPrimitiveLatitude:@(value_)];
}

@dynamic longitude;

- (double)longitudeValue {
	NSNumber *result = [self longitude];
	return [result doubleValue];
}

- (void)setLongitudeValue:(double)value_ {
	[self setLongitude:@(value_)];
}

- (double)primitiveLongitudeValue {
	NSNumber *result = [self primitiveLongitude];
	return [result doubleValue];
}

- (void)setPrimitiveLongitudeValue:(double)value_ {
	[self setPrimitiveLongitude:@(value_)];
}

@dynamic name;

@dynamic radius;

- (float)radiusValue {
	NSNumber *result = [self radius];
	return [result floatValue];
}

- (void)setRadiusValue:(float)value_ {
	[self setRadius:@(value_)];
}

- (float)primitiveRadiusValue {
	NSNumber *result = [self primitiveRadius];
	return [result floatValue];
}

- (void)setPrimitiveRadiusValue:(float)value_ {
	[self setPrimitiveRadius:@(value_)];
}

@dynamic streetAddress;

@dynamic uuid;

@dynamic reminders;

- (NSMutableSet*)remindersSet {
	[self willAccessValueForKey:@"reminders"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"reminders"];

	[self didAccessValueForKey:@"reminders"];
	return result;
}

@dynamic user;

@end

