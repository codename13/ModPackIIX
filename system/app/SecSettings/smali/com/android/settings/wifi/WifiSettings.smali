.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/wifi/WifiGuideSettings;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$22;,
        Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;,
        Lcom/android/settings/wifi/WifiSettings$Scanner;,
        Lcom/android/settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field public static cancel_network:I

.field public static edit_network:I

.field public static forget_network:I

.field public static mManageNetworkConnected:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field public static mStartWith:I

.field public static manageNetwork:Z

.field public static vzwEditFlag:Z

.field public static vzwViewFlag:Z


# instance fields
.field ADDRESS:Ljava/lang/String;

.field CID:Ljava/lang/String;

.field private final ERROR_DIALOG_DURATION_TIME:I

.field private ForgetThread:Ljava/lang/Runnable;

.field private InsertThread:Ljava/lang/Runnable;

.field LATITUDE:Ljava/lang/String;

.field LONGITUDE:Ljava/lang/String;

.field private PROVIDER:Ljava/lang/String;

.field private WIFISCAN_OUTDATED_TIME_THRESHOLD:I

.field cellLocation:Landroid/telephony/CellLocation;

.field cr:Landroid/content/ContentResolver;

.field criteria:Landroid/location/Criteria;

.field forgetHandler:Landroid/os/Handler;

.field insertHandler:Landroid/os/Handler;

.field latitude:D

.field loc:Landroid/location/Location;

.field longtitude:D

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddNetworkItem:Landroid/preference/Preference;

.field mAddNetworkMenuItem:Landroid/view/MenuItem;

.field mAdvancedMenuItem:Landroid/view/MenuItem;

.field private mCWConnectToNw:I

.field private mCWPendingOperation:I

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field public mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapMethod:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogRunnable:Ljava/lang/Runnable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerDialog:Z

.field private mInXlSetupWizard:Z

.field private mIsBlackThemeActivity:Z

.field private mKeyStoreNetworkId:I

.field private mLapseTime:I

.field private mLastCWErrorReason:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field public mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mNetworkSetup:I

.field private mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressCategory:Lcom/android/settings/ProgressCategory;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPopupFlag:Z

.field private mRetryPopupRequestId:I

.field mScanMenuItem:Landroid/view/MenuItem;

.field private final mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

.field private mScrollTimer:J

.field private mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mTimer:Landroid/os/CountDownTimer;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

.field private mWatchdogDialog:Landroid/app/AlertDialog;

.field private mWatchdogDialogRunnable:Ljava/lang/Runnable;

.field private mWifiDialogStyle:I

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsDialog:Landroid/app/ProgressDialog;

.field private mWpsInProgress:Z

.field private mlocationManager:Landroid/location/LocationManager;

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 353
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiGuideSettings;-><init>()V

    .line 217
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 219
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 235
    const v0, 0x493e0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->WIFISCAN_OUTDATED_TIME_THRESHOLD:I

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 243
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    .line 245
    iput v1, p0, Lcom/android/settings/wifi/WifiSettings;->mNetworkSetup:I

    .line 251
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    .line 264
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 276
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 286
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 291
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 293
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    .line 303
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->providers:Ljava/util/List;

    .line 345
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCWPendingOperation:I

    .line 346
    iput v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCWConnectToNw:I

    .line 2547
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$18;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$18;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2567
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$19;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$19;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3194
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$20;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$20;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->ForgetThread:Ljava/lang/Runnable;

    .line 3219
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$21;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$21;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->InsertThread:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 355
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_EAP_MESSAGE_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 386
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    .line 392
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 393
    return-void
.end method

.method private CWHandleCommand(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2797
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2798
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2800
    packed-switch p1, :pswitch_data_0

    .line 2821
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2822
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2823
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 2825
    return v0

    .line 2802
    :pswitch_1
    const-string v2, "netId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2803
    const-string v2, "disableOthers"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2807
    :pswitch_2
    const-string v2, "bEnable"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2811
    :pswitch_3
    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 2812
    const-string v2, "nRetryMethod"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2814
    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 2815
    const-string v2, "nRetryMethod"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2800
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiNewDialog;)Lcom/android/settings/wifi/WifiNewDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showConnectingMessge()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/wifi/WifiSettings;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->tm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/wifi/WifiSettings;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mlocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    return v0
.end method

.method static synthetic access$720(Lcom/android/settings/wifi/WifiSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressNumberFormat:Ljava/lang/String;

    return-object p1
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1777
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1788
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 2540
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_1

    .line 2541
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 2545
    :cond_0
    :goto_0
    return-void

    .line 2542
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2543
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private connectNetwork(I)V
    .locals 2
    .parameter "networkId"

    .prologue
    .line 2928
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 2929
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    .line 2930
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 2907
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 2908
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 2909
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1792
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    new-instance v4, Lcom/android/settings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    .line 1797
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1798
    if-eqz v0, :cond_0

    .line 1802
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1803
    new-instance v2, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 1816
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1819
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    iget-object v0, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1827
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 1828
    if-eqz v0, :cond_3

    .line 1829
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1831
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1836
    const/4 v1, 0x0

    .line 1837
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 1838
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1839
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 1841
    :cond_2
    if-nez v2, :cond_1

    .line 1842
    new-instance v1, Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 1843
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    iget-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 1851
    :cond_3
    :try_start_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1855
    :goto_4
    return-object v3

    .line 1852
    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1347
    packed-switch p1, :pswitch_data_0

    .line 1389
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1349
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1350
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1356
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1360
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1361
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1362
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1366
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1368
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1372
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->dismiss()V

    .line 1374
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    goto :goto_0

    .line 1383
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1385
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1333
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    .line 1337
    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    .line 1338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1344
    :cond_2
    return-void
.end method

.method private getErrorAnimationView(II)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1534
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1536
    const v1, 0x7f040102

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1537
    const v0, 0x7f0a0030

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1538
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1539
    const v0, 0x7f0a0319

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1540
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1541
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1542
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$17;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$17;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    const-wide/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1548
    return-object v1
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 2965
    const/4 v1, 0x0

    .line 2966
    .local v1, found:Z
    const/4 v3, -0x1

    .line 2967
    .local v3, newNetId:I
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 2968
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2969
    const/4 v1, 0x1

    .line 2970
    iget v3, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 2974
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 2977
    .end local v3           #newNetId:I
    .local v4, newNetId:I
    :goto_0
    return v4

    .end local v4           #newNetId:I
    .restart local v3       #newNetId:I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3           #newNetId:I
    .restart local v4       #newNetId:I
    goto :goto_0
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 2114
    div-int/lit16 v0, p0, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    .line 2115
    div-int/lit16 v1, p0, 0x3e8

    rem-int/lit8 v1, v1, 0x3c

    .line 2117
    const-string v2, "%02d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkAvailable()Z
    .locals 4

    .prologue
    .line 3341
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3342
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3343
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNetworkAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsimUseable(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3024
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3025
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 3026
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    .line 3028
    :goto_0
    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 3029
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0d024c

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3049
    :goto_1
    return v0

    :cond_0
    move v3, v1

    .line 3026
    goto :goto_0

    .line 3033
    :cond_1
    if-eqz p1, :cond_2

    const-string v3, "SKT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3034
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3036
    if-eqz v0, :cond_3

    const-string v3, "45005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3037
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0d024e

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3038
    goto :goto_1

    .line 3040
    :cond_2
    if-eqz p1, :cond_3

    const-string v3, "KTT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3041
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3043
    if-eqz v0, :cond_3

    const-string v3, "45008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3044
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0d024d

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3045
    goto :goto_1

    :cond_3
    move v0, v2

    .line 3049
    goto :goto_1
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1527
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 1528
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1531
    :cond_1
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 1582
    invoke-static {p1}, Lcom/android/settings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 1584
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 1585
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 1586
    const/4 v0, 0x1

    .line 1588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    .line 2933
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 2934
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 2958
    :goto_0
    return v1

    .line 2957
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method private setAuthenticationInformationn(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 2065
    :try_start_0
    const-string v0, "/data/misc/wifi/message.txt"

    .line 2067
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2072
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 2077
    return-void

    .line 2072
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2074
    :catch_0
    move-exception v0

    .line 2075
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupAddNetworkPreference()V
    .locals 2

    .prologue
    .line 1740
    const-string v0, "wifi_picker_dialog_add_network"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    .line 1741
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBlackThemeActivity:Z

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f0202f9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1745
    :goto_0
    return-void

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f0202f8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method private showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1195
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 1213
    :goto_0
    return-void

    .line 1202
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showConnectingMessge()V
    .locals 5

    .prologue
    const v4, 0x7f0d034a

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2189
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_3

    .line 2192
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2194
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2195
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_4

    .line 2196
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2199
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2201
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v0, :cond_5

    .line 2202
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 2203
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 2204
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_0

    .line 2205
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    goto :goto_0
.end method

.method private showConnectionFailDialog(Lcom/android/settings/wifi/AccessPoint;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2211
    invoke-virtual {p1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2212
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2215
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2216
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP Dialog is aleady showing. Ignore request id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 2225
    return-void

    .line 2218
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "Show retry popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d067d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2220
    invoke-direct {p0, p1, v2}, Lcom/android/settings/wifi/WifiSettings;->showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x1

    .line 1232
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1235
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1236
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1238
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 1239
    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0d02e7

    const v5, 0x1040014

    const/high16 v4, 0x104

    const v3, 0x1010355

    const/4 v2, 0x0

    .line 1423
    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1424
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1427
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1522
    :cond_1
    :goto_0
    return-void

    .line 1430
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 1431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1432
    const v1, 0x7f02030f

    const v2, 0x7f0d02dd

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1433
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1434
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1435
    const v1, 0x7f0d02de

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1444
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1449
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1454
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 1455
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1460
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    .line 1467
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1468
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1473
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1474
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d023c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1476
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 1477
    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1478
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto/16 :goto_0

    .line 1485
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 1486
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1487
    const v1, 0x7f02030e

    const v2, 0x7f0d023d

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1488
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1489
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1490
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1495
    const v1, 0x7f0d04fa

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1500
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$14;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1504
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1505
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$15;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1510
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    .line 1517
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1518
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1427
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 6
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->dismiss()V

    .line 1557
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    .line 1558
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1559
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->show()V

    .line 1560
    return-void
.end method

.method private showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->dismiss()V

    .line 1566
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    .line 1567
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1568
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->show()V

    .line 1570
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x1d4c0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1255
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1256
    const-string v0, "WifiSettings"

    const-string v1, "showProgressDialog(), dissmiss former dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1263
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    .line 1264
    iput v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLapseTime:I

    .line 1266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f020151

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1268
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0543

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1282
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1291
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0215

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1292
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNetworkSetup:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0216

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1300
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1301
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1302
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 1303
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    const-string v1, "%2d:%2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1307
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1312
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    const-wide/32 v2, 0x1d8a8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTimer:Landroid/os/CountDownTimer;

    .line 1324
    return-void

    .line 1294
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNetworkSetup:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1295
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1297
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showRetryDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x3

    .line 1243
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1246
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1247
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1249
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 1250
    return-void
.end method

.method private showWpsToast(I)V
    .locals 3
    .parameter

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2512
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    .line 2513
    const-string v0, "WifiSettings"

    const-string v1, "showWpsToast(), WPS FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    const v0, 0x7f0d02ef

    if-ne p1, v0, :cond_0

    .line 2515
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V

    .line 2519
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000001a

    const-string v2, "WifiSettings"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    .line 2521
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2522
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2524
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2528
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLockforToast:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2531
    :cond_2
    return-void
.end method

.method private startWith(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 748
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiSettings activity start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    packed-switch p1, :pswitch_data_0

    .line 764
    :goto_0
    return-void

    .line 751
    :pswitch_0
    const/4 v2, 0x2

    const/16 v3, 0x7530

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 754
    :pswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 755
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 760
    .local v1, runnable:Ljava/lang/Runnable;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 1596
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1598
    packed-switch v0, :pswitch_data_0

    .line 1730
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1

    .line 1731
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1f4

    cmp-long v0, v0, v3

    if-lez v0, :cond_9

    .line 1732
    iput-wide v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 1737
    :cond_1
    :goto_1
    return-void

    .line 1600
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiNewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1602
    :cond_3
    const-string v0, "WifiSettings"

    const-string v1, "Skip updateAccessPoints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1606
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v3

    .line 1607
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1620
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1621
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_a

    .line 1622
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1623
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1630
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1631
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    move-object v1, v0

    .line 1634
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v0, :cond_5

    .line 1638
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_7

    .line 1639
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onAccessPointsUpdated(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V

    .line 1701
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1709
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 1710
    :goto_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1712
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 1690
    :cond_7
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1691
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_8
    move v0, v2

    .line 1709
    goto :goto_3

    .line 1718
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_0

    .line 1722
    :pswitch_2
    const v0, 0x7f0d01f9

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 1726
    :pswitch_3
    const v0, 0x7f0d0211

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_0

    .line 1733
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1734
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_1

    :cond_a
    move-object v1, v0

    goto/16 :goto_2

    .line 1598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 2129
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2130
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2184
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v5, :cond_7

    .line 2135
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2144
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2145
    if-eqz p1, :cond_4

    .line 2146
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2149
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 2150
    .local v2, prefScreen:Landroid/preference/PreferenceGroup;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v5, :cond_5

    .line 2151
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 2154
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showConnectingMessge()V

    .line 2158
    :cond_5
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 2159
    .local v4, preferenceCount:I
    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_8

    .line 2161
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 2162
    .local v3, preference:Landroid/preference/Preference;
    instance-of v5, v3, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_6

    move-object v0, v3

    .line 2163
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 2164
    .local v0, accessPoint:Lcom/android/settings/wifi/AccessPoint;
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v5, v6}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2166
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    iget v6, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v6, :cond_6

    .line 2170
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showConnectionFailDialog(Lcom/android/settings/wifi/AccessPoint;)V

    .line 2159
    .end local v0           #accessPoint:Lcom/android/settings/wifi/AccessPoint;
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2139
    .end local v1           #i:I
    .end local v2           #prefScreen:Landroid/preference/PreferenceGroup;
    .end local v3           #preference:Landroid/preference/Preference;
    .end local v4           #preferenceCount:I
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-nez v5, :cond_3

    .line 2140
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 2181
    .restart local v1       #i:I
    .restart local v2       #prefScreen:Landroid/preference/PreferenceGroup;
    .restart local v4       #preferenceCount:I
    :cond_8
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v5, :cond_0

    .line 2182
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v6}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 850
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 851
    if-eqz p1, :cond_2

    .line 852
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02008f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 853
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 859
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 860
    if-eqz p1, :cond_3

    .line 861
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020086

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 862
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 868
    :cond_1
    :goto_1
    return-void

    .line 855
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 856
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 864
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 865
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateWifiState(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2228
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2230
    packed-switch p1, :pswitch_data_0

    .line 2277
    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2278
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2279
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2280
    :cond_0
    :goto_1
    return-void

    .line 2234
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-nez v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 2251
    :pswitch_1
    const v0, 0x7f0d01f8

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2255
    :pswitch_2
    const v0, 0x7f0d0211

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2264
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 2265
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 2267
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2268
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2269
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    goto :goto_0

    .line 2230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWpsEvent(I)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0d021c

    .line 2081
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWpsEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2084
    packed-switch p1, :pswitch_data_0

    .line 2110
    :goto_0
    return-void

    .line 2086
    :pswitch_0
    const-string v0, "WifiSettings"

    const-string v1, "WPS Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2088
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    .line 2089
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2093
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 2096
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_0

    .line 2099
    :pswitch_2
    const v0, 0x7f0d02ef

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_0

    .line 2102
    :pswitch_3
    const v0, 0x7f0d021b

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_0

    .line 2105
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showWpsToast(I)V

    goto :goto_0

    .line 2084
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wpsCommandCancel()V
    .locals 2

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2123
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->wpsCommandCancel()V

    .line 2124
    const-string v0, "WifiSettings"

    const-string v1, "wpsCommandCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    return-void
.end method


# virtual methods
.method forget()V
    .locals 2

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 3005
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3006
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3008
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3011
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 3020
    return-void
.end method

.method getAccessPointsCount()I
    .locals 2

    .prologue
    .line 3127
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 3128
    .local v0, wifiIsEnabled:Z
    if-eqz v0, :cond_1

    .line 3129
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    if-eqz v1, :cond_0

    .line 3130
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v1

    .line 3135
    :goto_0
    return v1

    .line 3132
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    goto :goto_0

    .line 3135
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1881
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiGuideSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1883
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1885
    const-string v0, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1886
    const-string v0, "wapi_string"

    .line 1888
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1889
    const-string v1, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    packed-switch v0, :pswitch_data_0

    .line 2026
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2027
    const-string v0, "android.net.wifi.SHOW_EAP_MESSAGE_DIALOG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2031
    if-nez v0, :cond_e

    .line 2060
    :cond_1
    :goto_1
    return-void

    .line 1892
    :pswitch_0
    const v0, 0x7f0d01fd

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1896
    :pswitch_1
    const v0, 0x7f0d01fe

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1900
    :cond_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1901
    const-string v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 1903
    :cond_3
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1911
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1912
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1917
    :cond_4
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1918
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1920
    const-string v0, "networkId"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 1921
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    if-eq v0, v3, :cond_0

    .line 1922
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 1923
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1926
    :cond_5
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1927
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 1928
    :cond_6
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1935
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 1936
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1937
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1940
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_0

    .line 1941
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onSupplicantStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1947
    :cond_8
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1948
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1950
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 1951
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v1, :cond_9

    if-eqz v3, :cond_9

    .line 1958
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/WifiPickerDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiPickerDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    .line 1974
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 1977
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1978
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1979
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1980
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1990
    :cond_a
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1991
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1992
    :cond_b
    const-string v0, "android.net.wifi.ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1993
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1994
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1996
    :pswitch_2
    const v0, 0x7f0d02ef

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2001
    :pswitch_3
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2002
    const/16 v0, 0x7530

    invoke-direct {p0, v6, v0, v5}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2006
    :cond_c
    const-string v0, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2007
    const-string v0, "info_type"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2008
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 2011
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2012
    const-string v0, "visible"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    const/16 v0, 0x7530

    invoke-direct {p0, v4, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2020
    :cond_d
    const-string v0, "android.net.wifi.GET_WPS_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2021
    const-string v0, "WifiSettings"

    const-string v1, "handleEvent(), GET_WPS_EVENT_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    const-string v0, "wps_event"

    const/4 v1, 0x5

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateWpsEvent(I)V

    goto/16 :goto_0

    .line 2035
    :cond_e
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2036
    const-string v1, "Succeed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2037
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d024f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2050
    :cond_f
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setAuthenticationInformationn(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d024f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2057
    :cond_10
    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2038
    :cond_11
    const-string v1, "Failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2039
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0250

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2040
    :cond_12
    const-string v1, "InvalidValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2041
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0252

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2042
    :cond_13
    const-string v1, "InvalidPassword"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2043
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2044
    :cond_14
    const-string v1, "InvalidCertificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2045
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2046
    :cond_15
    const-string v1, "NoResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2047
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0251

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1890
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1994
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2008
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 434
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 435
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/settings/wifi/WifiSettings$WifiServiceHandler;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiSettings$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 436
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 438
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 439
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 442
    :cond_0
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->tm:Landroid/telephony/TelephonyManager;

    .line 443
    const-string v7, "location"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mlocationManager:Landroid/location/LocationManager;

    .line 444
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->criteria:Landroid/location/Criteria;

    .line 445
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->criteria:Landroid/location/Criteria;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 446
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->criteria:Landroid/location/Criteria;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 447
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->criteria:Landroid/location/Criteria;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 448
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->insertHandler:Landroid/os/Handler;

    .line 449
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->forgetHandler:Landroid/os/Handler;

    .line 453
    const-string v7, "power"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 454
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mPowerManager:Landroid/os/PowerManager;

    const/16 v8, 0x1a

    const-string v9, "WifiSettings"

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 457
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 477
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 481
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_enable_next_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 486
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_1

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 488
    const-string v7, "connectivity"

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 490
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_1

    .line 491
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 493
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 499
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_1
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_2

    .line 500
    const-string v7, "WifiSettings"

    const-string v8, "onCreate:only_access_points"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v7, 0x1

    sput v7, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 502
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/settings/wifi/WifiSettings;->manageNetwork:Z

    .line 503
    const v7, 0x7f07006d

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 504
    const-string v7, "access_points"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 506
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 572
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 574
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v8, 0x41a0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 575
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 577
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 582
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 584
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBlackThemeActivity:Z

    if-eqz v7, :cond_7

    .line 585
    const v7, 0x7f0f0032

    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDialogStyle:I

    .line 590
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiGuideSettings;->onActivityCreated(Landroid/os/Bundle;)V

    .line 591
    return-void

    .line 509
    :cond_2
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v7, :cond_3

    .line 510
    const v7, 0x7f07006c

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 511
    :cond_3
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v7, :cond_4

    .line 512
    const v7, 0x7f070077

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 513
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 519
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const v8, 0x7f0d0211

    invoke-virtual {v7, v8}, Lcom/android/settings/ProgressCategory;->setNoDeviceFoundText(I)V

    .line 521
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    goto :goto_0

    .line 528
    :cond_4
    const v7, 0x7f070079

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 529
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    .line 530
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 545
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 547
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_6

    move-object v6, v1

    .line 548
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 549
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_6

    .line 550
    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 552
    .local v5, padding:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v5, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 553
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 555
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x15

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 559
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f0d01f6

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 562
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 566
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6
    new-instance v7, Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    goto/16 :goto_0

    .line 587
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_7
    const v7, 0x7f0f0031

    iput v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDialogStyle:I

    goto/16 :goto_1
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3121
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 3122
    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3123
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 3124
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiGuideSettings;->onAttach(Landroid/app/Activity;)V

    .line 399
    instance-of v0, p1, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    .line 413
    instance-of v0, p1, Lcom/android/settings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 415
    instance-of v0, p1, Lcom/android/settings/wifi/WifiPickerActivity;

    if-eqz v0, :cond_0

    .line 416
    check-cast p1, Lcom/android/settings/wifi/WifiPickerActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiPickerActivity;->isBlackTheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBlackThemeActivity:Z

    .line 418
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2772
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 2773
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 2793
    :cond_0
    :goto_0
    return-void

    .line 2774
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    .line 2775
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_2

    .line 2776
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 2785
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_3

    .line 2786
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    goto :goto_0

    .line 2788
    :cond_3
    const-string v0, "WifiSettings"

    const-string v1, "mDialog == null. Can\'t submit"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2790
    :cond_4
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 2791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 846
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiGuideSettings;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 847
    return-void

    .line 845
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1004
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 1005
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiGuideSettings;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1075
    :cond_0
    :goto_0
    return v0

    .line 1009
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1010
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1013
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1075
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiGuideSettings;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1015
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1016
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1017
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1019
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1020
    const-string v1, "SKT"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1041
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V

    goto :goto_0

    .line 1023
    :cond_3
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1024
    const-string v1, "KTT"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1043
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_5

    .line 1045
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1047
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1051
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1056
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto/16 :goto_0

    .line 1071
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 1013
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 931
    .line 936
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-eqz v0, :cond_1

    .line 937
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 943
    instance-of v2, v0, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 944
    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 961
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v0

    .line 962
    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 966
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 969
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 973
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 977
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v2

    .line 978
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 984
    const/4 v0, 0x5

    const v3, 0x7f0d020f

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 988
    :cond_4
    if-nez v2, :cond_0

    .line 994
    const/4 v0, 0x6

    const v2, 0x7f0d0210

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 967
    :cond_5
    const/4 v0, 0x4

    const v2, 0x7f0d020e

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v0, v1

    .line 973
    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "dialogId"

    .prologue
    .line 1393
    packed-switch p1, :pswitch_data_0

    .line 1419
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1396
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1397
    .local v4, ap:Lcom/android/settings/wifi/AccessPoint;
    if-nez v4, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1399
    new-instance v4, Lcom/android/settings/wifi/AccessPoint;

    .end local v4           #ap:Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v4, v0, v1}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1401
    .restart local v4       #ap:Lcom/android/settings/wifi/AccessPoint;
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1405
    :cond_0
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1406
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1410
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    const/4 v6, 0x1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 1413
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    .line 1412
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 1393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 770
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInXlSetupWizard:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_1

    .line 772
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 773
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 776
    const v4, 0x7f0d020c

    invoke-interface {p1, v2, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 781
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 783
    if-eqz v0, :cond_4

    .line 784
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBlackThemeActivity:Z

    if-eqz v4, :cond_3

    .line 785
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020090

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 788
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 794
    :goto_2
    if-eqz v0, :cond_7

    .line 796
    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    .line 797
    :goto_3
    const v4, 0x7f0d0208

    invoke-interface {p1, v2, v6, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    .line 798
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBlackThemeActivity:Z

    if-eqz v4, :cond_6

    .line 799
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020084

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 802
    :goto_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 803
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 811
    :goto_5
    if-nez v0, :cond_a

    move v3, v1

    .line 813
    :goto_6
    const/4 v4, 0x3

    const v5, 0x7f0d020d

    invoke-interface {p1, v2, v4, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    .line 818
    if-eqz v0, :cond_0

    .line 819
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mIsBlackThemeActivity:Z

    if-eqz v4, :cond_8

    .line 820
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020087

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 824
    :cond_0
    :goto_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 834
    if-nez v0, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_9

    :goto_8
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 839
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiGuideSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 840
    return-void

    :cond_2
    move v0, v2

    .line 772
    goto/16 :goto_0

    .line 787
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f02008f

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 790
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    :cond_5
    move v3, v2

    .line 796
    goto :goto_3

    .line 801
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020083

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 806
    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    goto :goto_5

    .line 822
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v5, 0x7f020086

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_7

    :cond_9
    move v1, v2

    .line 835
    goto :goto_8

    :cond_a
    move v3, v2

    goto :goto_6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 887
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 925
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiGuideSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 889
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    :goto_1
    move v0, v7

    .line 899
    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d02ea

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 901
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    move v0, v7

    .line 908
    goto :goto_0

    .line 904
    :catch_0
    move-exception v0

    .line 905
    const-string v1, "WifiSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 910
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0d020d

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_3
    move v0, v7

    .line 919
    goto :goto_0

    .line 917
    :cond_2
    const-class v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_3

    .line 921
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_MANAGE_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v7

    .line 922
    goto :goto_0

    .line 887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 695
    invoke-super {p0}, Lcom/android/settings/wifi/WifiGuideSettings;->onPause()V

    .line 701
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 707
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 708
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 717
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 723
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 726
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 727
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 728
    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 730
    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1088
    instance-of v1, p2, Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_5

    .line 1089
    check-cast p2, Lcom/android/settings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 1092
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1095
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1096
    const-string v1, "SKT"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1139
    :cond_0
    :goto_0
    return v0

    .line 1099
    :cond_1
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1100
    const-string v1, "KTT"

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1107
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    .line 1108
    if-eqz v1, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1121
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1123
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1126
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1127
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d02eb

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1130
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->showConfigUi(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1133
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1134
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 1137
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/WifiGuideSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 595
    invoke-super {p0}, Lcom/android/settings/wifi/WifiGuideSettings;->onResume()V

    .line 610
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mlocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->providers:Ljava/util/List;

    .line 611
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->providers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 612
    .local v3, provider:Ljava/lang/String;
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;

    .line 615
    .end local v3           #provider:Ljava/lang/String;
    :cond_0
    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume, Provider selected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v5, "sys.edm.keystore_netid"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 621
    .local v0, auxNetId:I
    if-eq v0, v8, :cond_1

    .line 622
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 623
    const-string v5, "sys.edm.keystore_netid"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 627
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 629
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v1, i:Landroid/content/Intent;
    const-string v5, "message"

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10401b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 632
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->finish()V

    .line 637
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v5, :cond_3

    .line 638
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 641
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 642
    iget v5, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v5, v8, :cond_4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v5

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v5, v6, :cond_4

    .line 644
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->connectNetwork(I)V

    .line 646
    :cond_4
    iput v8, p0, Lcom/android/settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 648
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v5, :cond_5

    .line 649
    sput-boolean v9, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 661
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 663
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 664
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiDialog;->resume()V

    .line 667
    :cond_6
    sget v5, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    if-eqz v5, :cond_7

    .line 668
    sget v5, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->startWith(I)V

    .line 669
    const/4 v5, 0x0

    sput v5, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 673
    :cond_7
    const/4 v4, 0x0

    .line 691
    .local v4, v:Landroid/view/View;
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 872
    invoke-super {p0, p1}, Lcom/android/settings/wifi/WifiGuideSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 875
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 877
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 878
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 879
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 880
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 883
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 734
    invoke-super {p0}, Lcom/android/settings/wifi/WifiGuideSettings;->onStop()V

    .line 737
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V

    .line 739
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V

    .line 741
    :cond_0
    const-string v0, "WifiSettings"

    const-string v1, "onStop() finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 745
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 3146
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 3114
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3155
    :cond_0
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 2830
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->chosenNetworkSetupMethod()I

    move-result v0

    .line 2832
    packed-switch v0, :pswitch_data_0

    .line 2899
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2900
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2902
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2903
    return-void

    .line 2837
    :pswitch_0
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mNetworkSetup:I

    .line 2838
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2839
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    .line 2841
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    .line 2842
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 2843
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(Ljava/lang/String;)V

    .line 2845
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getWpsConfig()Landroid/net/wifi/WpsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    goto :goto_0

    .line 2848
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2850
    if-nez v0, :cond_5

    .line 2852
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    .line 2853
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->checkCTCSsid(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2856
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->CWHandleCommand(II)I

    .line 2860
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_0

    .line 2863
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V

    goto/16 :goto_0

    .line 2865
    :cond_5
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_7

    .line 2866
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2867
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-connect ap id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 2869
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    .line 2870
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_0

    .line 2873
    :cond_7
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2889
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2890
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2891
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 2893
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 2832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
