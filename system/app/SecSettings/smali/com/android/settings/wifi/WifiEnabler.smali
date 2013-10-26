.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;,
        Lcom/android/settings/wifi/WifiEnabler$OnDisableHotspotListener;
    }
.end annotation


# static fields
.field private static mGateTraceTag:Ljava/lang/String;


# instance fields
.field private bCWWaitForTurnOff:Z

.field mApDisableDialog:Landroid/app/AlertDialog;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnabalerListener:Lcom/android/settings/guide/OnInternalSwitcherListener;

.field private mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOnDisableHotspotListener:Lcom/android/settings/wifi/WifiEnabler$OnDisableHotspotListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field mVerizonDialog:Landroid/app/AlertDialog;

.field mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

.field nCWStoppingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings/wifi/WifiEnabler;->mGateTraceTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    iput-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 102
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiEnabler;->bCWWaitForTurnOff:Z

    .line 103
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiEnabler;->nCWStoppingType:I

    .line 115
    iput-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mOnDisableHotspotListener:Lcom/android/settings/wifi/WifiEnabler$OnDisableHotspotListener;

    .line 119
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    iput-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mEnabalerListener:Lcom/android/settings/guide/OnInternalSwitcherListener;

    .line 156
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 160
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 162
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    .line 165
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 166
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 168
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.settings.wifi.WIFI_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 179
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiTetheringAndDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiDirectAndDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiEnabler;)Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private checkWifiDirectAndDisable()Z
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V

    .line 340
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkWifiTetheringAndDisable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 319
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 320
    .local v0, wifiApState:I
    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 326
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->showDialog(I)V

    .line 333
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 586
    packed-switch p1, :pswitch_data_0

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 588
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 595
    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 599
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 601
    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 605
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 612
    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 616
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 618
    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 446
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 404
    packed-switch p1, :pswitch_data_0

    .line 413
    :goto_0
    :pswitch_0
    return-void

    .line 410
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 360
    packed-switch p1, :pswitch_data_0

    .line 396
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 400
    :goto_0
    return-void

    .line 362
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 373
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 374
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 376
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 380
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 392
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchChecked(Z)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 349
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 350
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 352
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 356
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiEnabler"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 421
    :cond_0
    return-void
.end method

.method private setWifiEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01fa

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 14
    .parameter "id"

    .prologue
    const v13, 0x104000a

    const/high16 v12, 0x104

    const v11, 0x1040014

    const v10, 0x1010355

    .line 449
    packed-switch p1, :pswitch_data_0

    .line 583
    :goto_0
    return-void

    .line 451
    :pswitch_0
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d0267

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 455
    .local v3, newDialog:Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$2;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$2;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v3, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 467
    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$3;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$3;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v3, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 476
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 482
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 483
    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 488
    .end local v3           #newDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 489
    new-instance v8, Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 490
    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0269

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 495
    :pswitch_2
    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 496
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f04000c

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 497
    .local v0, aboutview:Landroid/view/ViewGroup;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 501
    .local v6, vzwDialog:Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$4;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$4;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    const v8, 0x7f0a001e

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 515
    .local v5, tv:Landroid/widget/TextView;
    const v8, 0x7f0d02e5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 517
    const v8, 0x7f0a001f

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 518
    .local v4, ok:Landroid/widget/Button;
    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$5;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$5;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    const v8, 0x7f0a0019

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 539
    .local v1, cancel:Landroid/widget/Button;
    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$6;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$6;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 560
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    .line 561
    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mVerizonDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 565
    .end local v0           #aboutview:Landroid/view/ViewGroup;
    .end local v1           #cancel:Landroid/widget/Button;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #ok:Landroid/widget/Button;
    .end local v5           #tv:Landroid/widget/TextView;
    .end local v6           #vzwDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0d0266

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 569
    .local v7, warningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$7;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$7;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v7, v13, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    new-instance v8, Lcom/android/settings/wifi/WifiEnabler$8;

    invoke-direct {v8, p0}, Lcom/android/settings/wifi/WifiEnabler$8;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    invoke-virtual {v7, v12, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 579
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    .line 580
    iget-object v8, p0, Lcom/android/settings/wifi/WifiEnabler;->mWiFiDirectDiableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 250
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 263
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-static {v0, v1}, Lcom/android/settings/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0d01fb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 271
    :cond_2
    if-eqz p2, :cond_4

    .line 272
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiTetheringAndDisable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiEnabler;->checkWifiDirectAndDisable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mHandler:Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiEnabler$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 278
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->setWifiEnable(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 223
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 219
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 220
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    .line 221
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->dismissDialog(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 198
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    .line 229
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 231
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 232
    .local v2, wifiState:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    move v1, v3

    .line 233
    .local v1, isEnabled:Z
    :goto_1
    if-ne v2, v3, :cond_2

    move v0, v3

    .line 234
    .local v0, isDisabled:Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 236
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiPolicy:Landroid/app/enterprise/WifiPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 237
    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_1
    move v1, v4

    .line 232
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_2
    move v0, v4

    .line 233
    goto :goto_2

    .line 241
    .restart local v0       #isDisabled:Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
