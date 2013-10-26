.class public Lcom/android/internal/policy/impl/TickerWidget;
.super Landroid/widget/FrameLayout;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/TickerWidget$15;,
        Lcom/android/internal/policy/impl/TickerWidget$TickerType;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final DBG_FB:Z = true

.field private static final TAG:Ljava/lang/String; = "TickerWidget"

.field private static final TICKER_FAILED_MSG_SHOWING_TIME:I = 0x7d0

.field private static final TICKER_REFRESH_WAITING_TIME:I = 0xea60


# instance fields
.field private final MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

.field private final MSG_SHOW_NEWS_REFRESH_FAILED:I

.field private final MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

.field private final MSG_SHOW_PREVIOUS_NEWS_DATA:I

.field private final MSG_SHOW_PREVIOUS_STOCK_DATA:I

.field private final MSG_SHOW_STOCK_REFRESH_FAILED:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCurrentFacebookData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$FacebookData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentNewsData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$NewsData;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStockData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/TickerUtil$StockItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFacebookOnClickListener:Landroid/view/View$OnClickListener;

.field protected mFacebookRefreshing:Z

.field private mHandleArrowImage:Landroid/widget/ImageView;

.field private mHandleLogoImage:Landroid/widget/ImageView;

.field private mHandleProgressBar:Landroid/widget/ProgressBar;

.field private mHandleRefreshImage:Landroid/widget/ImageView;

.field private mHandleUpdateDate:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

.field private mIsDataReady:Z

.field private mIsFacebookInstalled:Z

.field private mIsFacebookLogin:Z

.field private mIsFacebookRefreshFailed:Z

.field private mIsNewsRefreshFailed:Z

.field private mIsStockRefreshFailed:Z

.field private mNewsOnClickListener:Landroid/view/View$OnClickListener;

.field protected mNewsRefreshing:Z

.field private mOrientation:I

.field private mStockOnClickListener:Landroid/view/View$OnClickListener;

.field private mStockRefreshing:Z

.field mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

.field private mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

.field private mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

.field private mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

.field private mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"
    .parameter "callback"
    .parameter "unlockWidget"
    .parameter "updateMonitor"

    .prologue
    const/4 v4, 0x1

    .line 217
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const/16 v2, 0x12c0

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_NEWS_REFRESH_FAILED:I

    .line 84
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_STOCK_REFRESH_FAILED:I

    .line 85
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_NEWS_DATA:I

    .line 86
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_STOCK_DATA:I

    .line 87
    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_FACEBOOK_REFRESH_FAILED:I

    .line 88
    const/16 v2, 0x12c5

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->MSG_SHOW_PREVIOUS_FACEBOOK_DATA:I

    .line 93
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$1;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$2;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    .line 219
    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 220
    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 221
    if-eqz p4, :cond_0

    .line 222
    check-cast p4, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .end local p4
    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .line 224
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/TickerWidget;->setFocusable(Z)V

    .line 225
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/TickerWidget;->setFocusableInTouchMode(Z)V

    .line 226
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->setDescendantFocusability(I)V

    .line 228
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mOrientation:I

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 231
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    const-string v2, "com.sec.android.daemonapp.stockclock.ACTION_UPDATE_STOCK_DATA_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    :cond_1
    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.YNEWS_DATE_SYNC"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 238
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 239
    const v2, 0x1090066

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 243
    :goto_0
    const v2, 0x1020315

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    .line 244
    const v2, 0x102031e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    .line 245
    const v2, 0x1020316

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/TickerScrollView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    .line 247
    const v2, 0x1020318

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    .line 248
    const v2, 0x1020319

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    .line 249
    const v2, 0x102031d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    .line 250
    const v2, 0x102031c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    .line 251
    const v2, 0x102031a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    .line 253
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$3;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    .line 272
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$4;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    .line 291
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$5;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    .line 316
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$6;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerScrollListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerScrollListener;)V

    .line 344
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$7;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerOpenListener;)V

    .line 368
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$8;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$8;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/internal/policy/impl/TickerSlidingDrawer$OnDrawerCloseListener;)V

    .line 388
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$9;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$9;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$10;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$10;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$11;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$11;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$12;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$12;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 426
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget$13;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/TickerWidget$13;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 435
    new-instance v2, Lcom/android/internal/policy/impl/TickerWidget$14;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/TickerWidget$14;-><init>(Lcom/android/internal/policy/impl/TickerWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    .line 455
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 456
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 457
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/TickerScrollView;->setTickerCallback(Lcom/android/internal/policy/impl/TickerCallback;)V

    .line 459
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->getSettingProperies()V

    .line 461
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V

    .line 463
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->setSlidingSpeed()V

    .line 464
    return-void

    .line 241
    :cond_2
    const v2, 0x1090069

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method private UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V
    .locals 14
    .parameter "status"

    .prologue
    const v11, 0x1040623

    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 732
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 733
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 735
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v9, v10, :cond_0

    .line 736
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    if-nez v9, :cond_2

    .line 737
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 738
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    .line 746
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 747
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 748
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    .line 756
    :cond_1
    :goto_1
    sget-object v9, Lcom/android/internal/policy/impl/TickerWidget$15;->$SwitchMap$com$android$internal$policy$impl$TickerUtil$TickerStatus:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 808
    :goto_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-eqz v9, :cond_6

    .line 809
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 819
    :goto_3
    return-void

    .line 740
    :cond_2
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    if-nez v9, :cond_0

    .line 741
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 742
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    goto :goto_0

    .line 750
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 751
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    if-nez v9, :cond_1

    .line 752
    sget-object p1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    goto :goto_1

    .line 758
    :pswitch_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 759
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 760
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 761
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getNewsUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 764
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, newsNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v7}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 768
    .end local v7           #newsNoDataMessage:Ljava/lang/String;
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040625

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 769
    .local v6, newsNoCountry:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v6, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_2

    .line 772
    .end local v6           #newsNoCountry:Ljava/lang/String;
    :pswitch_3
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 773
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 774
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getStockUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 777
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040626

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 778
    .local v8, stockNoItem:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v8, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 781
    .end local v8           #stockNoItem:Ljava/lang/String;
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 782
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 783
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/TickerUtil;->getFacebookUpdateDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 787
    :pswitch_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, facebookNoDataMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 791
    .end local v2           #facebookNoDataMessage:Ljava/lang/String;
    :pswitch_7
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104062d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 792
    .local v5, messageLogin:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoLogin:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v5, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 795
    .end local v5           #messageLogin:Ljava/lang/String;
    :pswitch_8
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104062e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, messageInstalled:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoInstalled:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v4, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 799
    .end local v4           #messageInstalled:Ljava/lang/String;
    :pswitch_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x1040627

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 800
    .local v3, message:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v10, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v9, v10, :cond_5

    .line 801
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v10, 0x104062c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 803
    :cond_5
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v10, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NetworkUnavailable:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-virtual {v9, v10, v3, v11}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithButton(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto/16 :goto_2

    .line 811
    .end local v3           #message:Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleUpdateDate:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 812
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v9, v13}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setVisibility(I)V

    .line 813
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 814
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 815
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v9, v12}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->setBottomOffset(I)V

    .line 816
    iget-object v9, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_3

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showNewsRefreshFailed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showStockRefreshFailed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/TickerWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookInstalled()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousNewsData()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerHorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/CircleUnlockRipple;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUnlockWidget:Lcom/android/internal/policy/impl/CircleUnlockRipple;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleArrowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestTickerDataToDemon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousStockData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showFacebookRefreshFailed()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->showPreviousFacebookData()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/TickerWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/TickerWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateTickerData()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/TickerWidget;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/TickerWidget;)Lcom/android/internal/policy/impl/TickerSlidingDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    return-object v0
.end method

.method private getSettingProperies()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 823
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contents_type"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 824
    .local v1, tickertype:I
    packed-switch v1, :pswitch_data_0

    .line 839
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sliding_speed"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 840
    .local v0, tickerSpeed:I
    packed-switch v0, :pswitch_data_1

    .line 853
    :goto_1
    return-void

    .line 826
    .end local v0           #tickerSpeed:I
    :pswitch_0
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    .line 829
    :pswitch_1
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    .line 832
    :pswitch_2
    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    goto :goto_0

    .line 842
    .restart local v0       #tickerSpeed:I
    :pswitch_3
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->slow:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 845
    :pswitch_4
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->normal:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 848
    :pswitch_5
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;->fast:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    iput-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    goto :goto_1

    .line 824
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 840
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestFacebookDataToDemon()V
    .locals 2

    .prologue
    .line 920
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    return-void
.end method

.method private requestNewsDataToDemon()V
    .locals 5

    .prologue
    .line 926
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "yh_daemon_service_key_service_status"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 927
    const-string v2, "TickerWidget"

    const-string v3, "Service is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_0
    return-void

    .line 929
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews.intent.action.refresh"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 931
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 932
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v3, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .local v0, component:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 939
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 933
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 934
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.camobile"

    const-string v3, "com.sec.android.daemonapp.ap.camobile.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_1

    .line 936
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v3, "com.sec.android.daemonapp.ap.yahoonews.DaemonReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_1
.end method

.method private requestStockDataToDemon()V
    .locals 8

    .prologue
    .line 944
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 949
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 950
    const-string v6, "TickerWidget"

    const-string v7, "Yahoo daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.yahoostock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 954
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v0           #component:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 955
    :catch_0
    move-exception v1

    .line 956
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Yahoo daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :try_start_1
    const-string v6, "com.sec.android.daemonapp.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 960
    const-string v6, "TickerWidget"

    const-string v7, "Edaily  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.stockclock"

    const-string v7, "com.sec.android.daemonapp.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 964
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 965
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_1
    move-exception v2

    .line 966
    .local v2, e2:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Edaily  daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :try_start_2
    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 970
    const-string v6, "TickerWidget"

    const-string v7, "Sina  daemon  installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock"

    const-string v7, "com.sec.android.daemonapp.ap.sinastock.stockclock.activity.Stockclock_DaemonService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 974
    iget-object v6, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 975
    .end local v0           #component:Landroid/content/ComponentName;
    :catch_2
    move-exception v3

    .line 976
    .local v3, e3:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "TickerWidget"

    const-string v7, "[NameNotFoundException] Sina daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestTickerDataToDemon()V
    .locals 8

    .prologue
    const/16 v7, 0x12c4

    const/16 v6, 0x12c1

    const/16 v5, 0x12c0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 876
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_2

    .line 878
    const-string v1, "TickerWidget"

    const-string v2, "Request news data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestNewsDataToDemon()V

    .line 880
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    .line 881
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 884
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 886
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 887
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 915
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 889
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_4

    .line 891
    const-string v1, "TickerWidget"

    const-string v2, "Request stock data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestStockDataToDemon()V

    .line 893
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    .line 894
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    .line 897
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 898
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 899
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 900
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 901
    .end local v0           #msg:Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v2, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v1, v2, :cond_1

    .line 903
    const-string v1, "TickerWidget"

    const-string v2, "Request facebook data update!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->requestFacebookDataToDemon()V

    .line 905
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookRefreshing:Z

    .line 906
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    .line 909
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 910
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 912
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setSlidingSpeed()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingSpeed:Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setSlidingSpeed(Lcom/android/internal/policy/impl/TickerUtil$TickerSlidingSpeed;)V

    .line 595
    return-void
.end method

.method private showFacebookRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c5

    .line 524
    const-string v2, "TickerWidget"

    const-string v3, "Facebook Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 529
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookRefreshFailed:Z

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040624

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 539
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 540
    return-void
.end method

.method private showNewsRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c2

    .line 543
    const-string v2, "TickerWidget"

    const-string v3, "News Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 548
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsNewsRefreshFailed:Z

    .line 550
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040624

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 558
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 559
    return-void
.end method

.method private showPreviousFacebookData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 484
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookRefreshing:Z

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    return-void
.end method

.method private showPreviousNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 496
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsRefreshing:Z

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 501
    return-void
.end method

.method private showPreviousStockData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/TickerScrollView;->initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 471
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockRefreshing:Z

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 477
    return-void
.end method

.method private showStockRefreshFailed()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/16 v4, 0x12c3

    .line 504
    const-string v2, "TickerWidget"

    const-string v3, "Stock Update was failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleRefreshImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 509
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsStockRefreshFailed:Z

    .line 511
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    const v3, 0x1040624

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, message:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/policy/impl/TickerScrollView;->setErrorMessageWithoutButton(Landroid/content/Context;Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 519
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 521
    return-void
.end method

.method private updateFacebookData()V
    .locals 4

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v3, 0x1080489

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 643
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mFacebookOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookInstalled()V

    .line 649
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookLoginChecked()V

    .line 652
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/TickerUtil;->getFacebookData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 654
    .local v0, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$FacebookData;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 656
    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentFacebookData:Ljava/util/ArrayList;

    .line 657
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    .line 670
    :goto_0
    return-void

    .line 659
    :cond_0
    const-string v2, "TickerWidget"

    const-string v3, "There is no data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.policy.impl.intent.action.ACTION_FACEBOOK_DATE_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 667
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 668
    sget-object v2, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->FacebookNoData:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_0
.end method

.method private updateFacebookInstalled()V
    .locals 7

    .prologue
    .line 608
    iget-object v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 610
    .local v4, packagemanager:Landroid/content/pm/PackageManager;
    const/16 v5, 0x2040

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 614
    .local v0, allPackageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 615
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 616
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "com.facebook.katana"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 617
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    .line 618
    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 622
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookInstalled:Z

    .line 623
    const-string v5, "TickerWidget"

    const-string v6, "isFacebookInstalled() : false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFacebookLoginChecked()V
    .locals 3

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 629
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 631
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    .line 632
    const-string v1, "TickerWidget"

    const-string v2, "login successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsFacebookLogin:Z

    .line 636
    const-string v1, "TickerWidget"

    const-string v2, "updateFacebookLoginChecked() : login failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNewsData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 675
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080483

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 687
    :goto_0
    const/4 v0, 0x0

    .line 688
    .local v0, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 689
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerUtil;->getNewsData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 691
    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 692
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 693
    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentNewsData:Ljava/util/ArrayList;

    .line 694
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    .line 706
    :cond_1
    :goto_1
    return-void

    .line 678
    .end local v0           #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCaMobile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 679
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108047f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 682
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080482

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mNewsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 695
    .restart local v0       #newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$NewsData;>;"
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 696
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 697
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoData:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1

    .line 698
    :cond_5
    if-nez v0, :cond_1

    .line 699
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 700
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->NewsNoCountry:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateStockData()V
    .locals 3

    .prologue
    .line 711
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x1080488

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 719
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/TickerUtil;->getStockData(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 720
    .local v0, stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 722
    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mCurrentStockData:Ljava/util/ArrayList;

    .line 723
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNormal:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    .line 728
    :goto_1
    return-void

    .line 714
    .end local v0           #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    const v2, 0x108048e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 715
    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHandleLogoImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/TickerWidget;->mStockOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 725
    .restart local v0       #stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/TickerUtil$StockItem;>;"
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mIsDataReady:Z

    .line 726
    sget-object v1, Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;->StockNoItem:Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/TickerWidget;->UpdateData(Lcom/android/internal/policy/impl/TickerUtil$TickerStatus;)V

    goto :goto_1
.end method

.method private updateTickerData()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->news:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_1

    .line 599
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateNewsData()V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->stock:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_2

    .line 601
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateStockData()V

    goto :goto_0

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerType:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    sget-object v1, Lcom/android/internal/policy/impl/TickerWidget$TickerType;->facebook:Lcom/android/internal/policy/impl/TickerWidget$TickerType;

    if-ne v0, v1, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/android/internal/policy/impl/TickerWidget;->updateFacebookData()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerCallback:Lcom/android/internal/policy/impl/TickerCallback;

    .line 871
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->cleanUp()V

    .line 872
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->cleanUp()V

    .line 873
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 568
    const-string v0, "TickerWidget"

    const-string v1, "onKeyDown at TickerWidget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 581
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 573
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMinTickerHeights()I
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    if-nez v0, :cond_0

    .line 984
    const/4 v0, 0x0

    .line 986
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->getMinTickerHeights()I

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->onPause()V

    .line 863
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->onPause()V

    .line 864
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->onResume()V

    .line 858
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerScrollView;->onResume()V

    .line 859
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mTickerSlidingDrawer:Lcom/android/internal/policy/impl/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerSlidingDrawer;->animateClose()V

    .line 588
    const/4 v0, 0x1

    .line 590
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public startAutoScroll()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->startAutoScroll()V

    .line 995
    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerWidget;->mHorizontalScrollView:Lcom/android/internal/policy/impl/TickerHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 991
    return-void
.end method
