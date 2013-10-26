.class public Lcom/android/settings/LockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isWeatherEnabled:Z

.field private mAospLock:Landroid/preference/CheckBoxPreference;

.field private mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

.field private mClock:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mRippleEffect:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 502
    xor-int/lit8 p0, p0, 0x1

    .line 503
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 497
    or-int/lit8 p0, p0, 0x1

    .line 498
    return p0
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/LockScreenSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method private sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 531
    return-void
.end method

.method private supportRippleEffect()Z
    .locals 3

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.dual_lcd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 510
    .local v0, supportDualLcd:Z
    if-eqz v0, :cond_0

    .line 511
    const/4 v1, 0x1

    .line 513
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_clock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v1, v2, 0x1

    .line 223
    .local v1, mAppLockScreen:I
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_0

    .line 224
    if-ne v1, v3, :cond_7

    .line 225
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 230
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "dualclock_menu_settings"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_1

    .line 232
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "information_ticker"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lockscreen_wallpaper"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    move v0, v4

    .line 239
    .local v0, isLiveWallpaper:Z
    :goto_5
    if-eqz v0, :cond_c

    .line 240
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 243
    :goto_6
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "lockscreen_ripple_effect"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 245
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 246
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "unlock_text"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 248
    :cond_3
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mAospLock:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 249
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mAospLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "aosp_lock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_9
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 252
    :cond_4
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_5

    .line 253
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_shortcut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_10

    :goto_a
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 256
    :cond_5
    return-void

    .end local v0           #isLiveWallpaper:Z
    .end local v1           #mAppLockScreen:I
    :cond_6
    move v2, v4

    .line 218
    goto/16 :goto_0

    .line 227
    .restart local v1       #mAppLockScreen:I
    :cond_7
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    move v2, v4

    .line 230
    goto/16 :goto_2

    :cond_9
    move v2, v4

    .line 232
    goto/16 :goto_3

    :cond_a
    move v2, v4

    .line 235
    goto :goto_4

    :cond_b
    move v0, v3

    .line 238
    goto :goto_5

    .line 242
    .restart local v0       #isLiveWallpaper:Z
    :cond_c
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_6

    :cond_d
    move v2, v4

    .line 243
    goto :goto_7

    :cond_e
    move v2, v4

    .line 246
    goto :goto_8

    :cond_f
    move v2, v4

    .line 249
    goto :goto_9

    :cond_10
    move v3, v4

    .line 253
    goto :goto_a
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 476
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 477
    .local v3, ni:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 478
    const-string v5, "LockScreenSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    :goto_0
    return v4

    .line 481
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 482
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 484
    if-nez v3, :cond_2

    .line 485
    const-string v4, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 486
    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 491
    .local v1, isMobileAvail:Z
    const-string v6, "LockScreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 120
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 122
    const v5, 0x7f070036

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 125
    const-string v5, "lock_screen_shortcut"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    .line 126
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    const-string v5, "lock_screen_shortcut"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_a

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 128
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_0

    .line 131
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    :cond_0
    const-string v5, "clock"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    .line 139
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 141
    const-string v5, "weather"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    .line 142
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110047

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/LockScreenSettings;->isWeatherEnabled:Z

    .line 144
    iget-boolean v5, p0, Lcom/android/settings/LockScreenSettings;->isWeatherEnabled:Z

    if-nez v5, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_1
    const-string v5, "dualclock_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 150
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    const-string v5, "information_ticker"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    .line 153
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110045

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v5

    if-nez v5, :cond_3

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    const-string v5, "camera_short_cut"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 163
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_4

    .line 164
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    const-string v5, "LockScreenSettings"

    const-string v8, " remove Dualclock menu"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_5
    const-string v5, "ripple_effect"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    .line 178
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0b69

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0ba1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    const-string v5, "help_text"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 181
    const-string v5, "say_your_wakeup"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/LockScreenSettings;->mAospLock:Landroid/preference/CheckBoxPreference;

    .line 183
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mAospLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0b90

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v8, 0x140

    if-eq v5, v8, :cond_6

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->supportRippleEffect()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_7

    .line 190
    .line 194
    :cond_7
    const-string v5, "set_wakeup_command"

    invoke-virtual {p0, v5}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 195
    .local v3, setWakeupCommand:Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 196
    .local v4, set_wakeup_commant_intent:Landroid/content/Intent;
    if-eqz v4, :cond_9

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 198
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v4, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_9

    .line 200
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mAospLock:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_8

    .line 202
    :cond_8
    if-eqz v3, :cond_9

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :cond_9
    return-void

    .end local v3           #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .end local v4           #set_wakeup_commant_intent:Landroid/content/Intent;
    :cond_a
    move v5, v7

    .line 127
    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 289
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, key:Ljava/lang/String;
    const-string v10, "dualclock_settings"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 291
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    move v7, v8

    .line 292
    .local v7, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dualclock_menu_settings"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 427
    .end local v7           #value:I
    :cond_0
    :goto_1
    return v8

    :cond_1
    move v7, v9

    .line 291
    goto :goto_0

    .line 293
    .restart local p2
    :cond_2
    const-string v10, "information_ticker"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    move-object v7, p2

    .line 294
    check-cast v7, Ljava/lang/Boolean;

    .line 300
    .local v7, value:Ljava/lang/Boolean;
    const-string v10, "CHN"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CHM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CHU"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "CTC"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 304
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 309
    .local v5, mAppServiceStatus:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 316
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 320
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 372
    :goto_4
    invoke-direct {p0, v7}, Lcom/android/settings/LockScreenSettings;->sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "information_ticker"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    move v9, v8

    :cond_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 375
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 307
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "sn_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_2

    .line 314
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_3

    .line 322
    .end local v5           #mAppServiceStatus:I
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 323
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 328
    .restart local v5       #mAppServiceStatus:I
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 335
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .restart local v2       #intent_nw:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v11, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 326
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_5

    .line 333
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_6

    .line 346
    .end local v5           #mAppServiceStatus:I
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 351
    .restart local v5       #mAppServiceStatus:I
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 358
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 360
    new-instance v2, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .restart local v2       #intent_nw:Landroid/content/Intent;
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, salesCode:Ljava/lang/String;
    const-string v10, "DCM"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 363
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.daemonapp.ap.camobile"

    const-string v11, "com.sec.android.daemonapp.ap.camobile.DaemonReceiver"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 367
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 368
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 349
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    .end local v6           #salesCode:Ljava/lang/String;
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "yh_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_7

    .line 356
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_8

    .line 377
    .end local v5           #mAppServiceStatus:I
    .end local v7           #value:Ljava/lang/Boolean;
    :cond_e
    const-string v10, "weather"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    move-object v7, p2

    .line 378
    check-cast v7, Ljava/lang/Boolean;

    .line 379
    .restart local v7       #value:Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->checkNetwork()Z

    move-result v10

    if-nez v10, :cond_f

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0d0819

    invoke-static {v10, v11, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 382
    :cond_f
    const-string v10, "CHN"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "CHM"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "CHU"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "CTC"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 386
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "network"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 387
    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v10, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 389
    new-instance v1, Landroid/content/Intent;

    const-string v9, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, gpsOptionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 396
    .end local v1           #gpsOptionIntent:Landroid/content/Intent;
    :cond_10
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 401
    .restart local v5       #mAppServiceStatus:I
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 403
    const-string v9, "CHN"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "CHM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "CHU"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 407
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    :goto_a
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 399
    .end local v5           #mAppServiceStatus:I
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_9

    .line 408
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_14

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    .line 411
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    .line 416
    .end local v5           #mAppServiceStatus:I
    .end local v7           #value:Ljava/lang/Boolean;
    :cond_15
    const-string v10, "lock_screen_shortcut"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 417
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_16

    move v7, v8

    .line 418
    .local v7, value:I
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_shortcut"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v7           #value:I
    :cond_16
    move v7, v9

    .line 417
    goto :goto_b

    .line 422
    .restart local p2
    :cond_17
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v9, :cond_0

    .line 423
    const-string v9, "LockScreenSettings"

    const-string v10, "onPreferenceChange, mCameraShortCut"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->setCameraShortCut(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 260
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_clock"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 262
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 285
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    move v2, v3

    .line 261
    goto :goto_0

    .line 263
    :cond_2
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 264
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 265
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v3, "SETTING_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinaweather"

    const-string v3, "com.sec.android.daemonapp.ap.sinaweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .local v0, cn:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 276
    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 270
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.kweather"

    const-string v3, "com.sec.android.daemonapp.ap.kweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 273
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.accuweather"

    const-string v3, "com.sec.android.daemonapp.ap.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 278
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_3

    .line 280
    :cond_7
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto :goto_4

    .line 282
    :cond_9
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mAospLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "aosp_lock"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mAospLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v2, v3

    goto :goto_5
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 213
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 214
    return-void
.end method

.method public setCameraShortCut(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 432
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 433
    .local v0, int_value:I
    :goto_0
    if-eqz p1, :cond_3

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    :goto_1
    return-void

    .end local v0           #int_value:I
    :cond_0
    move v0, v1

    .line 432
    goto :goto_0

    .line 437
    .restart local v0       #int_value:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 439
    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 442
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d092a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d08d8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0542

    new-instance v3, Lcom/android/settings/LockScreenSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/LockScreenSettings$1;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 455
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/LockScreenSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LockScreenSettings$2;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 462
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
