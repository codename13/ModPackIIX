.class public Lcom/android/settings/SecuritySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$7;,
        Lcom/android/settings/SecuritySettings$PWState;
    }
.end annotation


# static fields
.field private static mNewOrientation:I

.field private static mOldOrientation:I

.field private static mRequestCode:I

.field private static mResultCode:I


# instance fields
.field private ChangingSIMAlert:Landroid/preference/Preference;

.field private RemoteControls:Landroid/preference/Preference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisableADB:Landroid/preference/CheckBoxPreference;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenOptions:Landroid/preference/PreferenceScreen;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/android/settings/SecuritySettings$PWState;

.field private mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mSimLockPreferences:Landroid/preference/PreferenceCategory;

.field private mSimState:I

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private mWithCircle:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 170
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDisableADB:Landroid/preference/CheckBoxPreference;

    .line 990
    new-instance v0, Lcom/android/settings/SecuritySettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$6;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private SetFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0d000f

    const/16 v3, 0x64

    .line 883
    sget-object v0, Lcom/android/settings/SecuritySettings$7;->$SwitchMap$com$android$settings$SecuritySettings$PWState:[I

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings$PWState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 911
    :goto_0
    return-void

    .line 885
    :pswitch_0
    const-string v0, ".password"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    .line 886
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CONFIRM:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 888
    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0011

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 893
    :pswitch_1
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 894
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2new phone password = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mNewPassword:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 901
    :pswitch_2
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->NEW:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 902
    invoke-virtual {p0, v4}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d000e

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private StartPassword()V
    .locals 4

    .prologue
    const v2, 0x7f0d000f

    .line 859
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    if-nez v0, :cond_0

    .line 862
    sget-object v0, Lcom/android/settings/SecuritySettings$PWState;->NEW:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 863
    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d000e

    invoke-virtual {p0, v1}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d001c

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 870
    :goto_0
    return-void

    .line 866
    :cond_0
    sget-object v1, Lcom/android/settings/SecuritySettings$PWState;->CURRENT:Lcom/android/settings/SecuritySettings$PWState;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mPWState:Lcom/android/settings/SecuritySettings$PWState;

    .line 867
    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0010

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/settings/SecuritySettings;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/SecuritySettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings;->updateSIMLockEnable(Z)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 14

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 214
    .local v8, root:Landroid/preference/PreferenceScreen;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    iput v11, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    .line 216
    if-eqz v8, :cond_0

    .line 217
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 219
    :cond_0
    const v11, 0x7f070048

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 223
    const/4 v7, 0x0

    .line 224
    .local v7, resid:I
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_12

    .line 225
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 226
    const v7, 0x7f07004d

    .line 253
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 282
    const-string v11, "device_policy"

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 285
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 303
    :goto_1
    :pswitch_0
    new-instance v4, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 304
    .local v4, epm:Lcom/android/settings/encryption/EncryptionPreferenceManager;
    invoke-virtual {v4}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 305
    const v11, 0x7f070053

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 308
    :cond_1
    const-string v11, "lock_after_timeout"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 309
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v11, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->setupLockAfterPreference()V

    .line 311
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 315
    :cond_2
    const-string v11, "visiblepattern"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 318
    const-string v11, "power_button_instantly_locks"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 322
    const v11, 0x7f070049

    if-eq v7, v11, :cond_3

    const v11, 0x7f070054

    if-ne v7, v11, :cond_4

    :cond_3
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    const/high16 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 325
    const-string v11, "security_category"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 327
    .local v9, securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v9, :cond_4

    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_4

    .line 328
    const-string v11, "visiblepattern"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    .end local v9           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_4
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_5

    .line 334
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 335
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 341
    :cond_5
    const-string v11, "visiblesignature"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 342
    const-string v11, "signature_verification_level"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 343
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v11, :cond_6

    .line 344
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/settings/SecuritySettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 348
    :cond_6
    const-string v11, "with_circle"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    .line 350
    const-string v11, "lock_screen_options"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceScreen;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    .line 352
    const-string v11, "unlock_tactile_feedback"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 353
    const-string v11, "vibrator"

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-nez v11, :cond_7

    .line 354
    const-string v11, "security_category"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 356
    .restart local v9       #securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v9, :cond_7

    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_7

    .line 357
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    .end local v9           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_7
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_17

    .line 363
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v11

    if-nez v11, :cond_16

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_motion_tilt_to_unlock"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_8

    .line 365
    const-string v11, "unlock_set_or_change"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 366
    .local v2, configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    const v11, 0x7f0d08d6

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 386
    .end local v2           #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    :cond_8
    :goto_2
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 387
    .local v1, LostPhonePreferences:Landroid/preference/PreferenceCategory;
    const v11, 0x7f0d07f1

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 388
    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 390
    new-instance v11, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    .line 391
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    const v12, 0x7f0d07f8

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 392
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    new-instance v12, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v12, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 406
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 408
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->RemoteControls:Landroid/preference/Preference;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 411
    :cond_9
    const-string v11, "CTC"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 413
    new-instance v11, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    .line 414
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    const-string v12, "SIMAlert"

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 415
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    const v12, 0x7f0d07f2

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 416
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    new-instance v12, Lcom/android/settings/SecuritySettings$3;

    invoke-direct {v12, p0}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 428
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    invoke-virtual {v1, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 431
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    if-eqz v11, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 433
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->ChangingSIMAlert:Landroid/preference/Preference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 436
    :cond_c
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 437
    .local v0, GoToSamsungDive:Landroid/preference/Preference;
    const v11, 0x7f0d080e

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 438
    new-instance v11, Lcom/android/settings/SecuritySettings$4;

    invoke-direct {v11, p0}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 451
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 453
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 457
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_DisableMenuFindMyMobile"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    .line 458
    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 462
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    .line 465
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0d000d

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 467
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 468
    .local v6, phonePasswordCat:Landroid/preference/PreferenceCategory;
    const v11, 0x7f0d000c

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 469
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 470
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 522
    .end local v6           #phonePasswordCat:Landroid/preference/PreferenceCategory;
    :cond_f
    const v11, 0x7f07004e

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 525
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    .line 526
    .local v10, tm:Landroid/telephony/TelephonyManager;
    const/4 v11, 0x2

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v12

    if-ne v11, v12, :cond_10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_19

    .line 530
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 531
    const-string v11, "sim_lock"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 548
    :goto_3
    const-string v11, "show_password"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 551
    const-string v11, "reset_credentials"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 553
    const-string v11, "toggle_install_applications"

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 555
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 557
    return-object v8

    .line 228
    .end local v0           #GoToSamsungDive:Landroid/preference/Preference;
    .end local v1           #LostPhonePreferences:Landroid/preference/PreferenceCategory;
    .end local v3           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #epm:Lcom/android/settings/encryption/EncryptionPreferenceManager;
    .end local v10           #tm:Landroid/telephony/TelephonyManager;
    :cond_11
    const v7, 0x7f07004a

    goto/16 :goto_0

    .line 230
    :cond_12
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 232
    const v7, 0x7f070049

    goto/16 :goto_0

    .line 233
    :cond_13
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 235
    const v7, 0x7f070054

    goto/16 :goto_0

    .line 237
    :cond_14
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 251
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_motion_tilt_to_unlock"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 239
    :sswitch_0
    const v7, 0x7f070050

    .line 240
    goto :goto_4

    .line 242
    :sswitch_1
    const v7, 0x7f070052

    .line 243
    goto :goto_4

    .line 247
    :sswitch_2
    const v7, 0x7f07004f

    goto :goto_4

    .line 289
    .restart local v3       #dpm:Landroid/app/admin/DevicePolicyManager;
    :pswitch_1
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_15

    .line 290
    const v11, 0x7f07004c

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 292
    :cond_15
    const v11, 0x7f07004b

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 298
    :pswitch_2
    const v11, 0x7f070055

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 369
    .restart local v4       #epm:Lcom/android/settings/encryption/EncryptionPreferenceManager;
    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_motion_tilt_to_unlock"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 372
    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_motion_tilt_to_unlock"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_screen_face_with_voice"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 376
    .local v5, isfacevalue:I
    const/4 v11, 0x1

    if-ne v5, v11, :cond_18

    .line 377
    const-string v11, "unlock_set_or_change"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 378
    .restart local v2       #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    const v11, 0x7f0d0164

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 380
    .end local v2           #configureLockScreenPreference:Landroid/preference/PreferenceScreen;
    :cond_18
    const-string v11, "SecuritySettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 528
    .end local v5           #isfacevalue:I
    .restart local v0       #GoToSamsungDive:Landroid/preference/Preference;
    .restart local v1       #LostPhonePreferences:Landroid/preference/PreferenceCategory;
    .restart local v10       #tm:Landroid/telephony/TelephonyManager;
    :cond_19
    const-string v11, "sim_lock"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 536
    :cond_1a
    const-string v11, "USC"

    const-string v12, "ro.csc.sales_code"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 537
    const-string v11, "sim_lock"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 540
    :cond_1b
    const-string v11, "sim_lock"

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    .line 541
    iget v11, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    if-eqz v11, :cond_1c

    iget v11, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1d

    .line 542
    :cond_1c
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_3

    .line 544
    :cond_1d
    iget-object v12, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_1e

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_1e
    const/4 v11, 0x0

    goto :goto_5

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 14
    .parameter "maxTimeout"

    .prologue
    .line 655
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 656
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 657
    .local v9, values:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v4, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v5, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v10, v9

    if-ge v1, v10, :cond_1

    .line 660
    aget-object v10, v9, v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 661
    .local v6, timeout:J
    cmp-long v10, v6, p1

    if-gtz v10, :cond_0

    .line 662
    aget-object v10, v0, v1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    aget-object v10, v9, v1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    .end local v6           #timeout:J
    :cond_1
    const-string v10, "SecuritySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "revisedValues.size() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v2, p1, v10

    .line 670
    .local v2, last_timeout:J
    const-string v10, "SecuritySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "last_timeout : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_2

    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v9, v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, p1, v10

    if-gez v10, :cond_2

    .line 672
    const v10, 0x7f0d0a37

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/SecuritySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_2
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 679
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 681
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 682
    .local v8, userPreference:I
    int-to-long v10, v8

    cmp-long v10, v10, p1

    if-gtz v10, :cond_3

    .line 683
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 692
    :goto_1
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 694
    return-void

    .line 685
    :cond_3
    const-string v10, "SecuritySettings"

    const-string v11, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 692
    :cond_4
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 1061
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1062
    div-long v2, v0, v4

    .line 1063
    rem-long v4, v0, v4

    .line 1065
    const-string v0, ""

    .line 1066
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100006

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100007

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    :cond_2
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    return-object v0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1082
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 1083
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1084
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 1087
    :cond_0
    return v1

    .line 1083
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 915
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 569
    return-void

    .line 567
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 601
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f0400bd

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 602
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 603
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 604
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 605
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 607
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 611
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 613
    :cond_0
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 604
    goto :goto_0
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 13
    .parameter "isUpdate"

    .prologue
    const/4 v11, 0x1

    .line 697
    if-nez p1, :cond_0

    .line 698
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f0400bd

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 699
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_signature_verification_level"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 705
    .local v1, currentLevel:I
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 707
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 708
    .local v2, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 710
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 711
    .local v0, best:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_2

    .line 712
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 713
    .local v4, level:J
    int-to-long v8, v1

    cmp-long v8, v8, v4

    if-nez v8, :cond_1

    .line 714
    move v0, v3

    .line 711
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    .end local v4           #level:J
    :cond_2
    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 720
    .local v6, levelString:Ljava/lang/String;
    const-string v8, "SecuritySettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get signature verification level: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v9, 0x7f0d0a58

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 723
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 22

    .prologue
    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "lock_screen_lock_after_timeout"

    const-wide/16 v19, 0x1388

    invoke-static/range {v17 .. v20}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 619
    .local v6, currentTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 620
    .local v10, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v16

    .line 621
    .local v16, values:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 622
    .local v5, best:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    .line 623
    aget-object v17, v16, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 624
    .local v14, timeout:J
    cmp-long v17, v6, v14

    if-ltz v17, :cond_0

    .line 625
    move v5, v11

    .line 622
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 630
    .end local v14           #timeout:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 631
    .local v3, adminTimeout:J
    :goto_1
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "screen_off_timeout"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    int-to-long v8, v0

    .line 632
    .local v8, displayTimeout:J
    const-wide/16 v17, 0x0

    sub-long v19, v3, v8

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 634
    .local v12, maxTimeout:J
    aget-object v17, v16, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v17, v17, v12

    if-gez v17, :cond_3

    cmp-long v17, v12, v6

    if-gez v17, :cond_3

    .line 635
    const-string v17, "SecuritySettings"

    const-string v18, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0d0139

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/SecuritySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 652
    :goto_2
    return-void

    .line 630
    .end local v3           #adminTimeout:J
    .end local v8           #displayTimeout:J
    .end local v12           #maxTimeout:J
    :cond_2
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 639
    .restart local v3       #adminTimeout:J
    .restart local v8       #displayTimeout:J
    .restart local v12       #maxTimeout:J
    :cond_3
    if-nez v5, :cond_4

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0d0a36

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v10, v5

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 642
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/settings/SecuritySettings;->isInDefaultTimeoutList(J)Z

    move-result v17

    if-eqz v17, :cond_6

    cmp-long v17, v6, v12

    if-ltz v17, :cond_5

    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-nez v17, :cond_6

    .line 643
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0d0139

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v10, v5

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 645
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0d0139

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/settings/SecuritySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private updateSIMLockEnable(Z)V
    .locals 4
    .parameter "isAirplaneModeOn"

    .prologue
    const/4 v2, 0x0

    .line 967
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_0

    .line 988
    :goto_0
    return-void

    .line 968
    :cond_0
    if-eqz p1, :cond_1

    .line 969
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 973
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 974
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/SecuritySettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 573
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0482

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0512

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 580
    return-void
.end method


# virtual methods
.method public moveRemoteControls()V
    .locals 11

    .prologue
    const v3, 0x7f0d07f8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1030
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1032
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1034
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1035
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 1036
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 1038
    const-string v5, "pref_due_date"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1039
    invoke-virtual {v2, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    iget-wide v9, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v7, v8, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1041
    if-eqz v1, :cond_0

    if-ge v1, v2, :cond_1

    .line 1042
    :cond_0
    const-class v1, Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0d07fc

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1051
    :goto_0
    return-void

    .line 1044
    :cond_1
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    const-class v1, Lcom/android/settings/fmm/TabletRemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1048
    :cond_2
    const-class v1, Lcom/android/settings/fmm/RemoteControls;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 923
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 924
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    sput p1, Lcom/android/settings/SecuritySettings;->mRequestCode:I

    .line 928
    sput p2, Lcom/android/settings/SecuritySettings;->mResultCode:I

    .line 930
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_1

    if-ne p2, v3, :cond_1

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 938
    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    const/16 v0, 0x66

    if-ne p1, v0, :cond_3

    .line 940
    :cond_2
    if-ne p2, v3, :cond_3

    .line 941
    invoke-direct {p0, p3}, Lcom/android/settings/SecuritySettings;->SetFirstTimePhonepassword(Landroid/content/Intent;)V

    .line 947
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 949
    const-string v0, "PCW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_4

    .line 953
    if-ne p2, v3, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 955
    const-class v1, Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f0d07f2

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 958
    :cond_4
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    .line 959
    if-ne p2, v3, :cond_0

    .line 960
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->moveRemoteControls()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 583
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 584
    invoke-direct {p0, v1}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 585
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 587
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 196
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 198
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 203
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->mOldOrientation:I

    .line 210
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 591
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 592
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 595
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 790
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->mOldOrientation:I

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 795
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 998
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 999
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1001
    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/SecuritySettings;->isInDefaultTimeoutList(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1002
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_after_timeout_rollback"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1008
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_lock_after_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 1025
    :cond_0
    :goto_2
    return v3

    .line 1004
    :cond_1
    const v0, 0x1b7741

    goto :goto_0

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist lockAfter timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 1015
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1017
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_signature_verification_level"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1023
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/settings/SecuritySettings;->setupSignatureVerificationLevelPreference(Z)V

    goto :goto_2

    .line 1019
    :catch_1
    move-exception v0

    .line 1020
    const-string v1, "SecuritySettings"

    const-string v2, "could not persist signature verification level setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 799
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 801
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 802
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 803
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v2, 0x7b

    invoke-virtual {p0, p0, v0, v2, v5}, Lcom/android/settings/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 848
    :cond_0
    :goto_0
    return v1

    .line 805
    :cond_1
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 806
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 808
    const/16 v2, 0x7c

    invoke-virtual {v0, v2, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 812
    :cond_2
    const-string v4, "lockenabled"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 813
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 814
    :cond_3
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 815
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 816
    :cond_4
    const-string v4, "visiblesignature"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 817
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto :goto_0

    .line 818
    :cond_5
    const-string v4, "with_circle"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "with_circle"

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 821
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 822
    :cond_7
    const-string v4, "unlock_tactile_feedback"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 823
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto/16 :goto_0

    .line 824
    :cond_8
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 825
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 826
    :cond_9
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 827
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 829
    :cond_b
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 830
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 831
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 832
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 834
    :cond_c
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 836
    :cond_d
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_e

    .line 837
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->showDialog()V

    goto/16 :goto_0

    .line 839
    :cond_e
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPhonePasswordPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 841
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->StartPassword()V

    goto/16 :goto_0

    .line 845
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 727
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 731
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 734
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 741
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 747
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 748
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "with_circle"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 749
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockScreenOptions:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mWithCircle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 754
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 755
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 757
    :cond_4
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 758
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 761
    :cond_5
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 764
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    .line 765
    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v0, v4, :cond_a

    :goto_2
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 766
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 767
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0, v6, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/settings/SecuritySettings;->mNewOrientation:I

    .line 772
    sget v0, Lcom/android/settings/SecuritySettings;->mOldOrientation:I

    sget v1, Lcom/android/settings/SecuritySettings;->mNewOrientation:I

    if-eq v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 774
    sget v0, Lcom/android/settings/SecuritySettings;->mRequestCode:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_6

    sget v0, Lcom/android/settings/SecuritySettings;->mRequestCode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_b

    :cond_6
    sget v0, Lcom/android/settings/SecuritySettings;->mResultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 776
    sput v2, Lcom/android/settings/SecuritySettings;->mRequestCode:I

    .line 777
    sput v2, Lcom/android/settings/SecuritySettings;->mResultCode:I

    .line 786
    :cond_7
    :goto_3
    return-void

    :cond_8
    move v0, v2

    .line 748
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 761
    goto :goto_1

    :cond_a
    move v1, v2

    .line 765
    goto :goto_2

    .line 779
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->finish()V

    .line 781
    sget v0, Lcom/android/settings/SecuritySettings;->mNewOrientation:I

    sput v0, Lcom/android/settings/SecuritySettings;->mOldOrientation:I

    goto :goto_3
.end method

.method protected queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 874
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 875
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string v1, ".title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 877
    const-string v1, ".subject"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v1, ".password"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    invoke-virtual {p0, v0, p4}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 880
    return-void
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 852
    const v0, 0x7f0d013b

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    .line 853
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1054
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1055
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1057
    return-void
.end method
