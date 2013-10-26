.class public Lcom/android/settings/SoundSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String;

.field public static final REVERB_URI:Landroid/net/Uri;

.field private static myContext:Landroid/content/Context;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

.field private mAutoHapticDialog:Landroid/app/AlertDialog;

.field mAutoHapticNoPopup:Z

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLoadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mPhoneProfile:Landroid/preference/Preference;

.field private mPhoneVibration:Landroid/preference/Preference;

.field private mProfileMode:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/DefaultRingtonePreference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSilentMode:Landroid/preference/ListPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

.field private mVibrateOnRing:Landroid/preference/CheckBoxPreference;

.field private mVolume:Lcom/android/settings/RingerVolumePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ringtone2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .line 177
    const-string v0, "content://com.android.settings.reverb.params"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SoundSettings;->REVERB_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 180
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 181
    iput-boolean v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 185
    iput v0, p0, Lcom/android/settings/SoundSettings;->mDirect:I

    .line 186
    iput-object v1, p0, Lcom/android/settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 193
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v0, Lcom/android/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$2;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SoundSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/SoundSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 511
    const-string v0, "off"

    :goto_0
    return-object v0

    .line 504
    :pswitch_0
    const-string v0, "off"

    goto :goto_0

    .line 506
    :pswitch_1
    const-string v0, "vibrate"

    goto :goto_0

    .line 508
    :pswitch_2
    const-string v0, "mute"

    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 617
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 618
    return-void
.end method

.method private setPhoneSilentSettingValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 484
    const/4 v1, 0x2

    .line 485
    .local v1, ringerMode:I
    const-string v3, "mute"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    const/4 v1, 0x0

    .line 490
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 492
    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 495
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "profile_silent"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 496
    const-string v3, "content://com.android.settings/profile"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 497
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 499
    .end local v0           #_uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 487
    :cond_3
    const-string v3, "vibrate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 488
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setPhoneVibrateSettingValue(Z)V
    .locals 4
    .parameter "vibeOnRing"

    .prologue
    const/4 v1, 0x1

    .line 477
    if-eqz p1, :cond_0

    move v0, v1

    .line 479
    .local v0, vibrateMode:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 480
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 481
    return-void

    .line 477
    .end local v0           #vibrateMode:I
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateRingtoneData()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 801
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/settings/SoundSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 805
    :cond_0
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 10
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 585
    if-nez p2, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 587
    .local v6, context:Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x10404a6

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 591
    .local v9, summary:Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 596
    :goto_1
    if-nez v1, :cond_3

    .line 597
    const v0, 0x10404a4

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 613
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 592
    :catch_0
    move-exception v8

    .line 593
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v0, "SoundSettings"

    const-string v2, "No data for ringtoneUri"

    invoke-static {v0, v2, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 601
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 603
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 604
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 605
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 607
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 609
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private updateState(Z)V
    .locals 14
    .parameter "force"

    .prologue
    const/4 v13, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v10

    .line 520
    .local v10, ringerMode:I
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v12

    .line 523
    .local v12, vibrateMode:I
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->updateDeviceVibrationName()V

    .line 526
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    if-ne v10, v13, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 527
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    if-ne v12, v2, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 528
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v5, "com.android.settings_reverb"

    invoke-virtual {v1, v5, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 533
    .local v6, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_2

    .line 534
    const-string v1, "enable"

    invoke-interface {v6, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 535
    .local v9, enable:Z
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 536
    if-eqz v9, :cond_8

    .line 537
    iput-boolean v2, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 542
    .end local v9           #enable:Z
    :cond_2
    :goto_3
    const-string v1, "CHN"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CHU"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 546
    :cond_3
    const-string v1, "off"

    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v5

    if-ne v1, v5, :cond_9

    .line 547
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 548
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 549
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 557
    :cond_4
    :goto_4
    const-string v1, "CTC"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    :cond_5
    iget v1, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    if-nez v1, :cond_a

    .line 560
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f0d0891

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 577
    :goto_5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 578
    .local v11, values:Landroid/content/ContentValues;
    const-string v1, "profile_silent"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 580
    .local v7, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v7, v11, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v7           #_uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_6
    move v1, v3

    .line 526
    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 527
    goto/16 :goto_2

    .line 539
    .restart local v6       #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .restart local v9       #enable:Z
    :cond_8
    iput-boolean v3, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    goto/16 :goto_3

    .line 551
    .end local v9           #enable:Z
    :cond_9
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 552
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 553
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4

    .line 561
    :cond_a
    iget v1, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    if-ne v1, v2, :cond_b

    .line 562
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f0d0a21

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 563
    :cond_b
    iget v1, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    if-ne v1, v13, :cond_c

    .line 564
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f0d0a22

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 565
    :cond_c
    iget v1, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_d

    .line 566
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f0d0a23

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 567
    :cond_d
    iget v1, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_e

    .line 568
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const v2, 0x7f0d0a24

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 570
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "content://com.android.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "profile_name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 572
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 573
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    const-string v2, "profile_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 574
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5
.end method


# virtual methods
.method public handleRingtonePicked(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 788
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    :cond_0
    const-string v0, "SoundSettings"

    const-string v1, "handleRingtonePicked() : Not changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->updateRingtoneData()V

    .line 798
    return-void

    .line 792
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 793
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 768
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 770
    packed-switch p1, :pswitch_data_0

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 772
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 773
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 774
    .local v0, pickedUri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_0

    .line 770
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 231
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 234
    .local v15, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 236
    .local v2, activePhoneType:I
    const-string v17, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/media/AudioManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 238
    const v17, 0x7f07005b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 242
    const-string v17, "category_calls_and_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 243
    .local v5, callAndNotiCategory:Landroid/preference/PreferenceCategory;
    if-eqz v5, :cond_0

    .line 244
    const v17, 0x7f0d06a2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 250
    .end local v5           #callAndNotiCategory:Landroid/preference/PreferenceCategory;
    :cond_0
    const-string v17, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->setObject(Lcom/android/settings/SoundSettings;)V

    .line 252
    const-string v17, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/RingerVolumePreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mVolume:Lcom/android/settings/RingerVolumePreference;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVolume:Lcom/android/settings/RingerVolumePreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/RingerVolumePreference;->setObject(Lcom/android/settings/SoundSettings;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 256
    .local v3, activity:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDirectUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/SoundSettings;->mDirect:I

    .line 259
    const-string v17, "Direct"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mDirect : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/SoundSettings;->mDirect:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const-string v18, "com.android.settings"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v17

    sput-object v17, Lcom/android/settings/SoundSettings;->myContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    :cond_2
    const-string v17, "silent_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    const-string v17, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 286
    :goto_1
    const-string v17, "gps_notification_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    const-string v17, "vibrate_on_ring"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 294
    const-string v17, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v17, "dtmf_tone"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 298
    const-string v17, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v17, "sound_effects_enabled"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    const-string v17, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v17, "haptic_feedback_enabled"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 306
    const-string v17, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const-string v17, "lockscreen_sounds_enabled"

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 311
    const-string v17, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 312
    const-string v17, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 313
    const-string v17, "ringtone2"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    .line 315
    const-string v17, "autohaptic_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mAutoHaptic:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 318
    const-string v17, "phone_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    .line 320
    const-string v17, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Vibrator;

    invoke-virtual/range {v17 .. v17}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v17

    if-nez v17, :cond_d

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "vibration_feedback_intensity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 339
    :cond_3
    :goto_6
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_4

    .line 340
    const-string v17, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    .line 342
    .local v8, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v17, "emergency_tone"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    .end local v8           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mRingtone2Preference:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 365
    const-string v17, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "phone_profile"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    .line 368
    const-string v17, "CTC"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "CHM"

    const-string v18, "ro.csc.sales_code"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPhoneProfile:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const-string v18, "musicfx"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 374
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v9, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 376
    .local v12, p:Landroid/content/pm/PackageManager;
    const/16 v17, 0x200

    move/from16 v0, v17

    invoke-virtual {v12, v9, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    .line 377
    .local v16, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 387
    sget-object v4, Lcom/android/settings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_7
    if-ge v10, v11, :cond_f

    aget-object v14, v4, v10

    .line 388
    .local v14, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 389
    .local v13, pref:Landroid/preference/Preference;
    if-eqz v13, :cond_7

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 267
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i:Landroid/content/Intent;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v12           #p:Landroid/content/pm/PackageManager;
    .end local v13           #pref:Landroid/preference/Preference;
    .end local v14           #prefKey:Ljava/lang/String;
    .end local v16           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v7

    .line 268
    .local v7, e:Ljava/lang/Exception;
    const-string v17, "SoundSettings"

    const-string v18, "GPS sound settings: error getting activity of create package context"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 283
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    .line 296
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 300
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 304
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 308
    :cond_c
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 328
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "vibration_feedback_intensity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 333
    .line 335
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 395
    .restart local v9       #i:Landroid/content/Intent;
    .restart local v12       #p:Landroid/content/pm/PackageManager;
    .restart local v16       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_f
    new-instance v17, Lcom/android/settings/SoundSettings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$3;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 413
    new-instance v17, Lcom/android/settings/SoundSettings$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$4;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mLoadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 420
    new-instance v17, Lcom/android/settings/SoundSettings$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SoundSettings$5;-><init>(Lcom/android/settings/SoundSettings;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SoundSettings;->mUnloadSoundEffectRunnable:Ljava/lang/Runnable;

    .line 429
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, download_contents:Ljava/lang/String;
    const-string v17, "Ringtone"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const-string v18, "download_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    :cond_10
    return-void
.end method

.method public onMusicPickerChosen()V
    .locals 2

    .prologue
    .line 781
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 782
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 785
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 466
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 469
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 671
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 672
    .local v5, key:Ljava/lang/String;
    const-string v9, "SoundSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceChange : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const-string v9, "emergency_tone"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 675
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 676
    .local v6, value:I
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "emergency_tone"

    invoke-static {v7, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    .end local v6           #value:I
    :cond_0
    :goto_0
    return v8

    .line 678
    :catch_0
    move-exception v2

    .line 679
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "SoundSettings"

    const-string v9, "could not persist emergency tone setting"

    invoke-static {v7, v9, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 681
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mVibrateOnRing:Landroid/preference/CheckBoxPreference;

    if-ne p1, v9, :cond_2

    .line 682
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/SoundSettings;->setPhoneVibrateSettingValue(Z)V

    goto :goto_0

    .line 683
    .restart local p2
    :cond_2
    iget-object v9, p0, Lcom/android/settings/SoundSettings;->mSilentMode:Landroid/preference/ListPreference;

    if-ne p1, v9, :cond_3

    .line 684
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/SoundSettings;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_3
    const-string v9, "autohaptic_settings"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 686
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 688
    .local v4, enable:Z
    if-eqz v4, :cond_4

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "com.android.settings_reverb"

    invoke-virtual {v9, v10, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 691
    .local v0, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_4

    .line 692
    const-string v9, "DoNotShowDialog"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 693
    .local v1, doNotShow:Z
    if-nez v1, :cond_4

    iget-boolean v9, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    if-nez v9, :cond_4

    .line 694
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->showGuideDialog()V

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 697
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v9, "com.ensight.android.radioalarm"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    const-string v9, "com.google.android.apps.books"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 699
    const-string v9, "com.samsung.SMT"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 700
    const-string v9, "com.google.android.tts"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 701
    const-string v9, "com.sec.android.app.dmb"

    const-string v10, "disabled"

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 702
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 706
    .end local v0           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v1           #doNotShow:Z
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_4
    iput-boolean v7, p0, Lcom/android/settings/SoundSettings;->mAutoHapticNoPopup:Z

    .line 707
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-ne v4, v8, :cond_5

    move v7, v8

    :cond_5
    const/4 v10, 0x6

    const/4 v11, -0x1

    invoke-static {v9, v7, v10, v11}, Lcom/android/settings/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 622
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    .line 623
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_2
    return v1

    :cond_1
    move v0, v1

    .line 623
    goto :goto_0

    .line 626
    :cond_2
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps_noti_sound_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mGpsNotificationSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    .line 633
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 634
    const-string v2, ""

    const-string v3, "KOR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 635
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 636
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 637
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 649
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 639
    :cond_5
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 643
    :cond_6
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 644
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    goto :goto_4

    .line 646
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_4

    :cond_8
    move v0, v1

    .line 649
    goto :goto_5

    .line 652
    :cond_9
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v0, v1

    goto :goto_6

    .line 656
    :cond_b
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_c
    move v0, v1

    goto :goto_7

    .line 660
    :cond_d
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 441
    iget v1, p0, Lcom/android/settings/SoundSettings;->mDirect:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 442
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mVolume:Lcom/android/settings/RingerVolumePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingerVolumePreference;->directVolume()V

    .line 447
    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/settings/SoundSettings;->mDirect:I

    .line 450
    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CHM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/SoundSettings;->mProfileMode:I

    .line 455
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 456
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->lookupRingtoneNames()V

    .line 458
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 462
    return-void

    .line 444
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_3
    iget v1, p0, Lcom/android/settings/SoundSettings;->mDirect:I

    if-ne v1, v4, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mRingtone:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->directRingtone()V

    goto :goto_0
.end method

.method public showGuideDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 714
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 715
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 717
    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 720
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 721
    const v2, 0x7f04004e

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 722
    const v0, 0x7f0a0030

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 724
    const v3, 0x7f0d0a7e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 725
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 726
    const v0, 0x7f0d0a7d

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 727
    const v0, 0x7f0d0542

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 729
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 730
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/SoundSettings$6;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SoundSettings$6;-><init>(Lcom/android/settings/SoundSettings;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 743
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 750
    if-nez v1, :cond_1

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 752
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v2, "vibration_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_0

    .line 760
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 761
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mPhoneVibration:Landroid/preference/Preference;

    const-string v2, "vibration_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 762
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
