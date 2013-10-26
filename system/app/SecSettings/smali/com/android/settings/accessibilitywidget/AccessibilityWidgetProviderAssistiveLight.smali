.class public Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityWidgetProviderAssistiveLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSettingsObserver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;


# instance fields
.field private mAssistiveNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderAssistiveLight"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 298
    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "context"

    .prologue
    const v2, 0x7f040006

    const/4 v3, 0x1

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, views:Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 107
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    :goto_0
    const v1, 0x7f0a000c

    invoke-static {p0, v3}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 122
    invoke-static {v0, p0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 123
    return-object v0

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_2

    .line 111
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 112
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 115
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0           #views:Landroid/widget/RemoteViews;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040005

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 116
    .restart local v0       #views:Landroid/widget/RemoteViews;
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 290
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    .line 293
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;->startObserving()V

    .line 295
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    const-class v1, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 189
    return-object v0
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 284
    .local v0, result:Z
    :cond_0
    const-string v1, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return v0
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const v9, 0x7f0d0898

    const v8, 0x7f020266

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 242
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torch_light"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 245
    const/4 v4, 0x1

    :try_start_0
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 252
    .local v2, notificationManager:Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v4, :cond_0

    .line 253
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    .line 254
    iget-object v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iput v8, v4, Landroid/app/Notification;->icon:I

    .line 255
    iget-object v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 256
    iget-object v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 257
    iget-object v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 260
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, mIntent:Landroid/content/Intent;
    invoke-static {p1, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 262
    .local v3, pi:Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d0899

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 264
    iget-object v4, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 276
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v3           #pi:Landroid/app/PendingIntent;
    :goto_1
    const-string v4, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleWidgetMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 246
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AccessibilityWidgetProviderAssistiveLight"

    const-string v5, "could not turn off torch light"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 266
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torch_light"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :goto_2
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 274
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 269
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    :catch_1
    move-exception v0

    .line 270
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "AccessibilityWidgetProviderAssistiveLight"

    const-string v5, "could not turn off torch light"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 4
    .parameter "views"
    .parameter "context"

    .prologue
    const v3, 0x7f0a0010

    const v2, 0x7f0a000f

    .line 148
    const v0, 0x7f0a000c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 149
    const v0, 0x7f0a000e

    const v1, 0x7f0d0a13

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 151
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const v0, 0x7f020005

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 153
    const v0, 0x7f020001

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 154
    const-string v0, "AccessibilityWidgetProviderAssistiveLight"

    const-string v1, "updateButtons , icon_on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 157
    :cond_0
    const v0, 0x7f020004

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 158
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 159
    const-string v0, "AccessibilityWidgetProviderAssistiveLight"

    const-string v1, "updateButtons , icon_off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 135
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 136
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v2, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 138
    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->checkObserver(Landroid/content/Context;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 90
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 91
    .local v1, notificationManager:Landroid/app/NotificationManager;
    const v2, 0x7f020266

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v1           #notificationManager:Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    const-string v3, "could not turn off torch light"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;->stopObserving()V

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->sSettingsObserver:Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight$SettingsObserver;

    .line 81
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 72
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->checkObserver(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0d0898

    const v7, 0x7f020266

    const/4 v8, 0x0

    .line 200
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 202
    const-string v5, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 204
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, buttonId:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 206
    const-string v5, "AccessibilityWidgetProviderAssistiveLight"

    const-string v6, "BUTTON_CENTER : "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->toggleWidgetMode(Landroid/content/Context;)V

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    .line 239
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 214
    .local v3, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v3, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 216
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v5, :cond_3

    .line 217
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    .line 218
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iput v7, v5, Landroid/app/Notification;->icon:I

    .line 219
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 220
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 221
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 224
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, mIntent:Landroid/content/Intent;
    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 226
    .local v4, pi:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0d0899

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p1, v6, v7, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 228
    iget-object v5, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->icon:I

    iget-object v6, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v3, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 62
    const-string v2, "AccessibilityWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 65
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 66
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method
