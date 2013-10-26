.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;
    }
.end annotation


# static fields
.field private static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field private allowWifi:Z

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEapMethod:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

.field private mIwlan:Ljava/lang/String;

.field private mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

.field private mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

.field private mPrioritymode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mSettingNames:[Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mUiHandler:Landroid/os/Handler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 120
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuConnPriorityMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    .line 150
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wifi_static_wagip"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_wagport"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSettingNames:[Ljava/lang/String;

    .line 154
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wagip"

    aput-object v1, v0, v3

    const-string v1, "wagport"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mUiHandler:Landroid/os/Handler;

    .line 164
    iput-boolean v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 638
    return-void
.end method

.method private getAuthenticationInformation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1009
    const-string v0, "/data/misc/wifi/message.txt"

    .line 1011
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1013
    const-string v0, ""

    .line 1035
    :goto_0
    return-object v0

    .line 1017
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1020
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1024
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInformation, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1029
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1031
    :catch_0
    move-exception v0

    .line 1032
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1029
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1035
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 35

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v31

    .line 256
    .local v31, wifiEnabled:Z
    const-string v32, "connect_seamlessly"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 258
    .local v8, connectSeamlessly:Landroid/preference/CheckBoxPreference;
    const-string v32, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 272
    .local v16, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    if-eqz v8, :cond_0

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 274
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "wifi_networks_available_notification_on"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_14

    const/16 v32, 0x1

    :goto_0
    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    const-string v32, "wifi_enable_watchdog_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    check-cast v29, Landroid/preference/CheckBoxPreference;

    .line 284
    .local v29, watchdogEnabled:Landroid/preference/CheckBoxPreference;
    const v32, 0x7f0d02db

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 285
    const v32, 0x7f0d02dc

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "wifi_watchdog_poor_network_test_enabled"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    const/16 v32, 0x1

    :goto_1
    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 295
    const-string v32, "att_auto_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 302
    .local v3, attAutoConnection:Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_1

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    :cond_1
    const-string v32, "wifi_cmcc_manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 318
    .local v4, cmccConnectType:Landroid/preference/ListPreference;
    if-eqz v4, :cond_2

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 323
    :cond_2
    const-string v32, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    .line 324
    .local v11, frequencyPref:Landroid/preference/ListPreference;
    if-eqz v11, :cond_3

    .line 325
    const v32, 0x7f0400bd

    move/from16 v0, v32

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    :cond_3
    const-string v32, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/ListPreference;

    .line 342
    .local v21, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v21, :cond_5

    .line 343
    const v32, 0x7f0400bd

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_4

    .line 345
    const v32, 0x7f090026

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 347
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "wifi_sleep_policy"

    const/16 v34, 0x2

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 351
    .local v25, value:I
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 352
    .local v22, stringValue:Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 357
    .end local v22           #stringValue:Ljava/lang/String;
    .end local v25           #value:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "SKT"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_8

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 360
    .local v17, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v32, "iwlan_enabled_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 361
    .local v20, removablePref:Landroid/preference/Preference;
    if-eqz v20, :cond_6

    .line 362
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    :cond_6
    const-string v32, "iwlan_networks"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 364
    if-eqz v20, :cond_7

    .line 365
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 367
    :cond_7
    const-string v32, "add_other_iwlan"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 368
    if-eqz v20, :cond_8

    .line 369
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    .end local v17           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v20           #removablePref:Landroid/preference/Preference;
    :cond_8
    const-string v32, "wifi_connection_priority_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 375
    .local v6, connMonitoringPref:Landroid/preference/CheckBoxPreference;
    const-string v32, "wifi_connection_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 377
    .local v7, connSettingsPref:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_17

    .line 378
    if-eqz v6, :cond_9

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    const-string v33, "wifi_connection_monitoring_enable"

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_16

    const/16 v32, 0x1

    :goto_2
    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 393
    :cond_9
    :goto_3
    const-string v32, "mwlan_permission_allowed_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/CheckBoxPreference;

    .line 395
    .local v15, mWlanEnabled:Landroid/preference/CheckBoxPreference;
    if-eqz v15, :cond_a

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "LGU"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 398
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const-string v33, "com.lguplus.common.wificm.mwlan"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v14

    .line 399
    .local v14, mWlan:Landroid/content/Context;
    const-string v32, "mwlan"

    const/16 v33, 0x4

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 400
    .local v19, pref_mWlan_4:Landroid/content/SharedPreferences;
    const-string v32, "mwlan"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 401
    .local v18, pref_mWlan:Landroid/content/SharedPreferences;
    const-string v32, "permission_allowed_2"

    const/16 v33, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 402
    .local v13, isAllowed_4:Z
    const-string v32, "permission_allowed_2"

    const/16 v33, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 403
    .local v12, isAllowed:Z
    invoke-virtual {v15, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 407
    .local v9, e:Landroid/content/SharedPreferences$Editor;
    const-string v32, "mwlan_permission_allowed_2"

    move-object/from16 v0, v32

    invoke-interface {v9, v0, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    const-string v32, "KEY_LGT_MWLAN_PERMISSION"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v9           #e:Landroid/content/SharedPreferences$Editor;
    .end local v12           #isAllowed:Z
    .end local v13           #isAllowed_4:Z
    .end local v14           #mWlan:Landroid/content/Context;
    .end local v18           #pref_mWlan:Landroid/content/SharedPreferences;
    .end local v19           #pref_mWlan_4:Landroid/content/SharedPreferences;
    :cond_a
    :goto_4
    const-string v32, "wifi_exception_proxy"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 427
    .local v10, exceptionProxyPref:Landroid/preference/PreferenceScreen;
    if-eqz v10, :cond_b

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    :cond_b
    const-string v32, "wifi_cmcc_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 434
    .local v5, cmccPriorityPref:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_c

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 444
    :cond_c
    const-string v32, "wifi_timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v32, v0

    if-eqz v32, :cond_d

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_d
    const-string v32, "use_wifi_power_save"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    check-cast v30, Landroid/preference/PreferenceScreen;

    .line 490
    .local v30, wifiAutoConn:Landroid/preference/PreferenceScreen;
    if-eqz v30, :cond_e

    .line 491
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 495
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "wag_ip_settings"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    .line 496
    .local v27, wagIpSettings:Landroid/preference/Preference;
    if-eqz v27, :cond_f

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 499
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "use_wag_ip"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 500
    .local v24, useWagIp:Landroid/preference/Preference;
    if-eqz v24, :cond_10

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 503
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    const-string v33, "wagfqdn"

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 504
    .local v23, useWagFqdn:Landroid/preference/Preference;
    if-eqz v23, :cond_11

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 507
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aget-object v33, v33, v34

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 508
    .local v26, wagIp:Landroid/preference/Preference;
    if-eqz v26, :cond_12

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 511
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    aget-object v33, v33, v34

    invoke-virtual/range {v32 .. v33}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 512
    .local v28, wagPort:Landroid/preference/Preference;
    if-eqz v28, :cond_13

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 516
    :cond_13
    return-void

    .line 274
    .end local v3           #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .end local v4           #cmccConnectType:Landroid/preference/ListPreference;
    .end local v5           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .end local v6           #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #connSettingsPref:Landroid/preference/PreferenceScreen;
    .end local v10           #exceptionProxyPref:Landroid/preference/PreferenceScreen;
    .end local v11           #frequencyPref:Landroid/preference/ListPreference;
    .end local v15           #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    .end local v21           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v23           #useWagFqdn:Landroid/preference/Preference;
    .end local v24           #useWagIp:Landroid/preference/Preference;
    .end local v26           #wagIp:Landroid/preference/Preference;
    .end local v27           #wagIpSettings:Landroid/preference/Preference;
    .end local v28           #wagPort:Landroid/preference/Preference;
    .end local v29           #watchdogEnabled:Landroid/preference/CheckBoxPreference;
    .end local v30           #wifiAutoConn:Landroid/preference/PreferenceScreen;
    :cond_14
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 287
    .restart local v29       #watchdogEnabled:Landroid/preference/CheckBoxPreference;
    :cond_15
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 379
    .restart local v3       #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .restart local v4       #cmccConnectType:Landroid/preference/ListPreference;
    .restart local v6       #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .restart local v7       #connSettingsPref:Landroid/preference/PreferenceScreen;
    .restart local v11       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v21       #sleepPolicyPref:Landroid/preference/ListPreference;
    :cond_16
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 383
    :cond_17
    if-eqz v6, :cond_18

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 387
    :cond_18
    if-eqz v7, :cond_9

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 412
    .restart local v15       #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 414
    .restart local v17       #parentPreference:Landroid/preference/PreferenceGroup;
    const-string v32, "mwlan_enabled_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 415
    .restart local v20       #removablePref:Landroid/preference/Preference;
    if-eqz v20, :cond_1a

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 410
    .end local v17           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v20           #removablePref:Landroid/preference/Preference;
    :catch_0
    move-exception v32

    goto/16 :goto_4
.end method

.method private refreshWifiInfo()V
    .locals 4

    .prologue
    const v3, 0x7f0d043c

    .line 878
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 880
    const-string v1, "mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 881
    if-nez v0, :cond_2

    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v0

    .line 882
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 885
    const-string v0, "current_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 886
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 887
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 890
    const-string v0, "wifi_authentication_information"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 892
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 893
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getAuthenticationInformation()Ljava/lang/String;

    move-result-object v1

    .line 894
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 897
    if-eqz v1, :cond_5

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 898
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 907
    :cond_1
    :goto_3
    return-void

    .line 881
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 882
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 894
    goto :goto_2

    .line 900
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 903
    :cond_6
    if-eqz v2, :cond_1

    .line 904
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V
    .locals 1
    .parameter "context"
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->dismiss()V

    .line 994
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/IwlanDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    .line 995
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->show()V

    .line 996
    return-void
.end method

.method private showPriorityDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    if-eqz v0, :cond_0

    .line 1000
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "showPriorityDialog mPriorityDialog null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->dismiss()V

    .line 1003
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/PrioritySettingDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/wifi/PrioritySettingDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    .line 1004
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->show()V

    .line 1005
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 519
    if-eqz p2, :cond_2

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, values:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f090026

    .line 523
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 525
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 527
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 536
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 521
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f090025

    goto :goto_0

    .line 524
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    .line 219
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0345

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v0, "use_wifi_power_save"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 230
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    .line 231
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 176
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 561
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 250
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 654
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 656
    .local v5, key:Ljava/lang/String;
    const-string v10, "frequency_band"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 658
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local p1
    :cond_0
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 659
    .restart local p1
    :catch_0
    move-exception v2

    .line 660
    .local v2, e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v11, 0x7f0d02f3

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 662
    const/4 v10, 0x0

    goto :goto_1

    .line 664
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v10, "sleep_policy"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 666
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 667
    .local v6, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_sleep_policy"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 669
    invoke-direct {p0, p1, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 670
    .end local v6           #stringValue:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 671
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0204

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 673
    const/4 v10, 0x0

    goto :goto_1

    .line 675
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v10, "wifi_timer"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 676
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 677
    .local v4, enabled:Z
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceChange WIFI_TIMER:    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    check-cast p1, Lcom/android/settings/SettingsSwitchPreference;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    .line 680
    if-eqz v4, :cond_4

    .line 682
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 683
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiTimer allowWifi:    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-boolean v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-nez v10, :cond_5

    .line 686
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 687
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 688
    .local v9, wifiToastIntent:Landroid/content/Intent;
    const-string v10, "info_type"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 690
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    if-eqz v10, :cond_3

    .line 691
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;->sendEmptyMessage(I)Z

    .line 693
    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 705
    .end local v9           #wifiToastIntent:Landroid/content/Intent;
    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 706
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v10, "wifitimer_enabled"

    invoke-interface {v3, v10, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 707
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .local v1, alarm_intent:Landroid/content/Intent;
    const-string v10, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v11, 0x1389

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 695
    .end local v1           #alarm_intent:Landroid/content/Intent;
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "wifitimer_start_time_checked"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v12, "wifitimer_start_time"

    const-string v13, "19:00"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 697
    .local v8, wifiTimerStartTime:Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "wifitimer_end_time_checked"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v12, "wifitimer_end_time"

    const-string v13, "21:00"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, wifiTimerEndTime:Ljava/lang/String;
    :goto_4
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 700
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const v11, 0x7f0d0b04

    invoke-virtual {v10, v11}, Lcom/android/settings/SettingsSwitchPreference;->setSummaryOn(I)V

    goto :goto_2

    .line 695
    .end local v7           #wifiTimerEndTime:Ljava/lang/String;
    .end local v8           #wifiTimerStartTime:Ljava/lang/String;
    :cond_6
    const-string v8, ""

    goto :goto_3

    .line 697
    .restart local v8       #wifiTimerStartTime:Ljava/lang/String;
    :cond_7
    const-string v7, ""

    goto :goto_4

    .line 702
    .restart local v7       #wifiTimerEndTime:Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "~"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings/SettingsSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 565
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 567
    const-string v1, "notify_open_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v7

    :cond_0
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 635
    :cond_1
    :goto_0
    return v7

    .line 571
    :cond_2
    const-string v1, "wifi_enable_watchdog_service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 572
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v6, v7

    :cond_3
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 574
    :cond_4
    const-string v1, "att_auto_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 575
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 576
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 577
    iput v7, v1, Landroid/os/Message;->what:I

    .line 579
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 580
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 581
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 583
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-nez v1, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connecct"

    if-eqz v0, :cond_5

    move v6, v7

    :cond_5
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 586
    :cond_6
    const-string v1, "wifi_cmcc_priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 587
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showPriorityDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 596
    :cond_7
    instance-of v1, p2, Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v1, :cond_8

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Lcom/android/settings/wifi/IwlanNetwork;

    invoke-direct {p0, v0, p2, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 598
    :cond_8
    const-string v1, "wifi_connection_priority_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 599
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 600
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitoring_enable"

    if-eqz v0, :cond_9

    move v6, v7

    :cond_9
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 602
    if-eqz v0, :cond_a

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 605
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 607
    :cond_b
    const-string v1, "add_other_iwlan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 608
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v2, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 609
    :cond_c
    const-string v1, "wifi_timer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d0b03

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 614
    :cond_d
    const-string v1, "mwlan_permission_allowed_2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 615
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.lguplus.common.wificm.mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 618
    const-string v2, "mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 619
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 620
    const-string v2, "permission_allowed_2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 621
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 622
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    const-string v2, "type"

    const-string v3, "notify"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v2, "action"

    const-string v3, "permissionChanged"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 626
    const-string v1, "AdvancedWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWlan isChecked =\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    const v0, 0x7f0d0b51

    :goto_1
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 631
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 628
    :cond_e
    const v0, 0x7f0d0b52

    goto :goto_1

    .line 633
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 240
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 242
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 243
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 972
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 974
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    new-instance v0, Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/IwlanEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    .line 976
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanEnabler;->onStart()V

    .line 978
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 982
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 984
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanEnabler;->onStop()V

    .line 987
    :cond_0
    return-void
.end method
