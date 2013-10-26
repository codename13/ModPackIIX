.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Lcom/android/settings/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$DormantmodeSettingsActivity;,
        Lcom/android/settings/Settings$PenSettingsMenuActivity;,
        Lcom/android/settings/Settings$PenSettingsActivity;,
        Lcom/android/settings/Settings$AllShareCastSettingsActivity;,
        Lcom/android/settings/Settings$SBeamSettingsActivity;,
        Lcom/android/settings/Settings$HomeSettingsActivity;,
        Lcom/android/settings/Settings$DualClockSettingActivity;,
        Lcom/android/settings/Settings$RemoteControlsActivity;,
        Lcom/android/settings/Settings$UsbSettingsActivity;,
        Lcom/android/settings/Settings$PowerSavingModeSettingsActivity;,
        Lcom/android/settings/Settings$SoftwareUpdateSettingActivity;,
        Lcom/android/settings/Settings$NearbySettingsActivity;,
        Lcom/android/settings/Settings$MotionSettingsActivity;,
        Lcom/android/settings/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings/Settings$WifiPowerSaveActivity;,
        Lcom/android/settings/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/settings/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/settings/Settings$RunningServicesActivity;,
        Lcom/android/settings/Settings$DockSettingsActivity;,
        Lcom/android/settings/Settings$PrivacySettingsActivity;,
        Lcom/android/settings/Settings$LocationSettingsActivity;,
        Lcom/android/settings/Settings$SecuritySettingsActivity;,
        Lcom/android/settings/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings/Settings$StorageUseActivity;,
        Lcom/android/settings/Settings$ManageApplicationsActivity;,
        Lcom/android/settings/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings/Settings$LedIndicatorSettingsActivity;,
        Lcom/android/settings/Settings$LockScreenSettingsActivity;,
        Lcom/android/settings/Settings$WallpaperSettingsActivity;,
        Lcom/android/settings/Settings$DisplaySettingsActivity;,
        Lcom/android/settings/Settings$SoundSettingsActivity;,
        Lcom/android/settings/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings/Settings$LocalePickerActivity;,
        Lcom/android/settings/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings/Settings$WifiSettingsActivity;,
        Lcom/android/settings/Settings$StorageSettingsActivity;,
        Lcom/android/settings/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings/Settings$VpnSettingsActivity;,
        Lcom/android/settings/Settings$TetherSettingsActivity;,
        Lcom/android/settings/Settings$WirelessSettingsActivity;,
        Lcom/android/settings/Settings$BluetoothSettingsActivity;,
        Lcom/android/settings/Settings$HeaderAdapter;
    }
.end annotation


# instance fields
.field private final MHS_REQUEST:I

.field private mAnimationAdapter:Lcom/android/settings/AnimationAdapter;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mEnableAnimation:Z

.field private mFinished:Z

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field private mGuideMode:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mIsInGuideMode:Z

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mSelectedView:Landroid/view/View;

.field private mTetheredData:I

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 112
    iput v1, p0, Lcom/android/settings/Settings;->MHS_REQUEST:I

    .line 121
    iput v1, p0, Lcom/android/settings/Settings;->mTetheredData:I

    .line 124
    iput-object v2, p0, Lcom/android/settings/Settings;->mGuideMode:Ljava/lang/String;

    .line 125
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mIsInGuideMode:Z

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 1245
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mFinished:Z

    .line 1246
    iput-object v2, p0, Lcom/android/settings/Settings;->mSelectedView:Landroid/view/View;

    .line 1247
    iput-boolean v1, p0, Lcom/android/settings/Settings;->mEnableAnimation:Z

    .line 1313
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method public static checkEnableMirroring()Z
    .locals 3

    .prologue
    .line 742
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableUiDisplayMirroring"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 744
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    :cond_0
    const/4 v1, 0x1

    .line 751
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 711
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 728
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 712
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    .line 713
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 716
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 717
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 719
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 720
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 721
    if-eqz v2, :cond_0

    .line 722
    iget-object v3, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader()V
    .locals 4

    .prologue
    .line 433
    iget v1, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 435
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionWithDuration(II)V

    .line 440
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private isOrangeCustomer()Z
    .locals 2

    .prologue
    .line 1230
    const-string v0, "AMN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FTM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IDE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ONE"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORA"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ORO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EVR"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    :cond_0
    const/4 v0, 0x1

    .line 1241
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 300
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 370
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 373
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 375
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 376
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 378
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 379
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 380
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 381
    iput-object v4, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 383
    invoke-direct {p0, v4}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 384
    invoke-direct {p0}, Lcom/android/settings/Settings;->highlightHeader()V

    .line 386
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 387
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 389
    iget-object v7, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v3

    .line 392
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v3, 0x0

    .line 544
    .local v3, i:I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_20

    .line 545
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity$Header;

    .line 547
    .local v2, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v6, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v6

    .line 548
    .local v4, id:I
    const v6, 0x7f0a038e

    if-ne v4, v6, :cond_3

    .line 550
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 695
    :cond_1
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_0

    .line 697
    iget-object v6, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v6, :cond_2

    invoke-static {v2}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 699
    iput-object v2, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 701
    :cond_2
    iget-object v6, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 551
    :cond_3
    const v6, 0x7f0a0371

    if-eq v4, v6, :cond_4

    const v6, 0x7f0a0380

    if-ne v4, v6, :cond_5

    .line 552
    :cond_4
    invoke-static {p0, p1, v2}, Lcom/android/settings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 553
    :cond_5
    const v6, 0x7f0a036a

    if-ne v4, v6, :cond_6

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.wifi"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 556
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 558
    :cond_6
    const v6, 0x7f0a036b

    if-ne v4, v6, :cond_7

    .line 562
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 564
    :cond_7
    const v6, 0x7f0a036c

    if-ne v4, v6, :cond_8

    .line 575
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 577
    :cond_8
    const v6, 0x7f0a036f

    if-ne v4, v6, :cond_9

    .line 579
    const-string v6, "LGT"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 580
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 582
    :cond_9
    const v6, 0x7f0a0370

    if-ne v4, v6, :cond_a

    .line 584
    const-string v6, "CTC"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 585
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 587
    :cond_a
    const v6, 0x7f0a036d

    if-ne v4, v6, :cond_b

    .line 589
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 590
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 592
    :cond_b
    const v6, 0x7f0a037a

    if-ne v4, v6, :cond_c

    .line 595
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 597
    :cond_c
    const v6, 0x7f0a0379

    if-ne v4, v6, :cond_d

    .line 599
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 601
    :cond_d
    const v6, 0x7f0a037b

    if-ne v4, v6, :cond_e

    .line 603
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 605
    :cond_e
    const v6, 0x7f0a0377

    if-ne v4, v6, :cond_f

    .line 606
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 608
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 610
    :cond_f
    const v6, 0x7f0a0388

    if-ne v4, v6, :cond_10

    .line 613
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 615
    :cond_10
    const v6, 0x7f0a0389

    if-ne v4, v6, :cond_11

    .line 618
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 620
    :cond_11
    const v6, 0x7f0a0393

    if-ne v4, v6, :cond_12

    .line 621
    const/4 v5, 0x1

    .line 623
    .local v5, isSprintDsa:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sprint.dsa"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_2
    if-nez v5, :cond_1

    .line 629
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 624
    :catch_0
    move-exception v1

    .line 625
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    goto :goto_2

    .line 631
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #isSprintDsa:Z
    :cond_12
    const v6, 0x7f0a0369

    if-eq v4, v6, :cond_13

    const v6, 0x7f0a0368

    if-ne v4, v6, :cond_14

    .line 633
    :cond_13
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 635
    :cond_14
    const v6, 0x7f0a0378

    if-ne v4, v6, :cond_15

    .line 637
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 639
    :cond_15
    const v6, 0x7f0a0394

    if-ne v4, v6, :cond_16

    .line 640
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, csc_code:Ljava/lang/String;
    const-string v6, "SPR"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "BST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 644
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 646
    .end local v0           #csc_code:Ljava/lang/String;
    :cond_16
    const v6, 0x7f0a0381

    if-ne v4, v6, :cond_17

    .line 649
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 651
    :cond_17
    const v6, 0x7f0a0382

    if-ne v4, v6, :cond_18

    .line 654
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 656
    :cond_18
    const v6, 0x7f0a0391

    if-ne v4, v6, :cond_19

    .line 658
    invoke-direct {p0}, Lcom/android/settings/Settings;->isOrangeCustomer()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 659
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 661
    :cond_19
    const v6, 0x7f0a0392

    if-ne v4, v6, :cond_1a

    .line 663
    invoke-direct {p0}, Lcom/android/settings/Settings;->isOrangeCustomer()Z

    move-result v6

    if-nez v6, :cond_1

    .line 664
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 666
    :cond_1a
    const v6, 0x7f0a0385

    if-ne v4, v6, :cond_1b

    .line 668
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 670
    :cond_1b
    const v6, 0x7f0a0383

    if-ne v4, v6, :cond_1c

    .line 674
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 676
    :cond_1c
    const v6, 0x7f0a038c

    if-ne v4, v6, :cond_1d

    .line 678
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 680
    :cond_1d
    const v6, 0x7f0a038d

    if-ne v4, v6, :cond_1e

    .line 682
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 684
    :cond_1e
    const v6, 0x7f0a037f

    if-ne v4, v6, :cond_1f

    .line 685
    const-string v6, "VZW"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 686
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 687
    :cond_1f
    const v6, 0x7f0a0373

    if-ne v4, v6, :cond_1

    .line 688
    const-string v6, "VZW"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 690
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 705
    .end local v2           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #id:I
    :cond_20
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1224
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mFinished:Z

    .line 1207
    iget-object v0, p0, Lcom/android/settings/Settings;->mAnimationAdapter:Lcom/android/settings/AnimationAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/AnimationAdapter;->setOverridePendingTransition(I)Z

    .line 1209
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    .line 1210
    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 444
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 445
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 449
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 450
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 452
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 453
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 457
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 458
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 461
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 455
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 461
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 737
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/Settings;->mFragmentClass:Ljava/lang/String;

    .line 481
    :cond_0
    :goto_0
    return-object v0

    .line 471
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 474
    :cond_2
    const-string v1, "com.android.settings.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    :cond_3
    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 732
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 755
    const-string v1, "WifiAp_Settings"

    const-string v2, "Settings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    if-nez p1, :cond_0

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 758
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 759
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 760
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 762
    .restart local v0       #listAdapter:Landroid/widget/ListAdapter;
    :cond_1
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f070057

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 537
    invoke-direct {p0, p1}, Lcom/android/settings/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 539
    iput-object p1, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    .line 540
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 510
    const-class v1, Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    :cond_0
    const-string v1, "settings:remove_ui_options"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 526
    :cond_1
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 527
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x200

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/Settings;->getMetaData()V

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0}, Lcom/android/settings/Settings;->highlightHeader()V

    .line 184
    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->setSelectedMenuHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 187
    const v0, 0x7f0d0112

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->setTitle(I)V

    .line 191
    :cond_1
    if-eqz p1, :cond_2

    .line 192
    const-string v0, "com.android.settings.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 193
    const-string v0, "com.android.settings.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 196
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 211
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 212
    new-instance v0, Lcom/android/settings/AnimationAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/AnimationAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mAnimationAdapter:Lcom/android/settings/AnimationAdapter;

    .line 219
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 243
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 244
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 490
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 492
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 493
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 496
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 500
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 3
    .parameter "header"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 1194
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1197
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/Settings;->mSelectedView:Landroid/view/View;

    .line 1198
    iput-boolean v2, p0, Lcom/android/settings/Settings;->mEnableAnimation:Z

    .line 1199
    iget-object v0, p0, Lcom/android/settings/Settings;->mAnimationAdapter:Lcom/android/settings/AnimationAdapter;

    iget-object v1, p0, Lcom/android/settings/Settings;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AnimationAdapter;->setAnimation(Landroid/view/View;I)Lcom/android/settings/AnimationAdapter;

    .line 1201
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 426
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/settings/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 430
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 291
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->pause()V

    .line 294
    :cond_0
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1118
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1119
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    const v3, 0x7f0d03c6

    .line 1122
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1131
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 280
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 281
    check-cast v0, Lcom/android/settings/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings/Settings$HeaderAdapter;->resume()V

    .line 283
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "com.android.settings.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 264
    const-string v0, "com.android.settings.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 1155
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/Settings;->mFinished:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/Settings;->mEnableAnimation:Z

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/android/settings/Settings;->mAnimationAdapter:Lcom/android/settings/AnimationAdapter;

    invoke-virtual {v0}, Lcom/android/settings/AnimationAdapter;->start()Z

    .line 1163
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 1190
    return-void

    .line 1158
    :cond_1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/Settings;->mEnableAnimation:Z

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/settings/SubSettings;

    if-nez v0, :cond_0

    .line 1159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/Settings;->mEnableAnimation:Z

    .line 1160
    iget-object v0, p0, Lcom/android/settings/Settings;->mAnimationAdapter:Lcom/android/settings/AnimationAdapter;

    iget-object v1, p0, Lcom/android/settings/Settings;->mSelectedView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AnimationAdapter;->setAnimation(Landroid/view/View;I)Lcom/android/settings/AnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/AnimationAdapter;->start()Z

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    .line 1142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1143
    iget-object v2, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1148
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/android/settings/Settings$HeaderAdapter;

    iget-object v2, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1149
    return-void
.end method

.method setSelectedMenuHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 6
    .parameter "header"

    .prologue
    const/4 v5, 0x1

    .line 342
    iget-object v2, p0, Lcom/android/settings/Settings;->mHeaders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 343
    .local v0, index:I
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedMenuHeader() : index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-ltz v0, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/Settings$HeaderAdapter;->setSelectedId(I)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget v2, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    if-eqz v2, :cond_2

    .line 348
    iget-object v2, p0, Lcom/android/settings/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings/Settings;->mTopLevelHeaderId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 349
    .local v1, index2:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 350
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/Settings$HeaderAdapter;->setSelectedId(I)V

    goto :goto_0

    .line 357
    .end local v1           #index2:Ljava/lang/Integer;
    :cond_2
    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/android/settings/Settings$HeaderAdapter;

    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 359
    iget-object v2, p0, Lcom/android/settings/Settings;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/android/settings/Settings$HeaderAdapter;

    invoke-virtual {v2, v5}, Lcom/android/settings/Settings$HeaderAdapter;->setSelectedId(I)V

    goto :goto_0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-boolean v0, p0, Lcom/android/settings/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 305
    iput-object v1, p0, Lcom/android/settings/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 306
    iput-object v1, p0, Lcom/android/settings/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 309
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings;->setSelectedMenuHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 312
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 313
    return-void
.end method
