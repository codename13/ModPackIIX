.class public Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;
.super Landroid/widget/LinearLayout;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$10;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;,
        Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "CircleMissedEventWidget"


# instance fields
.field private final BADGE_URI:Ljava/lang/String;

.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBadgeObserver:Landroid/database/ContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mIsLiveWallpaper:Z

.field private mMissedCall:Landroid/widget/LinearLayout;

.field private mMissedCallBackground:Landroid/widget/LinearLayout;

.field private mMissedCallCount:I

.field private mMissedCallIcon:Landroid/widget/ImageView;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedCallTextView:Landroid/widget/TextView;

.field private mMissedMsg:Landroid/widget/LinearLayout;

.field private mMissedMsgBackground:Landroid/widget/LinearLayout;

.field private mMissedMsgCount:I

.field private mMissedMsgIcon:Landroid/widget/ImageView;

.field private mMissedMsgTextView:Landroid/widget/TextView;

.field private mMissedVvm:Landroid/widget/LinearLayout;

.field private mMissedVvmBackground:Landroid/widget/LinearLayout;

.field private mMissedVvmCount:I

.field private mMissedVvmIcon:Landroid/widget/ImageView;

.field private mMissedVvmTextView:Landroid/widget/TextView;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

.field private mUnreadMsgList:Landroid/view/View;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUpperLayout:Landroid/widget/RelativeLayout;

.field private mWaterlockHelpText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 9
    .parameter "context"
    .parameter "circleUnlockView"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 164
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->DEBUG:Z

    .line 69
    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->CALL_PKG:Ljava/lang/String;

    .line 71
    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 73
    const-string v3, "com.android.email"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->EMAIL_PKG:Ljava/lang/String;

    .line 75
    const-string v3, "content://com.sec.badge/apps"

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->BADGE_URI:Ljava/lang/String;

    .line 84
    const/16 v3, 0x12c2

    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MISSED_EVENT_UPDATE:I

    .line 86
    iput v5, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->REQ_INDEX_CALL_EMAIL:I

    .line 88
    const/16 v3, 0x7b

    iput v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->REQ_INDEX_MSG:I

    .line 90
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 92
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 94
    iput v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    .line 140
    sget-object v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;->MissedNone:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    .line 146
    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    .line 147
    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgList:Landroid/view/View;

    .line 149
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$1;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    .line 166
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    .line 167
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 168
    iput-object p4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 170
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    .line 172
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 173
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 176
    .local v2, orientation:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_3

    .line 177
    if-eq v2, v8, :cond_2

    .line 178
    const-string v3, "CircleMissedEventWidget"

    const-string v6, "portrait mode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const v3, 0x109005e

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 201
    :goto_0
    const v3, 0x102030b

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    .line 203
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    const v3, 0x1020305

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;

    .line 207
    const v3, 0x1020308

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgIcon:Landroid/widget/ImageView;

    .line 208
    const v3, 0x102030f

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmIcon:Landroid/widget/ImageView;

    .line 212
    const v3, 0x102030c

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    .line 213
    const v3, 0x1020311

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    .line 214
    const v3, 0x102030d

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    .line 216
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    const v3, 0x1020304

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    .line 223
    const v3, 0x1020307

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    .line 224
    const v3, 0x102030e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    .line 225
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 231
    const v3, 0x1020306

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    .line 232
    const v3, 0x1020309

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    .line 233
    const v3, 0x1020310

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmTextView:Landroid/widget/TextView;

    .line 234
    const v3, 0x102030a

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    .line 235
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_wallpaper"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mIsLiveWallpaper:Z

    .line 244
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 245
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedCallList;

    invoke-direct {v3, p1}, Lcom/android/internal/policy/impl/CircleMissedCallList;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    .line 246
    new-instance v3, Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    invoke-direct {v3, p1}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgList:Landroid/view/View;

    .line 247
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgList:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$2;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 297
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$3;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$4;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 405
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$5;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$5;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 431
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$6;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 459
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$7;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 488
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    .line 494
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$8;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 507
    new-instance v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$9;

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$9;-><init>(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 517
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "content://com.sec.badge/apps"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 519
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 522
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 523
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getalternatePackageForMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    .line 525
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 526
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 527
    return-void

    .line 181
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v3, "CircleMissedEventWidget"

    const-string v6, "landscape mode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const v3, 0x1090060

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 185
    :cond_3
    if-eq v2, v8, :cond_4

    .line 186
    const-string v3, "CircleMissedEventWidget"

    const-string v6, "portrait mode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const v3, 0x109005d

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 189
    :cond_4
    const-string v3, "CircleMissedEventWidget"

    const-string v6, "landscape mode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const v3, 0x109005f

    invoke-virtual {v1, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 238
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;)Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$UnlockMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/CircleUnlockWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockWidget;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    return v0
.end method

.method private getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 684
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 687
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_1

    .line 711
    :cond_0
    :goto_0
    return v1

    .line 691
    :cond_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_3

    .line 692
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 699
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_5

    .line 703
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0

    .line 693
    :cond_3
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_4

    .line 694
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->MSG_PKG:Ljava/lang/String;

    const/16 v3, 0x7b

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 695
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_2

    .line 696
    const-string v2, "com.android.email"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_1

    .line 704
    :cond_5
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 0

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 568
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)V
    .locals 6
    .parameter "notiMode"

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_2

    .line 717
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v2, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 718
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 729
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 731
    :try_start_0
    const-string v2, "CircleMissedEventWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendintent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :cond_1
    :goto_1
    return-void

    .line 720
    :cond_2
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-eq p1, v2, :cond_3

    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_4

    .line 721
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v2, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v2, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 724
    :cond_4
    sget-object v2, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedVvm:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    if-ne p1, v2, :cond_0

    .line 725
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.vvmapp.action.LAUNCH_VVM"

    const-string v3, "voicemail"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 726
    .local v1, tmpIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 733
    .end local v1           #tmpIntent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private updateMissedEvent()V
    .locals 17

    .prologue
    .line 589
    const/4 v13, 0x0

    .line 590
    .local v13, nCallCount:I
    const/4 v14, 0x0

    .line 591
    .local v14, nMsgCount:I
    const/4 v15, 0x0

    .line 592
    .local v15, nVvmCount:I
    const/4 v7, 0x0

    .line 593
    .local v7, bUpdatedCallCount:Z
    const/4 v8, 0x0

    .line 594
    .local v8, bUpdatedMsgCount:Z
    const/4 v9, 0x0

    .line 596
    .local v9, bUpdatedVvmCount:Z
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v13

    .line 597
    sget-object v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getNumMissedEvent(Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA$NotiMode;)I

    move-result v14

    .line 600
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.badge/apps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "class"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "badgecount"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 606
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 607
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 609
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 610
    .local v16, pkgName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 611
    .local v12, className:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 615
    .local v10, badgeCount:I
    const-string v1, "com.samsung.vvm"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "com.samsung.vvm.vvmapp.VVMApplication"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 617
    move v15, v10

    .line 623
    .end local v10           #badgeCount:I
    .end local v12           #className:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 627
    .end local v11           #c:Landroid/database/Cursor;
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-eq v13, v1, :cond_8

    .line 628
    const/4 v7, 0x1

    .line 629
    const/16 v1, 0x3e7

    if-le v13, v1, :cond_7

    .line 630
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    .line 640
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-eq v15, v1, :cond_a

    .line 641
    const/4 v9, 0x1

    .line 642
    const/16 v1, 0x3e7

    if-le v14, v1, :cond_9

    .line 643
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    .line 649
    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-eq v14, v1, :cond_c

    .line 650
    const/4 v8, 0x1

    .line 651
    const/16 v1, 0x3e7

    if-le v14, v1, :cond_b

    .line 652
    const/16 v1, 0x3e7

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    .line 662
    :goto_3
    if-nez v8, :cond_2

    if-nez v7, :cond_2

    if-eqz v9, :cond_3

    .line 663
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getTTSMessage(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getTTSMessage(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 670
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedIcons()V

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 673
    if-eqz v7, :cond_4

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/CircleMissedCallList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CircleMissedCallList;->updateMissedCall(I)V

    .line 676
    :cond_4
    if-eqz v8, :cond_5

    .line 677
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgList:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CircleUnreadMsgList;->updateUnreadMsg(I)V

    .line 680
    :cond_5
    return-void

    .line 620
    .restart local v10       #badgeCount:I
    .restart local v11       #c:Landroid/database/Cursor;
    .restart local v12       #className:Ljava/lang/String;
    .restart local v16       #pkgName:Ljava/lang/String;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 632
    .end local v10           #badgeCount:I
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #className:Ljava/lang/String;
    .end local v16           #pkgName:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    goto/16 :goto_1

    .line 634
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 645
    :cond_9
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    goto/16 :goto_2

    .line 647
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 654
    :cond_b
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    goto/16 :goto_3

    .line 656
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3
.end method

.method private updateMissedIcons()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 531
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-lez v0, :cond_4

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 535
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 551
    :goto_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmCount:I

    if-lez v0, :cond_3

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 563
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->invalidate()V

    .line 564
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 559
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUpperLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 575
    return-void
.end method

.method public getMissedCallList()Lcom/android/internal/policy/impl/CircleMissedCallList;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedCallList;

    return-object v0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 742
    const-string v0, ""

    .line 744
    .local v0, TTSMessage:Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-lez v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040615

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 763
    :goto_0
    return-object v0

    .line 747
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v1, v5, :cond_1

    .line 748
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040613

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 750
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v1, v5, :cond_2

    .line 751
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040614

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 753
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v1, v5, :cond_3

    .line 754
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040611

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 755
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-ne v1, v5, :cond_4

    .line 756
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040612

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 758
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v2, 0x1040610

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTTSMessage(Z)Ljava/lang/String;
    .locals 9
    .parameter "isMissedCall"

    .prologue
    const v5, 0x1040611

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 768
    const-string v0, ""

    .line 769
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v4, 0x1040619

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, swipeMsg:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 772
    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-le v3, v6, :cond_0

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v5, 0x1040613

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 786
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 775
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v3, v6, :cond_3

    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0

    .line 779
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    if-le v3, v6, :cond_2

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    const v5, 0x1040614

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedMsgCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0

    .line 782
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mMissedCallCount:I

    if-ne v3, v6, :cond_3

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0

    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 786
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto :goto_0
.end method

.method public getUnreadMsgList()Lcom/android/internal/policy/impl/CircleUnreadMsgList;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->mUnreadMsgList:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 580
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->updateMissedEvent()V

    .line 586
    return-void
.end method
