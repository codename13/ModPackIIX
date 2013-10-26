.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHandler:Landroid/os/Handler;

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mTetherRunnable:Ljava/lang/Runnable;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherEnabling:Z

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 149
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 170
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbTetherEnabling:Z

    .line 178
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherHandler:Landroid/os/Handler;

    .line 303
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 436
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothPan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/TetherSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/TetherSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 985
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 986
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 987
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 992
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 986
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 985
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 992
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 10

    .prologue
    const v5, 0x7f0d0366

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 270
    .local v0, activity:Landroid/app/Activity;
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 271
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 274
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 276
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->generateDefaultSSID()V

    .line 279
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    const-string v4, "WPA2/PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v9

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    const-string v4, "WPA/PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 283
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v8

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_3
    const v3, 0x10404b5

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    .end local v2           #s:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 297
    .local v1, index:I
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private readSalesCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1157
    const-string v0, ""

    .line 1159
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1161
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1166
    :cond_0
    :goto_0
    return-object v0

    .line 1163
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 872
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 874
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 876
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d04ae

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 899
    :goto_0
    return-void

    .line 879
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 775
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 777
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    if-nez v1, :cond_1

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 782
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v1, "ATT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 786
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 787
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 789
    :cond_2
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 797
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 794
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 840
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 868
    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 869
    return-void

    .line 842
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 844
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    .line 850
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 851
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 852
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 853
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 854
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d00a1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 855
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 858
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0d04b0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 862
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 840
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 728
    const/4 v5, 0x0

    .line 729
    .local v5, bluetoothTethered:I
    move-object/from16 v2, p2

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v12, v2, v8

    .line 730
    .local v12, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v10, v3

    .local v10, len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_1
    if-ge v7, v10, :cond_1

    aget-object v11, v3, v7

    .line 731
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 730
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 729
    .end local v11           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_0

    .line 734
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 735
    .local v4, bluetoothErrored:Z
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v9, v2

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    move v8, v7

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .restart local v8       #i$:I
    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v12, v2, v8

    .line 736
    .restart local v12       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v10, v3

    .restart local v10       #len$:I
    const/4 v7, 0x0

    .end local v8           #i$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v10, :cond_4

    aget-object v11, v3, v7

    .line 737
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v4, 0x1

    .line 736
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 735
    .end local v11           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto :goto_2

    .line 741
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #len$:I
    .end local v12           #s:Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 742
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v6

    .line 743
    .local v6, btState:I
    const/16 v14, 0xd

    if-ne v6, v14, :cond_6

    .line 744
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 745
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0d01f9

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 768
    :goto_4
    return-void

    .line 746
    :cond_6
    const/16 v14, 0xb

    if-ne v6, v14, :cond_7

    .line 747
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0d00a1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 749
    :cond_7
    const/16 v14, 0xc

    if-ne v6, v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 750
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 752
    const/4 v14, 0x1

    if-le v5, v14, :cond_8

    .line 753
    const v14, 0x7f0d04b2

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 755
    .local v13, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 756
    .end local v13           #summary:Ljava/lang/String;
    :cond_8
    const/4 v14, 0x1

    if-ne v5, v14, :cond_9

    .line 757
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0d04b1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 758
    :cond_9
    if-eqz v4, :cond_a

    .line 759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0d04b4

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 761
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0d04b0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_4

    .line 764
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 766
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v15, 0x7f0d04b3

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_4
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 578
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 581
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 591
    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 592
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 593
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 594
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 603
    :goto_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 604
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_0

    .line 605
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 606
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 608
    :cond_0
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v3, :cond_1

    .line 609
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 640
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v3

    if-nez v3, :cond_b

    .line 642
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 643
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 644
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0d04b3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 650
    :goto_2
    return-void

    .line 595
    :cond_3
    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mUsbTetherEnabling:Z

    if-ne v5, v3, :cond_4

    .line 596
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 597
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 600
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v1, v3

    .line 616
    .local v1, isAirplaneMode:Z
    :goto_3
    const/4 v2, 0x1

    .line 617
    .local v2, wifiHotspotAvailable:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "persist.sys.wifi_lock"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wifi_lock.enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 619
    const/4 v2, 0x0

    .line 622
    :cond_6
    if-nez v1, :cond_9

    if-eqz v2, :cond_9

    .line 623
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v5, :cond_7

    .line 624
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 626
    :cond_7
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v5, :cond_1

    .line 627
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .end local v1           #isAirplaneMode:Z
    .end local v2           #wifiHotspotAvailable:Z
    :cond_8
    move v1, v4

    .line 613
    goto :goto_3

    .line 630
    .restart local v1       #isAirplaneMode:Z
    .restart local v2       #wifiHotspotAvailable:Z
    :cond_9
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_a

    .line 631
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 633
    :cond_a
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v3, :cond_1

    .line 634
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 647
    .end local v1           #isAirplaneMode:Z
    .end local v2           #wifiHotspotAvailable:Z
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 655
    const-string v15, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 657
    .local v3, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v15, :cond_1

    const/4 v11, 0x1

    .line 658
    .local v11, usbAvailable:Z
    :goto_0
    const/4 v12, 0x0

    .line 659
    .local v12, usbError:I
    move-object/from16 v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v9, v1, v5

    .line 660
    .local v9, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v8, v2, v4

    .line 661
    .local v8, regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 662
    if-nez v12, :cond_0

    .line 663
    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v12

    .line 660
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 657
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #regex:Ljava/lang/String;
    .end local v9           #s:Ljava/lang/String;
    .end local v11           #usbAvailable:Z
    .end local v12           #usbError:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 659
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #s:Ljava/lang/String;
    .restart local v11       #usbAvailable:Z
    .restart local v12       #usbError:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 668
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #s:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 669
    .local v14, usbTethered:Z
    move-object/from16 v1, p2

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v9, v1, v5

    .line 670
    .restart local v9       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v7, :cond_5

    aget-object v8, v2, v4

    .line 671
    .restart local v8       #regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v14, 0x1

    .line 670
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 669
    .end local v8           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_3

    .line 674
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #s:Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    .line 675
    .local v13, usbErrored:Z
    move-object/from16 v1, p3

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v6, :cond_9

    aget-object v9, v1, v5

    .line 676
    .restart local v9       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_6
    if-ge v4, v7, :cond_8

    aget-object v8, v2, v4

    .line 677
    .restart local v8       #regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v13, 0x1

    .line 676
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 675
    .end local v8           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_5

    .line 683
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #s:Ljava/lang/String;
    :cond_9
    const-string v15, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 684
    .local v10, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_c

    .line 685
    const-string v15, "TMB"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 686
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 687
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0d04ab

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 688
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 724
    :cond_a
    :goto_7
    return-void

    .line 692
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0d04ab

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 694
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 696
    :cond_c
    if-eqz v11, :cond_e

    .line 697
    if-nez v12, :cond_d

    .line 698
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0d04aa

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 702
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 703
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 700
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0d04ae

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_8

    .line 704
    :cond_e
    if-eqz v13, :cond_f

    .line 705
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0d04ae

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 707
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 708
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v15, :cond_10

    .line 709
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0d04ac

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 710
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 711
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 713
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0d04ad

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 714
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 715
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7
.end method


# virtual methods
.method public generateDefaultSSID()V
    .locals 9

    .prologue
    const/16 v6, 0x8

    const/16 v8, 0xd

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 1021
    const/4 v1, 0x0

    .line 1022
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1024
    if-eqz v0, :cond_b

    .line 1025
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1028
    :goto_0
    if-nez v0, :cond_0

    .line 1029
    const-string v0, ""

    .line 1032
    :cond_0
    const-string v1, ""

    .line 1033
    const-string v1, ""

    .line 1034
    const-string v1, ""

    .line 1036
    const-string v1, ""

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1037
    const v1, 0x7f0d0367

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1045
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_4

    .line 1046
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    invoke-static {v3, v0, v7}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v0

    .line 1047
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    :goto_2
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1057
    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1058
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1060
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v5, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1063
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    const-string v3, "WPA2/PSK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    const-string v3, "WPA/PSK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1064
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1066
    const-string v3, ""

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1067
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1084
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    const-string v1, "WPA2/PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1085
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 1095
    :goto_4
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    if-ne v0, v8, :cond_a

    .line 1096
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1100
    :goto_5
    return-void

    .line 1039
    :cond_3
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1040
    aget-object v1, v1, v5

    goto/16 :goto_1

    .line 1050
    :cond_4
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 1051
    const/16 v3, 0x2327

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    .line 1052
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1053
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1069
    :cond_5
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1070
    array-length v4, v3

    if-ne v4, v2, :cond_6

    .line 1071
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 1073
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1074
    :goto_6
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 1075
    const-string v5, "LAST4DIGIT"

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1076
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    :goto_7
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1074
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1078
    :cond_7
    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1087
    :cond_8
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 1090
    :cond_9
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v1, ""

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1091
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 1098
    :cond_a
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_5

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method isProvisioningNeeded()Z
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 800
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 801
    const-string v1, "WifiAP_TetherSettings"

    const-string v2, "TetherSettings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 805
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-nez p1, :cond_1

    .line 806
    if-ne p2, v4, :cond_2

    .line 810
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    if-ne v1, v4, :cond_0

    .line 811
    iput v3, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 812
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    .line 837
    :cond_1
    :goto_0
    return-void

    .line 817
    :cond_2
    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 825
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_3

    .line 827
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 828
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 829
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 834
    :cond_3
    :goto_1
    iput v4, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 819
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 822
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 996
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 997
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 998
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1006
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1011
    :goto_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1012
    .local v0, index:I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0d0366

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1017
    .end local v0           #index:I
    :cond_0
    return-void

    .line 1008
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 184
    const v7, 0x7f070060

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 187
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 188
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v1, v7, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 198
    :cond_0
    const-string v7, "enable_wifi_ap"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 201
    const-string v7, "enable_switch_wifi_ap"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    .line 204
    const-string v7, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 205
    .local v5, wifiApSettings:Landroid/preference/Preference;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 206
    const-string v7, "enable_bluetooth_tethering"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 207
    const-string v7, "tethering_help"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 209
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 212
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 213
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 214
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 216
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_2

    move v4, v8

    .line 217
    .local v4, usbAvailable:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_3

    move v6, v8

    .line 220
    .local v6, wifiAvailable:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    move v2, v8

    .line 222
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 223
    .line 226
    :cond_1
    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_5

    .line 228
    new-instance v7, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v10, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v7, v0, v10}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 229
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v7, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 233
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 240
    :goto_3
    if-eqz v2, :cond_6

    .line 243
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 244
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    .line 257
    :goto_4
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 265
    :goto_5
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 266
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v4           #usbAvailable:Z
    .end local v6           #wifiAvailable:Z
    :cond_2
    move v4, v9

    .line 216
    goto :goto_0

    .restart local v4       #usbAvailable:Z
    :cond_3
    move v6, v9

    .line 217
    goto :goto_1

    .restart local v6       #wifiAvailable:Z
    :cond_4
    move v2, v9

    .line 220
    goto :goto_2

    .line 235
    .restart local v2       #bluetoothAvailable:Z
    :cond_5
    goto :goto_3

    .line 241
    :cond_6
    goto :goto_4

    .line 246
    :cond_7
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4

    .line 261
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    goto :goto_5
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 17
    .parameter "id"

    .prologue
    .line 315
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_7

    .line 316
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 319
    .local v6, locale:Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 320
    .local v3, am:Landroid/content/res/AssetManager;
    const-string v13, "html/%y%z/tethering_help.html"

    const-string v14, "%y"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, path:Ljava/lang/String;
    const-string v13, "%z"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x5f

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 322
    const/4 v11, 0x1

    .line 323
    .local v11, useCountry:Z
    const/4 v5, 0x0

    .line 325
    .local v5, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 329
    if-eqz v5, :cond_0

    .line 331
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 335
    :cond_0
    :goto_0
    const-string v13, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v14, "%y"

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 336
    .local v10, url:Ljava/lang/String;
    const-string v14, "%z"

    if-eqz v11, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x5f

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v10, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 337
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-nez v13, :cond_4

    .line 338
    const-string v13, "%x"

    const-string v14, "usb_"

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 356
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v13, v10}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v13}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 359
    .local v7, parent:Landroid/view/ViewParent;
    if-eqz v7, :cond_1

    instance-of v13, v7, Landroid/view/ViewGroup;

    if-eqz v13, :cond_1

    .line 360
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7           #parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 362
    :cond_1
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d04b7

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 433
    .end local v3           #am:Landroid/content/res/AssetManager;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #url:Ljava/lang/String;
    .end local v11           #useCountry:Z
    :goto_3
    return-object v13

    .line 326
    .restart local v3       #am:Landroid/content/res/AssetManager;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #locale:Ljava/util/Locale;
    .restart local v8       #path:Ljava/lang/String;
    .restart local v11       #useCountry:Z
    :catch_0
    move-exception v4

    .line 327
    .local v4, ignored:Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 329
    if-eqz v5, :cond_0

    .line 331
    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 332
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 329
    .end local v4           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    if-eqz v5, :cond_2

    .line 331
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 332
    :cond_2
    :goto_4
    throw v13

    .line 336
    .restart local v10       #url:Ljava/lang/String;
    :cond_3
    const-string v13, ""

    goto :goto_1

    .line 339
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-nez v13, :cond_5

    .line 340
    const-string v13, "%x"

    const-string v14, "wifi_"

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 342
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v13, v13

    if-nez v13, :cond_6

    .line 343
    const-string v13, "%x"

    const-string v14, "usb_wifi_"

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 351
    :cond_6
    const-string v13, "%x"

    const-string v14, ""

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 367
    .end local v3           #am:Landroid/content/res/AssetManager;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #locale:Ljava/util/Locale;
    .end local v8           #path:Ljava/lang/String;
    .end local v10           #url:Ljava/lang/String;
    .end local v11           #useCountry:Z
    :cond_7
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 369
    .local v2, activity:Landroid/app/Activity;
    new-instance v13, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    invoke-direct {v13, v2, v0, v14}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/TetherSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    goto :goto_3

    .line 371
    .end local v2           #activity:Landroid/app/Activity;
    :cond_8
    const/16 v13, 0xa

    move/from16 v0, p1

    if-ne v0, v13, :cond_9

    .line 372
    const-string v13, "ro.csc.sales_code"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, salesCode:Ljava/lang/String;
    const-string v13, "USC"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 375
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v1, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 377
    .local v1, USBTetheringWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    .local v12, warnningmsg:Landroid/widget/TextView;
    const v13, 0x7f0d0bc6

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 380
    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 381
    const/high16 v13, 0x4190

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 382
    const/16 v13, 0xa

    const/16 v14, 0xa

    const/16 v15, 0xa

    const/16 v16, 0xa

    invoke-virtual/range {v12 .. v16}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 383
    const/high16 v13, 0x4000

    const/high16 v14, 0x3f80

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 385
    invoke-virtual {v1, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 389
    const v13, 0x7f0d0bc7

    new-instance v14, Lcom/android/settings/TetherSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 413
    const/high16 v13, 0x104

    new-instance v14, Lcom/android/settings/TetherSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    goto/16 :goto_3

    .line 422
    .end local v1           #USBTetheringWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v9           #salesCode:Ljava/lang/String;
    .end local v12           #warnningmsg:Landroid/widget/TextView;
    :cond_9
    const-string v13, "TMB"

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_a

    .line 423
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0d0296

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0542

    new-instance v15, Lcom/android/settings/TetherSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d04a3

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    goto/16 :goto_3

    .line 433
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 332
    .restart local v3       #am:Landroid/content/res/AssetManager;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #locale:Ljava/util/Locale;
    .restart local v8       #path:Ljava/lang/String;
    .restart local v11       #useCountry:Z
    :catch_2
    move-exception v13

    goto/16 :goto_0

    :catch_3
    move-exception v14

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 903
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 907
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 909
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_8

    .line 910
    const-string v0, "TMB"

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 911
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 912
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 914
    if-eqz v0, :cond_2

    .line 915
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 981
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 920
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 923
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 928
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 929
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 932
    :cond_5
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 934
    if-eqz v0, :cond_7

    .line 935
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 937
    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 940
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 943
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 946
    :cond_8
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_c

    .line 947
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    .line 948
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 950
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    .line 952
    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 953
    invoke-direct {p0, v6}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 957
    :cond_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v4

    .line 958
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 959
    if-eqz v4, :cond_e

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    .line 964
    :goto_2
    if-nez v1, :cond_a

    .line 965
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 967
    :cond_a
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 968
    if-eqz v2, :cond_b

    .line 969
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0d04b4

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 971
    :cond_b
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0d04b3

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 974
    :cond_c
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_d

    .line 975
    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    move v0, v2

    .line 976
    goto/16 :goto_1

    .line 977
    :cond_d
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 978
    invoke-virtual {p0, v6}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto/16 :goto_0

    :cond_e
    move v2, v3

    goto :goto_2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 550
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 551
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 552
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 491
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 495
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 496
    new-instance v4, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 498
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 500
    .local v3, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 505
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 506
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 508
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 510
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 511
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 514
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 515
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 520
    :cond_0
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 521
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 522
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v4, :cond_1

    .line 523
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 526
    :cond_1
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_2

    .line 528
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 533
    :cond_2
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    .line 535
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 538
    :cond_3
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_4

    .line 541
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 544
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 545
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 559
    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 561
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 569
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 575
    :cond_2
    return-void
.end method
