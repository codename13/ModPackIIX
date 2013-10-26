.class public Lcom/android/settings/sleepmode/SleepingMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SleepingMode.java"


# static fields
.field public static final SYNC_NOTIFICATION:Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mSleepingMode:Landroid/preference/CheckBoxPreference;

.field private mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/sleepmode/SleepingMode;->SYNC_NOTIFICATION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    const-string v0, "SleepingMode"

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->TAG:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/android/settings/sleepmode/SleepingMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sleepmode/SleepingMode$1;-><init>(Lcom/android/settings/sleepmode/SleepingMode;)V

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sleepmode/SleepingMode;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sleepmode/SleepingMode;)Lcom/android/settings/sleepmode/SleepingModePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    return-object v0
.end method

.method private static calculateAlarm(II)Ljava/util/Calendar;
    .locals 8
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x0

    .line 481
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 482
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 484
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 485
    .local v1, nowHour:I
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 488
    .local v2, nowMinute:I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 490
    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 492
    :cond_1
    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 493
    invoke-virtual {v0, v7, p1}, Ljava/util/Calendar;->set(II)V

    .line 494
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 495
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 497
    return-object v0
.end method

.method public static cancelNotifySleepingMode(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 414
    sget-object v2, Lcom/android/settings/sleepmode/SleepingMode;->SYNC_NOTIFICATION:Ljava/lang/Object;

    monitor-enter v2

    .line 415
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 418
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 419
    monitor-exit v2

    .line 420
    return-void

    .line 419
    .end local v0           #nm:Landroid/app/NotificationManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z
    .locals 11
    .parameter "context"
    .parameter "calendar"

    .prologue
    const/16 v10, 0xb

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 291
    invoke-virtual {p1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 292
    .local v2, hour:I
    const/16 v9, 0xc

    invoke-virtual {p1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 294
    .local v3, minute:I
    const-string v9, "key_sleeping_mode_pref"

    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 296
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v9, "key_start_hour"

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 297
    .local v4, sh:I
    const-string v9, "key_start_minute"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 298
    .local v5, sm:I
    const-string v9, "key_end_hour"

    const/4 v10, 0x7

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 299
    .local v0, eh:I
    const-string v9, "key_end_minute"

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 301
    .local v1, em:I
    if-ge v4, v0, :cond_4

    .line 302
    if-ge v4, v2, :cond_1

    if-le v0, v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v7

    .line 304
    :cond_1
    if-ne v4, v2, :cond_3

    .line 305
    if-ge v3, v5, :cond_0

    :cond_2
    move v7, v8

    .line 337
    goto :goto_0

    .line 307
    :cond_3
    if-ne v0, v2, :cond_2

    .line 308
    if-ge v3, v1, :cond_2

    goto :goto_0

    .line 312
    :cond_4
    if-le v4, v0, :cond_6

    .line 313
    if-lt v4, v2, :cond_0

    if-gt v0, v2, :cond_0

    .line 315
    if-ne v4, v2, :cond_5

    .line 316
    if-lt v3, v5, :cond_2

    goto :goto_0

    .line 318
    :cond_5
    if-ne v0, v2, :cond_2

    .line 319
    if-ge v3, v1, :cond_2

    goto :goto_0

    .line 323
    :cond_6
    if-ne v4, v0, :cond_2

    .line 324
    if-ne v4, v2, :cond_2

    .line 325
    if-ge v5, v1, :cond_7

    .line 326
    if-gt v5, v3, :cond_2

    if-le v1, v3, :cond_2

    goto :goto_0

    .line 329
    :cond_7
    if-le v5, v1, :cond_2

    .line 330
    if-le v5, v3, :cond_0

    if-le v1, v3, :cond_2

    goto :goto_0
.end method

.method public static modeWillChange(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 282
    const-string v4, "key_sleeping_mode_pref"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 284
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v4, "sleeping_mode_enabled"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 286
    .local v1, isCurrentEntered:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 287
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {p0, v0}, Lcom/android/settings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v4

    if-eq v4, v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static notifySleepingMode(Landroid/content/Context;I)V
    .locals 18
    .parameter
    .parameter

    .prologue
    .line 347
    sget-object v3, Lcom/android/settings/sleepmode/SleepingMode;->SYNC_NOTIFICATION:Ljava/lang/Object;

    monitor-enter v3

    .line 349
    :try_start_0
    const-string v1, "key_sleeping_mode_pref"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 353
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "notification"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 356
    const-string v4, "key_sleeping_mode_is_set"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 357
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 358
    monitor-exit v3

    .line 411
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v4, "key_start_hour"

    const/16 v5, 0xb

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 362
    const-string v5, "key_start_minute"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 363
    const-string v6, "key_end_hour"

    const/4 v7, 0x7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 364
    const-string v7, "key_end_minute"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 367
    if-eqz p1, :cond_2

    .line 368
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 369
    const-string v9, "sleeping_mode_enabled"

    const v2, 0x7f0d0a77

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 383
    :goto_2
    const v2, 0x7f0d0a78

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 384
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 385
    monitor-exit v3

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 369
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 372
    :cond_2
    :try_start_1
    const-string v8, "sleeping_mode_enabled"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 373
    const p1, 0x7f0d0a77

    .line 377
    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 378
    const-string v9, "sleeping_mode_enabled"

    const v2, 0x7f0d0a77

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    const/4 v2, 0x1

    :goto_4
    invoke-interface {v8, v9, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 379
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 375
    :cond_3
    const p1, 0x7f0d0a78

    goto :goto_3

    .line 378
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 389
    :cond_5
    const v2, 0x108002b

    .line 390
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0d0a79

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/android/settings/sleepmode/SleepingMode;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "~"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/settings/sleepmode/SleepingMode;->timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 399
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/sleepmode/SleepingMode;

    invoke-direct {v5, v11, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 401
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 402
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 403
    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 404
    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 405
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 406
    invoke-virtual {v6, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 407
    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-static {v11, v2, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 409
    const/16 v2, 0x8

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 410
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public static registerSleepingMode(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/high16 v12, 0x1000

    const/4 v11, 0x0

    .line 437
    const-string v9, "key_sleeping_mode_pref"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 439
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v9, "key_start_hour"

    const/16 v10, 0x17

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 440
    .local v5, sh:I
    const-string v9, "key_start_minute"

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 441
    .local v6, sm:I
    const-string v9, "key_end_hour"

    const/4 v10, 0x7

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 442
    .local v1, eh:I
    const-string v9, "key_end_minute"

    invoke-interface {v7, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 444
    .local v2, em:I
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 447
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v8, startIntent:Landroid/content/Intent;
    invoke-static {p0, v11, v8, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 451
    .local v4, sender:Landroid/app/PendingIntent;
    invoke-static {v5, v6}, Lcom/android/settings/sleepmode/SleepingMode;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v0, v11, v9, v10, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 454
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    .local v3, endIntent:Landroid/content/Intent;
    invoke-static {p0, v11, v3, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 458
    invoke-static {v1, v2}, Lcom/android/settings/sleepmode/SleepingMode;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v0, v11, v9, v10, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 459
    return-void
.end method

.method public static timeFormatToString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v5, 0xc

    .line 256
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 257
    .local v0, is24H:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0a7b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, mAmPm:Ljava/lang/String;
    move v2, p1

    .line 260
    .local v2, mHour:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p1, 0xa

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    :goto_2
    return-object v3

    .line 261
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 264
    :cond_2
    if-lt p1, v5, :cond_3

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0a7c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    if-le p1, v5, :cond_3

    add-int/lit8 v2, p1, -0xc

    .line 269
    :cond_3
    if-nez p1, :cond_4

    const/16 v2, 0xc

    .line 271
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4
.end method

.method public static unregisterSleepingMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/high16 v7, 0x1000

    const/4 v6, 0x0

    .line 462
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 464
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 466
    .local v1, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 468
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 472
    const-string v4, "key_sleeping_mode_pref"

    invoke-virtual {p0, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 474
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 475
    .local v3, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "sleeping_mode_enabled"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 476
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 477
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v2}, Lcom/android/settings/sleepmode/SleepingModePreference;->updateSleepingMode()V

    .line 232
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v2}, Lcom/android/settings/sleepmode/SleepingModePreference;->refreshSleepingModeList()V

    .line 234
    if-nez p1, :cond_0

    .line 235
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/sleepmode/SleepingMode;->registerSleepingMode(Landroid/content/Context;)V

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ext_key_set_by_user"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v3, "key_sleeping_mode_is_set"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 242
    .local v1, isSleepingModeChecked:Z
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 246
    :cond_2
    if-eqz v1, :cond_3

    .line 247
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v2, v5}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    goto :goto_0

    .line 249
    :cond_3
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v2, v4}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f070059

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->addPreferencesFromResource(I)V

    .line 89
    const-string v1, "toggle_sleeping_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    .line 90
    const-string v1, "sleeping_mode_pref"

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sleepmode/SleepingModePreference;

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "key_sleeping_mode_pref"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 93
    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v2, "key_sleeping_mode_is_set"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 96
    .local v0, isSleepingModeChecked:Z
    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sleepmode/SleepingMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_sleeping_mode_is_set"

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 190
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingMode;->modeWillChange(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingMode;->registerSleepingMode(Landroid/content/Context;)V

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v1, "ext_key_set_by_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_sleeping_mode_is_set"

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/sleepmode/SleepingModePreference;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "sleeping_mode_enabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "previous_flight_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 212
    if-nez v0, :cond_1

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "ext_key_set_by_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingMode;->mSleepingModePref:Lcom/android/settings/sleepmode/SleepingModePreference;

    if-ne p2, v0, :cond_1

    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/sleepmode/SleepingModeEditor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/sleepmode/SleepingMode;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method
