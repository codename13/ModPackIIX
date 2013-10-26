.class public Lcom/android/settings/LocationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private LBS_ENABLED:Ljava/lang/String;

.field private LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private VZW_PROVIDER:Ljava/lang/String;

.field private am:Landroid/app/ActivityManager;

.field private enabledGps:Z

.field private gpsDialog:Landroid/app/Dialog;

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mPdr:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mUseLocation:Landroid/preference/CheckBoxPreference;

.field private mVZW:Landroid/preference/CheckBoxPreference;

.field private vzwDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LocationSettings;->enabledGps:Z

    .line 89
    const-string v0, "LocationSettings"

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->TAG:Ljava/lang/String;

    .line 98
    const-string v0, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

    .line 99
    const-string v0, "lbsEnabled"

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->LBS_ENABLED:Ljava/lang/String;

    .line 100
    const-string v0, "vzw_lbs"

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->VZW_PROVIDER:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LocationSettings;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/LocationSettings;->selectPdrDescription(ZZ)V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 134
    .local v3, root:Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 138
    :cond_0
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Lcom/android/settings/LocationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->am:Landroid/app/ActivityManager;

    .line 143
    const v6, 0x7f070034

    invoke-virtual {p0, v6}, Lcom/android/settings/LocationSettings;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 150
    const-string v6, "location_network"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 151
    const-string v6, "CHN"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CHM"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CHU"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    :cond_2
    const-string v6, "location_gps"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 160
    const-string v6, "location_history"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 161
    .local v2, mLocationHistory:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_3
    const-string v6, "assisted_gps"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "CTC"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 171
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_4

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/GoogleLocationSettingHelper;->isAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 179
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 180
    .local v5, useLocation:Landroid/preference/CheckBoxPreference;
    const-string v6, "location_use_for_services"

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 181
    const v6, 0x7f0d04c3

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 182
    const v6, 0x7f0d04c4

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_0
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 186
    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 187
    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 189
    iput-object v5, p0, Lcom/android/settings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    .line 194
    .end local v5           #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 195
    iget-object v6, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0d04bc

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 198
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "location_pdr"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, locationManager:Landroid/location/LocationManager;
    const-string v6, "location"

    invoke-virtual {p0, v6}, Lcom/android/settings/LocationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #locationManager:Landroid/location/LocationManager;
    check-cast v1, Landroid/location/LocationManager;

    .line 202
    .restart local v1       #locationManager:Landroid/location/LocationManager;
    const-string v6, "gps"

    invoke-virtual {v1, v6}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    .line 203
    .local v0, location:Landroid/location/LocationProvider;
    if-nez v0, :cond_8

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    :goto_1
    return-object v3

    .end local v0           #location:Landroid/location/LocationProvider;
    .end local v1           #locationManager:Landroid/location/LocationManager;
    .restart local v5       #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_7
    move v6, v8

    .line 183
    goto :goto_0

    .line 208
    .end local v5           #useLocation:Landroid/preference/CheckBoxPreference;
    .restart local v0       #location:Landroid/location/LocationProvider;
    .restart local v1       #locationManager:Landroid/location/LocationManager;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDialogShowing(Landroid/app/Dialog;)Z
    .locals 1
    .parameter "dialog"

    .prologue
    .line 565
    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 568
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectPdrDescription(ZZ)V
    .locals 5
    .parameter "selection"
    .parameter "dontask"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 522
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectPdrDescription : selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and dont\'ask is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-ne p2, v3, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "need_location_pdr_desc"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    :cond_0
    if-ne p1, v3, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 535
    :goto_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_pdr_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 533
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private showPDRDescription()V
    .locals 8

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 539
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0400c7

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 541
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0a0227

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 542
    .local v3, tvPdrDesc:Landroid/widget/TextView;
    const v5, 0x7f0a0228

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 544
    .local v0, cbDontAsk:Landroid/widget/CheckBox;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0d04c5

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings/LocationSettings$13;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/LocationSettings$13;-><init>(Lcom/android/settings/LocationSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/LocationSettings$12;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/LocationSettings$12;-><init>(Lcom/android/settings/LocationSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/LocationSettings$11;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/LocationSettings$11;-><init>(Lcom/android/settings/LocationSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 557
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 558
    return-void
.end method

.method private updateLocationToggles()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 402
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 404
    .local v6, res:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v12, "enterprise_policy"

    invoke-virtual {v9, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 406
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v3

    .line 408
    .local v3, lp:Landroid/app/enterprise/LocationPolicy;
    if-eqz v3, :cond_1

    .line 409
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_0

    .line 410
    iget-object v12, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v9, "network"

    invoke-virtual {v3, v9}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    move v9, v10

    :goto_0
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 412
    :cond_0
    iget-object v12, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const-string v9, "gps"

    invoke-virtual {v3, v9}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    move v9, v10

    :goto_1
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 416
    :cond_1
    const/4 v8, 0x0

    .line 423
    .local v8, vzwEnabled:Z
    const-string v9, "gps"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    .line 425
    .local v2, gpsEnabled:Z
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v12, "network"

    invoke-static {v6, v12}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v9, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 428
    const/4 v5, 0x0

    .line 432
    .local v5, networkEnabled:Z
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 433
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_2

    .line 434
    iget-object v12, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v9, "assisted_gps_enabled"

    invoke-static {v6, v9, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_8

    move v9, v10

    :goto_2
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 436
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    :cond_2
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, salesCode:Ljava/lang/String;
    const-string v9, "SPR"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "VMU"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 457
    :cond_3
    const/4 v4, -0x1

    .line 461
    .local v4, mSprintDMGPSState:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "SprintDMGPSState"

    invoke-static {v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 466
    :goto_3
    if-nez v4, :cond_9

    .line 468
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_4

    .line 469
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 472
    :cond_4
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_5

    .line 473
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 488
    .end local v4           #mSprintDMGPSState:I
    :cond_5
    :goto_4
    return-void

    .end local v2           #gpsEnabled:Z
    .end local v5           #networkEnabled:Z
    .end local v7           #salesCode:Ljava/lang/String;
    .end local v8           #vzwEnabled:Z
    :cond_6
    move v9, v11

    .line 410
    goto :goto_0

    :cond_7
    move v9, v11

    .line 412
    goto :goto_1

    .restart local v2       #gpsEnabled:Z
    .restart local v5       #networkEnabled:Z
    .restart local v8       #vzwEnabled:Z
    :cond_8
    move v9, v11

    .line 434
    goto :goto_2

    .line 462
    .restart local v4       #mSprintDMGPSState:I
    .restart local v7       #salesCode:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->TAG:Ljava/lang/String;

    const-string v12, "SprintDMGPSState - SettingNotFoundException"

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 476
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    if-eq v4, v10, :cond_a

    if-ne v4, v13, :cond_5

    .line 478
    :cond_a
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_b

    .line 479
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 482
    :cond_b
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_5

    .line 483
    iget-object v9, p0, Lcom/android/settings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_4
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 504
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 505
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 506
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 509
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 510
    if-nez p2, :cond_0

    move v0, v1

    .line 511
    .end local p2
    .local v0, newValue:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/GoogleLocationSettingHelper;->setUseLocationForServices(Landroid/content/Context;Z)V

    .line 518
    .end local v0           #newValue:Z
    :goto_1
    return v1

    .line 510
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 518
    .restart local p2
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 268
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "network"

    iget-object v3, p0, Lcom/android/settings/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 272
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 340
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    const-string v3, "USC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 342
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/LocationAlert;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    invoke-virtual {p0, v2}, Lcom/android/settings/LocationSettings;->startActivity(Landroid/content/Intent;)V

    .line 351
    :goto_1
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1

    .line 354
    :cond_3
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_8

    .line 356
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    const-string v3, "SKT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "KTT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "LGT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 359
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0d04bf

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x108009b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/LocationSettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/LocationSettings$10;-><init>(Lcom/android/settings/LocationSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 371
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 374
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    iget-object v4, p0, Lcom/android/settings/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 377
    :cond_8
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 378
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->mPdr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v1, :cond_a

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "need_location_pdr_desc"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 381
    iget-object v2, p0, Lcom/android/settings/LocationSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need to ask for pdr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-ne v0, v1, :cond_9

    .line 383
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->showPDRDescription()V

    goto/16 :goto_0

    .line 385
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_pdr_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 388
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_pdr_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 392
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 221
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->vzwDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/settings/LocationSettings;->isDialogShowing(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LocationSettings;->gpsDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/settings/LocationSettings;->isDialogShowing(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->updateLocationToggles()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Lcom/android/settings/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LocationSettings$1;-><init>(Lcom/android/settings/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 231
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 233
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 111
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/LocationSettings;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->vzwDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/settings/LocationSettings;->isDialogShowing(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mVZW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->vzwDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 126
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 130
    :cond_1
    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->gpsDialog:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/settings/LocationSettings;->isDialogShowing(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/LocationSettings;->gpsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
