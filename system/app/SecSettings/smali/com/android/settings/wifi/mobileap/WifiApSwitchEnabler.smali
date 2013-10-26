.class public Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;
    }
.end annotation


# instance fields
.field private final MHS_REQUEST:I

.field private isSetChecked:Z

.field private isShowPassword:I

.field private mActivity:Ljava/lang/Object;

.field private mChangeState:Z

.field mCm:Landroid/net/ConnectivityManager;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsRoaming:Z

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mTetherHandler:Landroid/os/Handler;

.field private mWarnRoam:Landroid/app/AlertDialog;

.field mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 3
    .parameter "context"
    .parameter "switchPref"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 89
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 100
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    .line 110
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I

    .line 111
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    .line 133
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    .line 135
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 138
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 696
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 917
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 201
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 203
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 205
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 89
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 100
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    .line 110
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I

    .line 111
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    .line 133
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    .line 135
    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 138
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 696
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 917
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 209
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 212
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    .line 213
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterDisconnectDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method private afterAttentionDialog()V
    .locals 2

    .prologue
    .line 867
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 873
    :goto_0
    return-void

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 856
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 864
    :goto_0
    return-void

    .line 857
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "WiFi p2p on. Create dailog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 861
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterDisconnectDialog()V

    goto :goto_0
.end method

.method private afterDisconnectDialog()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v1, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 951
    :goto_0
    return-void

    .line 949
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 824
    packed-switch p1, :pswitch_data_0

    .line 841
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 826
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 828
    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 832
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 834
    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 837
    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 824
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 242
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 243
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 248
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v2

    .line 240
    goto :goto_0

    .line 245
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const v4, 0x7f0d01fa

    const/4 v3, 0x5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 572
    packed-switch p1, :pswitch_data_0

    .line 630
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 631
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 632
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 634
    :goto_0
    return-void

    .line 574
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 575
    const v0, 0x7f0d01f8

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 576
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 592
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 593
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 594
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 595
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 597
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 600
    :pswitch_2
    const v0, 0x7f0d01f9

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 601
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 616
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 618
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 620
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 623
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 624
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 625
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 626
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 627
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private initSwitchEnabler()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 169
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 171
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 173
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 174
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    .line 182
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 185
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 187
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 198
    return-void
.end method

.method private isP2pEnabled()Z
    .locals 2

    .prologue
    .line 955
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 956
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 958
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 962
    :goto_0
    return v0

    .line 959
    :catch_0
    move-exception v0

    .line 960
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x1

    return v0
.end method

.method private isSimCheck()Z
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x1

    return v0
.end method

.method private preProvisioning()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 761
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 762
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 763
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 765
    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimCheck() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const-string v1, "READY"

    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 767
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 775
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 776
    return-void

    .line 773
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0
.end method

.method private setSummary(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 685
    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 690
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 17
    .parameter "id"

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 569
    :goto_0
    return-void

    .line 337
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    .local v1, HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v9, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 341
    .local v9, view:Landroid/widget/TextView;
    const v13, 0x7f0d02d8

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(I)V

    .line 342
    const/4 v13, -0x1

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    const/high16 v13, 0x4190

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 344
    const/16 v13, 0xa

    const/16 v14, 0xa

    const/16 v15, 0xa

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 345
    const/high16 v13, 0x4000

    const/high16 v14, 0x3f80

    invoke-virtual {v9, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 347
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 348
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 350
    const v13, 0x7f0d097a

    new-instance v14, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    const v13, 0x7f0d0543

    new-instance v14, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v1, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 365
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 369
    .end local v1           #HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v9           #view:Landroid/widget/TextView;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v2, ad:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f0d0296

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 371
    const v13, 0x7f0d0542

    new-instance v14, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 377
    new-instance v13, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    const v13, 0x7f0d0297

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 385
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 389
    .end local v2           #ad:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 390
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    .line 391
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d02b0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d04fb

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0d02af

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    new-instance v14, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 409
    :pswitch_3
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 410
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 411
    new-instance v13, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0d0268

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 414
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v13}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 418
    :pswitch_4
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v11, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v11, warnWifiDisable:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f0d0277

    invoke-virtual {v11, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0542

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0543

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    new-instance v14, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0b0a

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1010355

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 444
    .end local v11           #warnWifiDisable:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v10, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 445
    .local v10, warnClientDisconnect:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f0d028a

    invoke-virtual {v10, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0542

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0543

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0b0a

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1010355

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 464
    .end local v10           #warnClientDisconnect:Landroid/app/AlertDialog$Builder;
    :pswitch_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 466
    .local v6, locale:Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ja"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 467
    const-string v8, "http://tether.docomo-de.net/dcmtrg/tether_ja.html"

    .line 470
    .local v8, tether_url:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v14, 0x7f0d0b0b

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 471
    .local v7, message:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "<br/><a href=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v15, 0x7f0d0b0c

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "</a>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 473
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x1010355

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0b0a

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0542

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0543

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 490
    .local v3, attentionDialog:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 491
    const v13, 0x102000b

    invoke-virtual {v3, v13}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 492
    .local v4, attentionText:Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    .line 469
    .end local v3           #attentionDialog:Landroid/app/AlertDialog;
    .end local v4           #attentionText:Landroid/widget/TextView;
    .end local v7           #message:Ljava/lang/String;
    .end local v8           #tether_url:Ljava/lang/String;
    :cond_0
    const-string v8, "http://tether.docomo-de.net/dcmtrg/tether_en.html"

    .restart local v8       #tether_url:Ljava/lang/String;
    goto/16 :goto_1

    .line 496
    .end local v6           #locale:Ljava/util/Locale;
    .end local v8           #tether_url:Ljava/lang/String;
    :pswitch_7
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    .local v5, batteryDialog:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f0d0368

    invoke-virtual {v5, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0542

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$17;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0543

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$16;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    new-instance v14, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d04a4

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 521
    .end local v5           #batteryDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_8
    const-string v13, "WifiApSwitchEnabler"

    const-string v14, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 523
    new-instance v13, Lcom/android/settings/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiApDialog;->show()V

    .line 539
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 540
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto/16 :goto_0

    .line 544
    :pswitch_9
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    .local v12, warnWifiP2PDisable:Landroid/app/AlertDialog$Builder;
    const v13, 0x7f0d027d

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0542

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$20;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0543

    new-instance v15, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$19;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    new-instance v14, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x7f0d0b0a

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    const v14, 0x1010355

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 780
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 784
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0, v3}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 791
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 786
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 789
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 13
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 310
    const/4 v11, 0x0

    .line 311
    .local v11, wifiTethered:Z
    const/4 v10, 0x0

    .line 313
    .local v10, wifiErrored:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 314
    check-cast v8, Ljava/lang/String;

    .line 315
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 316
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 315
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 313
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 319
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 320
    check-cast v8, Ljava/lang/String;

    .line 321
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 322
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 321
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 319
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 326
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 327
    iget-object v12, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 328
    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 332
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 329
    :cond_7
    if-eqz v10, :cond_6

    .line 330
    const v12, 0x7f0d01fa

    invoke-direct {p0, v12}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public getStaNum()I
    .locals 4

    .prologue
    .line 893
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 894
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 895
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 896
    const-string v1, "WifiApSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STANUM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 794
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "isChecked"

    .prologue
    .line 705
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    if-eqz v0, :cond_0

    .line 716
    :goto_0
    return-void

    .line 708
    :cond_0
    if-eqz p2, :cond_1

    .line 712
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_0

    .line 714
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 720
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v3, :cond_0

    .line 745
    .end local p2
    :goto_0
    return v1

    .line 722
    .restart local p2
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "persist.sys.wifi_lock"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi_lock.enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 725
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    move v1, v2

    .line 727
    goto :goto_0

    .line 730
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 731
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 733
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 734
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 736
    if-eqz v0, :cond_3

    .line 740
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_0

    .line 742
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 232
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 237
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 222
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 223
    return-void
.end method

.method public secSetSoftapEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 877
    if-eqz p1, :cond_0

    .line 881
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    .line 890
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->getStaNum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 887
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public sendSetChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_0

    .line 801
    if-eqz p1, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 639
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 645
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 650
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 664
    :cond_1
    :goto_0
    return-void

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 2
    .parameter

    .prologue
    .line 906
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: SettingsPreferenceFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    .line 908
    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 251
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v4

    .line 252
    .local v4, wifiState:I
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 256
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 258
    :cond_0
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 259
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    const-wide/16 v7, 0x1f4

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v9, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 269
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 274
    :goto_1
    if-eqz p1, :cond_4

    .line 275
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 276
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 277
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v7, :cond_2

    .line 278
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    .line 279
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 298
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :goto_2
    return v5

    .line 262
    :catch_0
    move-exception v2

    .line 263
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 271
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_3
    const v7, 0x7f0d01fa

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_1

    .line 286
    :cond_4
    if-nez p1, :cond_5

    .line 287
    const/4 v3, 0x0

    .line 289
    .local v3, wifiSavedState:I
    :try_start_1
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 293
    :goto_3
    if-ne v3, v6, :cond_5

    .line 294
    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 295
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v3           #wifiSavedState:I
    :cond_5
    move v5, v6

    .line 298
    goto :goto_2

    .line 290
    .restart local v3       #wifiSavedState:I
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "wifiConfig"

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10404b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0363

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .end local v0           #s:Ljava/lang/String;
    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    return-void

    .line 304
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
