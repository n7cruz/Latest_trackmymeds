//
//  MagicalRecord+Options.m
//  Magical Record
//


#import "MagicalRecord+Options.h"

#ifdef DEBUG
static MagicalRecordLoggingLevel kMagicalRecordLoggingLevel = MagicalRecordLoggingLevelDebug;
#else
static MagicalRecordLoggingLevel kMagicalRecordLoggingLevel = MagicalRecordLoggingLevelError;
#endif
static BOOL kMagicalRecordShouldAutoCreateManagedObjectModel = NO;
static BOOL kMagicalRecordShouldAutoCreateDefaultPersistentStoreCoordinator = NO;
static BOOL kMagicalRecordShouldDeleteStoreOnModelMismatch = NO;

@implementation MagicalRecord (Options)

#pragma mark - Configuration Options

+ (BOOL) shouldAutoCreateManagedObjectModel;
{
    return kMagicalRecordShouldAutoCreateManagedObjectModel;
}

+ (void) setShouldAutoCreateManagedObjectModel:(BOOL)autoCreate;
{
    kMagicalRecordShouldAutoCreateManagedObjectModel = autoCreate;
}

+ (BOOL) shouldAutoCreateDefaultPersistentStoreCoordinator;
{
    return kMagicalRecordShouldAutoCreateDefaultPersistentStoreCoordinator;
}

+ (void) setShouldAutoCreateDefaultPersistentStoreCoordinator:(BOOL)autoCreate;
{
    kMagicalRecordShouldAutoCreateDefaultPersistentStoreCoordinator = autoCreate;
}

+ (BOOL) shouldDeleteStoreOnModelMismatch;
{
    return kMagicalRecordShouldDeleteStoreOnModelMismatch;
}

+ (void) setShouldDeleteStoreOnModelMismatch:(BOOL)shouldDelete;
{
    kMagicalRecordShouldDeleteStoreOnModelMismatch = shouldDelete;
}

+ (MagicalRecordLoggingLevel) loggingLevel;
{
    return kMagicalRecordLoggingLevel;
}

+ (void) setLoggingLevel:(MagicalRecordLoggingLevel)level;
{
    kMagicalRecordLoggingLevel = level;
}

@end