//
//  OHMReminderManager.h
//  ohmage_ios
//
//  Created by Charles Forkish on 5/12/14.
//  Copyright (c) 2014 VPD. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OHMReminder;

@interface OHMReminderManager : NSObject

+ (instancetype)sharedReminderManager;

- (void)updateScheduleForReminder:(OHMReminder *)reminder;
- (void)processFiredLocalNotification:(UILocalNotification *)notification;
- (void)processArrivalAtLocationForReminder:(OHMReminder *)reminder;
- (void)synchronizeReminders;
- (void)scheduleNotificationForReminder:(OHMReminder *)reminder;
- (void)unscheduleNotificationsForReminder:(OHMReminder *)reminder;
- (void)cancelAllNotificationsForLoggedInUser;

@end
