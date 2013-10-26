.class public Lcom/android/settings/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field private static mDialogFlag:Z

.field private static mEnableShowApEventFlag:Z

.field private static mIsConnectivityNotiShowing:Z

.field public static mIsForegroundWifiSettings:Z

.field public static mIsForegroundWifiSubSettings:Z

.field private static mLastInfo:Landroid/net/NetworkInfo;

.field private static mShowOnceFlag:Z

.field private static mWifiDisabledWarning:Landroid/app/Notification;


# instance fields
.field private final ICON_WIFI_CONNECTED:I

.field private mPrioritymode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 68
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 69
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 70
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    const v0, 0x7f020188

    iput v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->ICON_WIFI_CONNECTED:I

    .line 86
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuConnPriorityMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mPrioritymode:Z

    return-void
.end method

.method private enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V
    .locals 3
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 406
    sget-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    if-ne v2, p2, :cond_0

    .line 418
    :goto_0
    return-void

    .line 409
    :cond_0
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    .line 411
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 412
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 413
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 414
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 415
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0
.end method

.method public static isFactoryMode()Z
    .locals 6

    .prologue
    .line 349
    const-string v1, "/efs/FactoryApp/factorymode"

    .line 351
    .local v1, factoryModeFile:Ljava/lang/String;
    const/4 v2, 0x0

    .line 353
    .local v2, mode:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/FactoryApp/factorymode"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 359
    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    const/4 v3, 0x0

    .line 362
    :goto_1
    return v3

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, e:Ljava/io/IOException;
    const-string v2, "OFF"

    .line 356
    const-string v3, "WifiStatusReceiver"

    const-string v4, "cannot open file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 340
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    .line 342
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    if-eqz v0, :cond_1

    .line 343
    const/4 v0, 0x2

    goto :goto_0

    .line 345
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "launchWith"

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, wifiIntent:Landroid/content/Intent;
    if-lez p3, :cond_0

    .line 293
    sput p3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 294
    :cond_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    .end local v0           #wifiIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    const-class v1, Lcom/android/settings/wifi/WifiPickerDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .parameter "context"
    .parameter "wifiManager"

    .prologue
    .line 390
    sget-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    if-eqz v0, :cond_0

    .line 391
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    .line 395
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 403
    :cond_1
    return-void
.end method

.method private watchdogNotification(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v11, 0x1

    const v10, 0x7f0d02d9

    const/4 v9, 0x0

    .line 300
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 303
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz p2, :cond_2

    .line 304
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v6

    if-eq v6, v11, :cond_1

    .line 305
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    if-nez v6, :cond_0

    .line 306
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    sput-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    .line 307
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 308
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const/4 v7, -0x1

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 309
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 310
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 312
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "launch_with"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v6, "nid"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 321
    .end local v0           #deleteIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 322
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x7f0d02da

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, msg:Ljava/lang/String;
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 325
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    sget-object v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, v5, v2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 327
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    .line 328
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-virtual {v3, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 329
    sput v11, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 335
    .end local v2           #msg:Ljava/lang/String;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 332
    :cond_2
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    .line 333
    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0d06a7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 98
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    const-string v1, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 109
    sget-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-eqz v1, :cond_1

    .line 110
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 111
    sget-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 112
    sput-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 113
    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 117
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 119
    :cond_2
    if-ne v1, v2, :cond_0

    .line 121
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 122
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 123
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 125
    :cond_3
    const-string v5, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    const-string v1, "show_dialog_once"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    const-string v0, "show_dialog_once"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 130
    if-nez v0, :cond_0

    .line 131
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    goto :goto_0

    .line 134
    :cond_4
    sget-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    if-eqz v1, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 145
    :cond_5
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 146
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 149
    :cond_6
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 150
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    sput-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    .line 152
    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "WhiteTheme"

    const-string v3, "#59D0F3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 154
    const v1, 0x103012b

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 172
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 159
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=#59D0F3>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 178
    :cond_8
    const-string v5, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 179
    const-string v0, "info_type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 181
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 183
    :pswitch_0
    const v0, 0x7f0d02d7

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 186
    :pswitch_1
    const v0, 0x7f0d0369

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 189
    :pswitch_2
    const v0, 0x7f0d036a

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 193
    :pswitch_3
    const-string v0, "visible"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 200
    :cond_9
    const-string v5, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 201
    const-string v0, "WifiStatusReceiver"

    const-string v1, "ACTION_SEC_PICK_WIFI_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v0, "type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 205
    :cond_a
    invoke-direct {p0, p1, p2, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 207
    :cond_b
    const-string v5, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 208
    const-string v1, "WifiStatusReceiver"

    const-string v5, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 210
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 211
    const/16 v5, 0xc

    if-eq v1, v5, :cond_c

    const/16 v5, 0xd

    if-ne v1, v5, :cond_d

    :cond_c
    move v1, v2

    .line 213
    :goto_2
    if-eqz v1, :cond_10

    .line 214
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_e

    .line 215
    invoke-direct {p0, p1, p2, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_d
    move v1, v4

    .line 211
    goto :goto_2

    .line 218
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.WIFI_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 224
    :cond_f
    :goto_3
    invoke-direct {p0, p1, p2, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 221
    :cond_10
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_3

    .line 225
    :cond_11
    const-string v5, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 226
    const-string v0, "WifiStatusReceiver"

    const-string v1, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "launch_with"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 228
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 229
    :cond_12
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 230
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 231
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 233
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v5, "999999999999999"

    .line 236
    if-eqz v1, :cond_14

    const-string v5, "999999999999999"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 237
    const-string v1, "WifiStatusReceiver"

    const-string v3, "IMSI is invalidate. Turn off Wi-Fi"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v0, v2

    .line 245
    :goto_4
    if-lez v0, :cond_13

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d034b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    :cond_13
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mPrioritymode:Z

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitoring_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    if-ne v0, v2, :cond_0

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 240
    :cond_14
    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 241
    const-string v1, "WifiStatusReceiver"

    const-string v5, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v0, v3

    .line 243
    goto :goto_4

    .line 264
    :cond_15
    const-string v2, "com.android.settings.wifi.wifitimer_alarm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.WifiTimerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 269
    :cond_16
    const-string v2, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    const-string v1, "nid"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 271
    const v2, 0x7f0d02d9

    if-ne v1, v2, :cond_17

    .line 272
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    goto/16 :goto_0

    .line 273
    :cond_17
    if-nez v1, :cond_0

    .line 274
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    goto/16 :goto_0

    :cond_18
    move v0, v4

    goto :goto_4

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
