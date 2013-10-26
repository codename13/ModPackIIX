.class public Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.super Lcom/android/systemui/statusbar/StatusBar;
.source "TabletStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;
.implements Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationIconTouchListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;
    }
.end annotation


# static fields
.field static final ACTION_LAUNCHER_EXTRA:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field public static final DEBUG:Z = false

.field public static final DEBUG_COMPAT_HELP:Z = false

.field private static final FAKE_SPACE_BAR:Z = true

.field public static final MSG_CLOSE_COMPAT_MODE_PANEL:I = 0x41b

.field public static final MSG_CLOSE_INPUT_METHODS_PANEL:I = 0x411

.field public static final MSG_CLOSE_MINI_MODE_APPS_PANEL:I = 0x425

.field public static final MSG_CLOSE_NOTIFICATION_PANEL:I = 0x3e9

.field public static final MSG_CLOSE_NOTIFICATION_PEEK:I = 0x3eb

.field public static final MSG_CLOSE_RECENTS_PANEL:I = 0x3fd

.field public static final MSG_HIDE_CHROME:I = 0x407

.field public static final MSG_OPEN_COMPAT_MODE_PANEL:I = 0x41a

.field public static final MSG_OPEN_INPUT_METHODS_PANEL:I = 0x410

.field public static final MSG_OPEN_MINI_MODE_APPS_PANEL:I = 0x424

.field public static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field public static final MSG_OPEN_NOTIFICATION_PEEK:I = 0x3ea

.field public static final MSG_OPEN_RECENTS_PANEL:I = 0x3fc

.field public static final MSG_SHOW_CHROME:I = 0x406

.field public static final MSG_STOP_TICKER:I = 0x7d0

.field static final NAME_LAUNCHER_ALL_APPS_EXTRA:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field static final NOTIFICATION_PEEK_ENABLED:Z = false

.field static final NOTIFICATION_PEEK_FADE_DELAY:I = 0xbb8

.field static final NOTIFICATION_PEEK_HOLD_THRESH:I = 0xc8

.field private static final NUM_TRAYOPEN_SOUND_CHANNELS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "TabletStatusBar"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBackButton:Landroid/widget/ImageView;

.field mBarContents:Landroid/view/ViewGroup;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

.field mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

.field mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

.field private mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

.field mCompatibilityHelpDialog:Landroid/view/View;

.field mDisabled:I

.field mFakeSpaceBar:Landroid/view/View;

.field mFeedbackIconArea:Landroid/view/ViewGroup;

.field private mGetSumSizeMethod:Ljava/lang/reflect/Method;

.field mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

.field mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

.field mHomeButton:Landroid/view/View;

.field mIconHPadding:I

.field mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

.field mIconSize:I

.field mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

.field private mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

.field private mIsExistPalmMethod:Z

.field mIsMiniAppPanelLoadedProperly:Z

.field private mIsPalmN:Z

.field private mIsPalmT:Z

.field mLatestNotificationCart:Landroid/widget/LinearLayout;

.field mLatestNotificationItems:Landroid/view/ViewGroup;

.field mLatestNotificationTitle:Landroid/widget/TextView;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mMaxNotificationIcons:I

.field mMenuButton:Landroid/view/View;

.field mMiniConPile:Landroid/widget/LinearLayout;

.field private mMiniModeAppsPanel:Landroid/view/ViewGroup;

.field private mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

.field private mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

.field mMiniModeTrayClass:Ljava/lang/Class;

.field mMiniModeTrayEnabled:Z

.field private mMiniModeTrayView:Landroid/view/View;

.field mNaturalBarHeight:I

.field mNavigationArea:Landroid/view/ViewGroup;

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNotificationArea:Landroid/view/View;

.field mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field mNotificationDNDMode:Z

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field mNotificationFlingVelocity:I

.field mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

.field mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

.field mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

.field mNotificationPeekIndex:I

.field mNotificationPeekKey:Landroid/os/IBinder;

.field mNotificationPeekRow:Landroid/view/ViewGroup;

.field mNotificationPeekScrubLeft:Landroid/animation/LayoutTransition;

.field mNotificationPeekScrubRight:Landroid/animation/LayoutTransition;

.field mNotificationPeekTapDuration:I

.field mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

.field mNotificationTrigger:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field mOngoingNotificationCart:Landroid/widget/LinearLayout;

.field mOngoingNotificationItems:Landroid/view/ViewGroup;

.field mOngoingNotificationTitle:Landroid/widget/TextView;

.field mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

.field private mPanelSlightlyVisible:Z

.field mPile:Landroid/view/ViewGroup;

.field mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

.field mRecentButton:Landroid/view/View;

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field mShadow:Landroid/view/View;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field mSpaceBarKeyEvent:Landroid/view/KeyEvent;

.field private mStatusBarContainerView:Landroid/view/View;

.field private mStatusBarInAnim:Landroid/view/animation/Animation;

.field private mStatusBarOutAnim:Landroid/view/animation/Animation;

.field mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSystemUiVisibility:I

.field mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

.field mUseMiniCon:Z

.field private mVibrator:Landroid/os/Vibrator;

.field mWindowManager:Landroid/view/IWindowManager;

.field private sLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBar;-><init>()V

    .line 177
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    .line 178
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    .line 179
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    .line 180
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 182
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    .line 187
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 248
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSpaceBarKeyEvent:Landroid/view/KeyEvent;

    .line 250
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 253
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 261
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    .line 263
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    .line 266
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 267
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 269
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    .line 282
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    .line 285
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 295
    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sLocale:Ljava/util/Locale;

    .line 2042
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$7;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 2055
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2066
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$9;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 2995
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3041
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->playTraySound()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmT:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsPalmN:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/statusbar/tablet/CompatModePanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    return-object v0
.end method

.method static synthetic access$872(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$876(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    return-void
.end method

.method private animateCollapse(Z)V
    .locals 6
    .parameter "excludeRecents"

    .prologue
    const/16 v5, 0x41b

    const/16 v4, 0x411

    const/16 v3, 0x3fd

    const/16 v2, 0x3e9

    .line 1785
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1786
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1787
    if-nez p1, :cond_0

    .line 1788
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1789
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1791
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1792
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1793
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1794
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1800
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.statusbar.phone.COLLAPSED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1801
    .local v0, collapseIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.EXPAND_STATUS_BAR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1803
    return-void
.end method

.method private getNotificationPanelHeight()I
    .locals 6

    .prologue
    .line 691
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 692
    .local v2, res:Landroid/content/res/Resources;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 693
    .local v0, d:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 694
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 697
    const v1, 0x7f0b0059

    .line 698
    .local v1, npHeight:I
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_0

    .line 699
    const v1, 0x7f0b005f

    .line 702
    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method private hasDirectionChanged(Landroid/content/res/Configuration;)Z
    .locals 1
    .parameter "configuration"

    .prologue
    .line 3187
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasDirectionChanged(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method private hasDirectionChanged(Ljava/util/Locale;)Z
    .locals 3
    .parameter "locale"

    .prologue
    .line 3191
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sLocale:Ljava/util/Locale;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isLanguageRTL(Ljava/util/Locale;)Z

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isLanguageRTL(Ljava/util/Locale;)Z

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3192
    .local v0, result:Z
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->sLocale:Ljava/util/Locale;

    .line 3193
    return v0

    .line 3191
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasTicker(Landroid/app/Notification;)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 1728
    iget-object v0, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCompatibilityHelp()V
    .locals 2

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1916
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 1917
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 1919
    :cond_0
    return-void
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 19
    .parameter "entry"
    .parameter "parent"

    .prologue
    .line 2863
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v17, v0

    .line 2864
    .local v17, sbn:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v15, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2865
    .local v15, remoteViews:Landroid/widget/RemoteViews;
    if-nez v15, :cond_0

    .line 2866
    const/4 v3, 0x0

    .line 2942
    :goto_0
    return v3

    .line 2870
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 2873
    .local v13, inflater:Landroid/view/LayoutInflater;
    const/16 v16, 0x0

    .line 2874
    .local v16, row:Landroid/view/View;
    sget-boolean v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_1

    .line 2875
    const v3, 0x7f030031

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 2880
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 2881
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v18

    .line 2882
    .local v18, vetoButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f09006f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2886
    const v3, 0x7f0f0085

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 2887
    .local v14, largeIcon:Landroid/widget/ImageView;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 2888
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2889
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2894
    :goto_2
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2897
    const v3, 0x7f0f0079

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 2899
    .local v8, content:Landroid/view/ViewGroup;
    const/high16 v3, 0x6

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 2901
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2902
    .local v4, contentIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_3

    .line 2903
    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2906
    .local v2, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2912
    .end local v2           #listener:Landroid/view/View$OnClickListener;
    :goto_3
    const/4 v11, 0x0

    .line 2913
    .local v11, expanded:Landroid/view/View;
    const/4 v10, 0x0

    .line 2915
    .local v10, exception:Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v3, v8}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 2920
    :goto_4
    if-nez v11, :cond_4

    .line 2921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2922
    .local v12, ident:Ljava/lang/String;
    const-string v3, "TabletStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t inflate view for notification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2923
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2877
    .end local v4           #contentIntent:Landroid/app/PendingIntent;
    .end local v8           #content:Landroid/view/ViewGroup;
    .end local v10           #exception:Ljava/lang/Exception;
    .end local v11           #expanded:Landroid/view/View;
    .end local v12           #ident:Ljava/lang/String;
    .end local v14           #largeIcon:Landroid/widget/ImageView;
    .end local v18           #vetoButton:Landroid/view/View;
    :cond_1
    const v3, 0x7f030017

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_1

    .line 2891
    .restart local v14       #largeIcon:Landroid/widget/ImageView;
    .restart local v18       #vetoButton:Landroid/view/View;
    :cond_2
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v5, 0x0

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2892
    const/4 v3, 0x4

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 2908
    .restart local v4       #contentIntent:Landroid/app/PendingIntent;
    .restart local v8       #content:Landroid/view/ViewGroup;
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 2917
    .restart local v10       #exception:Ljava/lang/Exception;
    .restart local v11       #expanded:Landroid/view/View;
    :catch_0
    move-exception v9

    .line 2918
    .local v9, e:Ljava/lang/RuntimeException;
    move-object v10, v9

    goto :goto_4

    .line 2928
    .end local v9           #e:Ljava/lang/RuntimeException;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v3, :cond_5

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v3

    if-nez v3, :cond_6

    .line 2929
    :cond_5
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2932
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2935
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    .line 2937
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 2938
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 2939
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 2940
    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    .line 2942
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private initTraySound()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 723
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v1, v1, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f050003

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 726
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    .line 727
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mVibrator:Landroid/os/Vibrator;

    .line 728
    return-void
.end method

.method private isImmersive()Z
    .locals 2

    .prologue
    .line 2003
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2007
    :goto_0
    return v1

    .line 2005
    :catch_0
    move-exception v0

    .line 2007
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLanguageRTL(Ljava/util/Locale;)Z
    .locals 2
    .parameter "locale"

    .prologue
    .line 3180
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3181
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "he"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadNotificationPanel()V
    .locals 11

    .prologue
    .line 2726
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2728
    .local v0, N:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2730
    .local v7, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2731
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v5, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 2732
    .local v5, row:Landroid/view/View;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2735
    .end local v5           #row:Landroid/view/View;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2736
    .local v6, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 2737
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2738
    .local v1, child:Landroid/view/View;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2739
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2736
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2743
    .end local v1           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2744
    .local v4, remove:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 2747
    .end local v4           #remove:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 2748
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 2749
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_4

    .line 2750
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    add-int/lit8 v10, v0, -0x1

    sub-int/2addr v10, v2

    invoke-virtual {v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2747
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2754
    .end local v8           #v:Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setNotificationCount(I)V

    .line 2755
    return-void
.end method

.method private notifyUiVisibilityChanged()V
    .locals 2

    .prologue
    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1828
    :goto_0
    return-void

    .line 1826
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private playTraySound()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 734
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 736
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 737
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private reloadAllNotificationIcons()V
    .locals 1

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v0, :cond_0

    .line 2618
    :goto_0
    return-void

    .line 2616
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->removeAllViews()V

    .line 2617
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method private reloadBars()V
    .locals 15

    .prologue
    .line 3131
    iget-object v6, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 3132
    .local v6, context:Landroid/content/Context;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v14

    .line 3133
    .local v14, wm:Landroid/view/WindowManagerImpl;
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v12

    .line 3135
    .local v12, rtl:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3136
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3137
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3139
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 3140
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 3141
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 3143
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 3144
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    if-eqz v1, :cond_1

    .line 3145
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekWindow:Lcom/android/systemui/statusbar/tablet/NotificationPeekPanel;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 3147
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 3148
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 3149
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    if-eqz v1, :cond_2

    .line 3150
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v14, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 3153
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v8

    .line 3154
    .local v8, entriesCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 3155
    .local v7, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v8, :cond_3

    .line 3156
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3155
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3158
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 3160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v13

    .line 3161
    .local v13, sb:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getStatusBarHeight()I

    move-result v2

    .line 3162
    .local v2, height:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, 0x800048

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 3170
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getStatusBarGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3171
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3172
    invoke-virtual {v14, v13, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3174
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 3175
    .local v9, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iget-object v3, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_1

    .line 3177
    .end local v9           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    return-void
.end method

.method private sendKey(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 2037
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->injectInputEventNoWait(Landroid/view/InputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2040
    :goto_0
    return-void

    .line 2038
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setAreThereNotifications()V
    .locals 2

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setClearable(Z)V

    .line 2015
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 2016
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    .line 2020
    :cond_0
    return-void
.end method

.method private setNavigationVisibility(I)V
    .locals 11
    .parameter "visibility"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1693
    const/high16 v8, 0x20

    and-int/2addr v8, p1

    if-eqz v8, :cond_3

    move v2, v6

    .line 1694
    .local v2, disableHome:Z
    :goto_0
    const/high16 v8, 0x100

    and-int/2addr v8, p1

    if-eqz v8, :cond_4

    move v3, v6

    .line 1695
    .local v3, disableRecent:Z
    :goto_1
    const/high16 v8, 0x40

    and-int/2addr v8, p1

    if-eqz v8, :cond_5

    move v0, v6

    .line 1698
    .local v0, disableBack:Z
    :goto_2
    sget-boolean v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_2

    .line 1699
    const/high16 v8, 0x200

    and-int/2addr v8, p1

    if-eqz v8, :cond_6

    move v1, v6

    .line 1700
    .local v1, disableCapture:Z
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->isQuickLaunchNoneMode()Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_0
    const/16 v8, 0x8

    :goto_4
    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->setVisibility(I)V

    .line 1705
    sget-boolean v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v8, :cond_2

    .line 1706
    const/high16 v8, 0x400

    and-int/2addr v8, p1

    if-eqz v8, :cond_8

    move v4, v6

    .line 1707
    .local v4, disableTray:Z
    :goto_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v10, 0x7f0f0040

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1708
    .local v5, mCue:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1709
    if-nez v3, :cond_1

    if-eqz v4, :cond_9

    :cond_1
    move v8, v9

    :goto_6
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1719
    .end local v1           #disableCapture:Z
    .end local v4           #disableTray:Z
    .end local v5           #mCue:Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    move v8, v9

    :goto_7
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1720
    iget-object v10, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    if-eqz v2, :cond_b

    move v8, v9

    :goto_8
    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1721
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-eqz v3, :cond_c

    :goto_9
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1723
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    const/high16 v9, 0x10

    and-int/2addr v9, p1

    if-eqz v9, :cond_d

    :goto_a
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setScreenLocked(Z)V

    .line 1725
    return-void

    .end local v0           #disableBack:Z
    .end local v2           #disableHome:Z
    .end local v3           #disableRecent:Z
    :cond_3
    move v2, v7

    .line 1693
    goto :goto_0

    .restart local v2       #disableHome:Z
    :cond_4
    move v3, v7

    .line 1694
    goto :goto_1

    .restart local v3       #disableRecent:Z
    :cond_5
    move v0, v7

    .line 1695
    goto :goto_2

    .restart local v0       #disableBack:Z
    :cond_6
    move v1, v7

    .line 1699
    goto :goto_3

    .restart local v1       #disableCapture:Z
    :cond_7
    move v8, v7

    .line 1700
    goto :goto_4

    :cond_8
    move v4, v7

    .line 1706
    goto :goto_5

    .restart local v4       #disableTray:Z
    .restart local v5       #mCue:Landroid/view/View;
    :cond_9
    move v8, v7

    .line 1709
    goto :goto_6

    .end local v1           #disableCapture:Z
    .end local v4           #disableTray:Z
    .end local v5           #mCue:Landroid/view/View;
    :cond_a
    move v8, v7

    .line 1719
    goto :goto_7

    :cond_b
    move v8, v7

    .line 1720
    goto :goto_8

    :cond_c
    move v9, v7

    .line 1721
    goto :goto_9

    :cond_d
    move v6, v7

    .line 1723
    goto :goto_a
.end method

.method private showCompatibilityHelp()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 1881
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1912
    :goto_0
    return-void

    .line 1885
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    .line 1886
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1888
    .local v6, button:Landroid/view/View;
    new-instance v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$6;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1898
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d8

    const v4, 0x20300

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1906
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const-string v1, "CompatibilityModeDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1907
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1909
    const v1, 0x10301e3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1911
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatibilityHelpDialog:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V
    .locals 2
    .parameter "key"
    .parameter "n"
    .parameter "firstTime"

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1738
    :cond_1
    if-nez p3, :cond_2

    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 1745
    :cond_2
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasTicker(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1746
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    goto :goto_0
.end method

.method private tw_loadNotificationPanel()V
    .locals 15

    .prologue
    .line 2759
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2761
    .local v0, N:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2762
    .local v11, toShowOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2763
    .local v9, toShowLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2765
    .local v10, toShowMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2766
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v5, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 2767
    .local v5, row:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2768
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2765
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2769
    :cond_0
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2770
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2772
    :cond_1
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2776
    .end local v5           #row:Landroid/view/View;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2777
    .local v8, toRemoveOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_2
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_4

    .line 2778
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2779
    .local v1, child:Landroid/view/View;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 2780
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2777
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2784
    .end local v1           #child:Landroid/view/View;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2785
    .local v6, toRemoveLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_3
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_6

    .line 2786
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2787
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2788
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2785
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2792
    .end local v1           #child:Landroid/view/View;
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2793
    .local v7, toRemoveMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_4
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_8

    .line 2794
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2795
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 2796
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2793
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2800
    .end local v1           #child:Landroid/view/View;
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2801
    .local v4, remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 2804
    .end local v4           #remove:Landroid/view/View;
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2805
    .restart local v4       #remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_6

    .line 2808
    .end local v4           #remove:Landroid/view/View;
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2809
    .restart local v4       #remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 2812
    .end local v4           #remove:Landroid/view/View;
    :cond_b
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_d

    .line 2813
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2814
    .local v12, v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_c

    .line 2815
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2812
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2819
    .end local v12           #v:Landroid/view/View;
    :cond_d
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_f

    .line 2820
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2821
    .restart local v12       #v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_e

    .line 2822
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2819
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2826
    .end local v12           #v:Landroid/view/View;
    :cond_f
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_11

    .line 2827
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 2828
    .restart local v12       #v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_10

    .line 2829
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 2826
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2834
    .end local v12           #v:Landroid/view/View;
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationCountText()V

    .line 2836
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_12

    .line 2837
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationCart:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2842
    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_13

    .line 2843
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationCart:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2848
    :goto_c
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setNotificationCount(I)V

    .line 2849
    return-void

    .line 2839
    :cond_12
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationCart:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 2845
    :cond_13
    iget-object v13, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationCart:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c
.end method

.method private updateNotificationIcons()V
    .locals 22

    .prologue
    .line 2624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    if-nez v2, :cond_1

    .line 2723
    :cond_0
    :goto_0
    return-void

    .line 2628
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_2

    .line 2629
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tw_loadNotificationPanel()V

    .line 2635
    :goto_1
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    invoke-direct {v15, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2639
    .local v15, params:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v2, :cond_3

    .line 2640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 2641
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0900bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0900c0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f020016

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 2648
    .local v8, dndNotification:Landroid/app/Notification;
    new-instance v13, Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v3, "_dnd"

    invoke-direct {v13, v2, v3, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2650
    .local v13, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    const v2, 0x7f020016

    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    .line 2651
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2652
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v5, 0x0

    invoke-virtual {v13, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->setPadding(IIII)V

    .line 2654
    new-instance v20, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/16 v21, 0x0

    new-instance v2, Lcom/android/internal/statusbar/StatusBarNotification;

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2, v13}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDDummyEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2, v13, v15}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 2631
    .end local v8           #dndNotification:Landroid/app/Notification;
    .end local v13           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v15           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadNotificationPanel()V

    goto/16 :goto_1

    .line 2663
    .restart local v15       #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v3, 0x2

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 2669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v9

    .line 2675
    .local v9, N:I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 2680
    .local v18, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 2681
    .local v14, maxNotificationIconsCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    add-int/lit8 v14, v14, -0x1

    .line 2682
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    add-int/lit8 v14, v14, -0x1

    .line 2689
    :cond_5
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v14, :cond_6

    .line 2690
    if-lt v11, v9, :cond_8

    .line 2701
    :cond_6
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    .local v17, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v2

    if-ge v11, v2, :cond_a

    .line 2703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2704
    .local v10, child:Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2705
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2702
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 2692
    .end local v10           #child:Landroid/view/View;
    .end local v17           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v3, v9, v11

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarNotification;->isInvisibleIconNotification()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2694
    add-int/lit8 v14, v14, 0x1

    .line 2689
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2698
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v3, v9, v11

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2709
    .restart local v17       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 2710
    .local v16, remove:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 2713
    .end local v16           #remove:Landroid/view/View;
    :cond_b
    const/4 v11, 0x0

    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_d

    .line 2714
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 2715
    .local v19, v:Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2716
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_c

    .line 2717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11, v15}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2713
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2720
    .end local v19           #v:Landroid/view/View;
    :cond_d
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;->getChildCount()I

    move-result v3

    iget v4, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0
.end method

.method private updateText()V
    .locals 6

    .prologue
    const v5, 0x7f0f0073

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3072
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0f00da

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3073
    .local v0, settingsTextView:Landroid/widget/TextView;
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3077
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationCountText()V

    .line 3079
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090007

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 3084
    invoke-virtual {v0, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3085
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3086
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3087
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3088
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v2, 0x7f0f0080

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3089
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3090
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3092
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 1420
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 3
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 1433
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1435
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->isImmersive()Z

    move-result v0

    .line 1438
    .local v0, immersive:Z
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1440
    const-string v1, "TabletStatusBar"

    const-string v2, "Notification has fullScreenIntent and activity is not immersive; sending fullScreenIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :try_start_0
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 1451
    return-void

    .line 1447
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    goto :goto_0

    .line 1444
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 10
    .parameter "key"
    .parameter "notification"

    .prologue
    const/4 v9, 0x0

    .line 2552
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {v7, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2555
    .local v7, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2557
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->number:I

    iget-object v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 2562
    .local v0, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t attach StatusBarIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2611
    .end local v7           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :goto_0
    return-object v7

    .line 2567
    .restart local v7       #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    new-instance v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v6, p1, p2, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2570
    .local v6, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2571
    const-string v1, "TabletStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD:MiniCon-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2575
    goto :goto_0

    .line 2580
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_3

    .line 2581
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2582
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2585
    goto :goto_0

    .line 2588
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2591
    goto/16 :goto_0

    .line 2595
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 2598
    goto/16 :goto_0

    .line 2605
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v8

    .line 2609
    .local v8, pos:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    goto/16 :goto_0
.end method

.method protected addPanelWindows()V
    .locals 30

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 309
    .local v10, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 310
    .local v26, res:Landroid/content/res/Resources;
    invoke-static {}, Landroid/util/LocaleUtil;->isLayoutDirectionRtl()Z

    move-result v27

    .line 313
    .local v27, rtl:Z
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_10

    .line 314
    const v4, 0x7f03002f

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    .line 322
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->show(ZZ)V

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;

    const/16 v6, 0x3e9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f002f

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f0080

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    .line 333
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f0074

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0f001d

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 340
    .local v20, mobileRSSI:Landroid/widget/ImageView;
    if-eqz v20, :cond_0

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addPhoneSignalIconView(Landroid/widget/ImageView;)V

    .line 343
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0f0019

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/ImageView;

    .line 345
    .local v29, wifiRSSI:Landroid/widget/ImageView;
    if-eqz v29, :cond_1

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiIconView(Landroid/widget/ImageView;)V

    .line 350
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_11

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v5, 0x7f0f002e

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 353
    .local v28, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f0073

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    .line 366
    .end local v28           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v6, 0x7f0f0073

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCombinedLabelView(Landroid/widget/TextView;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 372
    const v21, 0x7f0b0058

    .line 373
    .local v21, npWidth:I
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_2

    .line 374
    const v21, 0x7f0b005e

    .line 377
    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v4

    const/16 v5, 0x7de

    const v6, 0x1820300

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    .line 388
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 389
    if-eqz v27, :cond_3

    .line 390
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 391
    :cond_3
    const-string v4, "NotificationPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 394
    const/high16 v4, 0x103

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 397
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    new-instance v4, Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-direct {v4, v10}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 445
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_12

    .line 446
    const v4, 0x7f030032

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 453
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/high16 v5, 0x40

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setSystemUiVisibility(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;

    const/16 v6, 0x3fd

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 461
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const v4, 0x7f0b005b

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v3, v4

    const/4 v4, -0x1

    const/16 v5, 0x7de

    const v6, 0x1820100

    const/4 v7, -0x3

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 470
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 471
    if-eqz v27, :cond_4

    .line 472
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 473
    :cond_4
    const-string v4, "RecentsPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 474
    const v4, 0x7f0d0008

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 475
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 478
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setBar(Lcom/android/systemui/statusbar/StatusBar;)V

    .line 483
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v4, :cond_a

    .line 485
    :try_start_0
    const-string v4, "com.android.systemui.statusbar.tablet.MiniModeAppsPanel"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 486
    const/16 v19, -0x1

    .line 488
    .local v19, miniAppPanelId:I
    :try_start_1
    const-class v4, Lcom/android/systemui/R$layout;

    const-string v5, "status_bar_mini_mode_apps_panel"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 489
    .local v15, layoutField:Ljava/lang/reflect/Field;
    if-eqz v15, :cond_5

    .line 490
    invoke-virtual {v15, v15}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v19

    .line 498
    .end local v15           #layoutField:Ljava/lang/reflect/Field;
    :cond_5
    :goto_3
    if-lez v19, :cond_6

    .line 499
    const/4 v4, 0x0

    :try_start_2
    move/from16 v0, v19

    invoke-static {v10, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    .line 502
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 503
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    .line 506
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 508
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x7de

    const v7, 0x800128

    const/4 v8, -0x3

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 517
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x53

    :try_start_3
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 518
    if-eqz v27, :cond_8

    .line 519
    const/16 v4, 0x55

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 520
    :cond_8
    const-string v4, "MiniModeAppsPanel"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 522
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "closeMiniAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCloseMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "openMiniAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOpenMiniAppsPanel:Ljava/lang/reflect/Method;

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 530
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/4 v4, 0x0

    const-class v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    aput-object v5, v22, v4

    .line 531
    .local v22, paramTypes1:[Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "setBar"

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 532
    .local v17, mSetBar:Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    aput-object p0, v24, v4

    .line 534
    .local v24, params:[Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    const-class v5, Landroid/os/Handler;

    aput-object v5, v23, v4

    .line 535
    .local v23, paramTypes2:[Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    aput-object v5, v25, v4

    .line 536
    .local v25, params2:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayClass:Ljava/lang/Class;

    const-string v5, "setStatusBarHandler"

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 538
    .local v18, mSetHandler:Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .end local v17           #mSetBar:Ljava/lang/reflect/Method;
    .end local v18           #mSetHandler:Ljava/lang/reflect/Method;
    .end local v22           #paramTypes1:[Ljava/lang/Class;
    .end local v23           #paramTypes2:[Ljava/lang/Class;
    .end local v24           #params:[Ljava/lang/Object;
    .end local v25           #params2:[Ljava/lang/Object;
    :cond_9
    move-object v2, v3

    .line 559
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v19           #miniAppPanelId:I
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v4, :cond_a

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanel:Landroid/view/ViewGroup;

    const v5, 0x7f0f0061

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayView:Landroid/view/View;

    .line 561
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 564
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeAppsPanelInAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v5, 0x7f0f003f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarContainerView:Landroid/view/View;

    .line 568
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 570
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/tablet/TFCubicRotateAnimation;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarInAnim:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x10e

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarOutAnim:Landroid/view/animation/Animation;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const v5, 0x7f0f0040

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 590
    .local v16, mCue:Landroid/view/View;
    if-eqz v16, :cond_13

    .line 591
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mButtonOnTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 593
    new-instance v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 604
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->initTraySound()V

    .line 608
    .end local v16           #mCue:Landroid/view/View;
    :cond_a
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-nez v4, :cond_d

    .line 609
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    if-eqz v4, :cond_d

    .line 610
    const/4 v13, -0x1

    .line 612
    .local v13, id:I
    :try_start_4
    const-class v4, Lcom/android/systemui/R$id;

    const-string v5, "miniapp_tray_dot"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 613
    .local v14, idfield:Ljava/lang/reflect/Field;
    if-eqz v14, :cond_c

    .line 614
    invoke-virtual {v14, v14}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v13

    .line 622
    .end local v14           #idfield:Ljava/lang/reflect/Field;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 623
    .local v11, dotView:Landroid/view/View;
    if-eqz v11, :cond_d

    .line 624
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 633
    .end local v11           #dotView:Landroid/view/View;
    .end local v13           #id:I
    :cond_d
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_14

    .line 634
    const v4, 0x7f03002c

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    .line 642
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardEnabledChangeListener(Lcom/android/systemui/statusbar/tablet/InputMethodsPanel$OnHardKeyboardEnabledChangeListener;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;

    const/16 v6, 0x411

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeSwitchButton(Lcom/android/systemui/statusbar/tablet/InputMethodButton;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 647
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x7de

    const v8, 0x1820100

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 656
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 657
    if-eqz v27, :cond_e

    .line 658
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 659
    :cond_e
    const-string v4, "InputMethodsPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 660
    const v4, 0x7f0d0008

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 662
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    .line 667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    new-instance v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;

    const/16 v6, 0x41b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;ILcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setTrigger(Landroid/view/View;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->setVisibility(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setIgnoreChildren(ILandroid/view/View;Landroid/view/View;)V

    .line 672
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v5, 0xfa

    const/4 v6, -0x2

    const/16 v7, 0x7de

    const v8, 0x1820100

    const/4 v9, -0x3

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 681
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x55

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 682
    if-eqz v27, :cond_f

    .line 683
    const/16 v4, 0x53

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 684
    :cond_f
    const-string v4, "CompatModePanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 685
    const v4, 0x1030002

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 687
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    return-void

    .line 317
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v20           #mobileRSSI:Landroid/widget/ImageView;
    .end local v21           #npWidth:I
    .end local v29           #wifiRSSI:Landroid/widget/ImageView;
    :cond_10
    const v4, 0x7f030014

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    goto/16 :goto_0

    .line 357
    .restart local v20       #mobileRSSI:Landroid/widget/ImageView;
    .restart local v29       #wifiRSSI:Landroid/widget/ImageView;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f007f

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addWifiLabelView(Landroid/widget/TextView;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f001e

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addDataTypeIconView(Landroid/widget/ImageView;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f007c

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->addMobileLabelView(Landroid/widget/TextView;)V

    goto/16 :goto_1

    .line 449
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v21       #npWidth:I
    :cond_12
    const v4, 0x7f03001a

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    goto/16 :goto_2

    .line 543
    :catch_0
    move-exception v12

    .line 544
    .local v12, ex:Ljava/lang/ClassNotFoundException;
    :goto_8
    const-string v4, "TabletStatusBar"

    const-string v5, "ClassNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_4

    .line 546
    .end local v12           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v12

    .line 547
    .local v12, ex:Ljava/lang/NoSuchMethodException;
    :goto_9
    const-string v4, "TabletStatusBar"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_4

    .line 549
    .end local v12           #ex:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v12

    .line 550
    .local v12, ex:Ljava/lang/IllegalAccessException;
    :goto_a
    const-string v4, "TabletStatusBar"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_4

    .line 552
    .end local v12           #ex:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v12

    .line 553
    .local v12, ex:Ljava/lang/reflect/InvocationTargetException;
    :goto_b
    const-string v4, "TabletStatusBar"

    const-string v5, "InvocationTargetException"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_4

    .line 555
    .end local v12           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v12

    .line 556
    .local v12, ex:Ljava/lang/Exception;
    :goto_c
    const-string v4, "TabletStatusBar"

    const-string v5, "Loading MiniAppsPanel has failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    goto/16 :goto_4

    .line 602
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v16       #mCue:Landroid/view/View;
    :cond_13
    const-string v4, "TabletStatusBar"

    const-string v5, "can not load resource. (R.id.traybar_handler)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 639
    .end local v16           #mCue:Landroid/view/View;
    :cond_14
    const v4, 0x7f03000d

    const/4 v5, 0x0

    invoke-static {v10, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    goto/16 :goto_7

    .line 619
    .restart local v13       #id:I
    :catch_5
    move-exception v4

    goto/16 :goto_6

    .line 618
    :catch_6
    move-exception v4

    goto/16 :goto_6

    .line 617
    :catch_7
    move-exception v4

    goto/16 :goto_6

    .line 616
    :catch_8
    move-exception v4

    goto/16 :goto_6

    .line 555
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v13           #id:I
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v19       #miniAppPanelId:I
    :catch_9
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_c

    .line 552
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_a
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_b

    .line 549
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_b
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_a

    .line 546
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_c
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_9

    .line 543
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v3       #lp:Landroid/view/WindowManager$LayoutParams;
    :catch_d
    move-exception v12

    move-object v2, v3

    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    goto :goto_8

    .line 495
    :catch_e
    move-exception v4

    goto/16 :goto_3

    .line 494
    :catch_f
    move-exception v4

    goto/16 :goto_3

    .line 493
    :catch_10
    move-exception v4

    goto/16 :goto_3

    .line 492
    :catch_11
    move-exception v4

    goto/16 :goto_3
.end method

.method public animateCollapse()V
    .locals 1

    .prologue
    .line 1781
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse(Z)V

    .line 1782
    return-void
.end method

.method public animateExpand()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 1776
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1777
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1778
    return-void
.end method

.method public applyEDMPolicy()V
    .locals 0

    .prologue
    .line 3097
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBar;->applyEDMPolicy()V

    .line 3098
    return-void
.end method

.method applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V
    .locals 6
    .parameter "sbn"
    .parameter "content"

    .prologue
    .line 2946
    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const v4, 0x10900da

    if-eq v3, v4, :cond_0

    .line 2948
    const/4 v2, 0x0

    .line 2950
    .local v2, version:I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2951
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2955
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-lez v2, :cond_1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 2956
    const v3, 0x7f02003e

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2967
    .end local v2           #version:I
    :cond_0
    :goto_1
    return-void

    .line 2952
    .restart local v2       #version:I
    :catch_0
    move-exception v0

    .line 2953
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "TabletStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up ApplicationInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2959
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_2

    .line 2960
    const v3, 0x7f020141

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 2962
    :cond_2
    const v3, 0x7f02003d

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 2971
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2975
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 2976
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 2977
    return-void

    .line 2972
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disable(I)V
    .locals 13
    .parameter "state"

    .prologue
    const/16 v12, 0x425

    const/16 v11, 0x3fd

    const/high16 v10, 0x100

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1621
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 1622
    .local v1, old:I
    xor-int v0, p1, v1

    .line 1623
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    .line 1625
    const-string v5, "TabletStatusBar"

    const-string v6, "disable: 0x%08x -> 0x%08x (diff: 0x%08x)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/high16 v5, 0x80

    and-int/2addr v5, v0

    if-eqz v5, :cond_0

    .line 1630
    const/high16 v5, 0x80

    and-int/2addr v5, p1

    if-nez v5, :cond_6

    move v2, v3

    .line 1631
    .local v2, show:Z
    :goto_0
    const-string v6, "TabletStatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DISABLE_CLOCK: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_7

    const-string v5, "no"

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showClock(Z)V

    .line 1634
    .end local v2           #show:Z
    :cond_0
    const/high16 v5, 0x10

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 1635
    const/high16 v5, 0x10

    and-int/2addr v5, p1

    if-nez v5, :cond_8

    move v2, v3

    .line 1636
    .restart local v2       #show:Z
    :goto_2
    const-string v5, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DISABLE_SYSTEM_INFO: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_9

    const-string v3, "no"

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    if-eqz v2, :cond_a

    move v3, v4

    :goto_4
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1639
    .end local v2           #show:Z
    :cond_1
    const/high16 v3, 0x1

    and-int/2addr v3, v0

    if-eqz v3, :cond_2

    .line 1640
    const/high16 v3, 0x1

    and-int/2addr v3, p1

    if-eqz v3, :cond_2

    .line 1641
    const-string v3, "TabletStatusBar"

    const-string v5, "DISABLE_EXPAND: yes"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1643
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->visibilityChanged(Z)V

    .line 1646
    :cond_2
    const/high16 v3, 0x2

    and-int/2addr v3, v0

    if-eqz v3, :cond_e

    .line 1647
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "do_not_disturb"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    .line 1650
    const/high16 v3, 0x2

    and-int/2addr v3, p1

    if-eqz v3, :cond_c

    .line 1651
    const-string v4, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_b

    const-string v3, " (DND)"

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 1658
    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 1664
    :cond_3
    :goto_7
    const/high16 v3, 0x760

    and-int/2addr v3, v0

    if-eqz v3, :cond_4

    .line 1673
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setNavigationVisibility(I)V

    .line 1675
    and-int v3, p1, v10

    if-eqz v3, :cond_4

    .line 1677
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v3, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1678
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v3, v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1682
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v3, :cond_5

    .line 1683
    const/high16 v3, 0x400

    and-int/2addr v3, v0

    or-int/2addr v3, v10

    if-eqz v3, :cond_5

    .line 1684
    const/high16 v3, 0x400

    and-int/2addr v3, p1

    or-int/2addr v3, v10

    if-eqz v3, :cond_5

    .line 1685
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v3, v12}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1686
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v3, v12}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1690
    :cond_5
    return-void

    :cond_6
    move v2, v4

    .line 1630
    goto/16 :goto_0

    .line 1631
    .restart local v2       #show:Z
    :cond_7
    const-string v5, "yes"

    goto/16 :goto_1

    .end local v2           #show:Z
    :cond_8
    move v2, v4

    .line 1635
    goto/16 :goto_2

    .line 1636
    .restart local v2       #show:Z
    :cond_9
    const-string v3, "yes"

    goto/16 :goto_3

    .line 1637
    :cond_a
    const/16 v3, 0x8

    goto/16 :goto_4

    .line 1651
    .end local v2           #show:Z
    :cond_b
    const-string v3, ""

    goto :goto_5

    .line 1654
    :cond_c
    const-string v4, "TabletStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationDNDMode:Z

    if-eqz v3, :cond_d

    const-string v3, " (DND)"

    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    const-string v3, ""

    goto :goto_8

    .line 1659
    :cond_e
    const/high16 v3, 0x8

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 1660
    const/high16 v3, 0x8

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    .line 1661
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    goto :goto_7
.end method

.method public doneTicking()V
    .locals 2

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1768
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3064
    const-string v0, "mDisabled=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3065
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3066
    const-string v0, "mNetworkController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3067
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3068
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getStatusBarGravity()I
    .locals 1

    .prologue
    .line 1130
    const/16 v0, 0x57

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->getHeight()I

    move-result v0

    return v0
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 2026
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 2028
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    :goto_0
    return-void

    .line 2029
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 5

    .prologue
    .line 768
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 770
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x105000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNaturalBarHeight:I

    .line 773
    const v4, 0x1050010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 775
    .local v1, newIconSize:I
    const v4, 0x7f0b0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 779
    .local v0, newIconHPadding:I
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_0

    .line 780
    const v4, 0x7f0b005c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 782
    const v4, 0x7f0b005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 787
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    if-ne v0, v4, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    if-eq v1, v4, :cond_2

    .line 789
    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconHPadding:I

    .line 790
    iput v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconSize:I

    .line 791
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 803
    :cond_2
    const/4 v2, 0x0

    .line 804
    .local v2, numIcons:I
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_4

    .line 805
    const v4, 0x7f0a0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 811
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    if-eq v2, v4, :cond_3

    .line 812
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMaxNotificationIcons:I

    .line 814
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadAllNotificationIcons()V

    .line 816
    :cond_3
    return-void

    .line 807
    :cond_4
    const/high16 v4, 0x7f0a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;
    .locals 6
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 2177
    new-instance v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected makeStatusBarView()Landroid/view/View;
    .locals 27

    .prologue
    .line 819
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 821
    .local v10, context:Landroid/content/Context;
    const-string v23, "window"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v24, "com.sec.feature.minimode_tray"

    invoke-virtual/range {v23 .. v24}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    .line 831
    new-instance v23, Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->registerReceiver()V

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    .line 844
    const/16 v16, 0x0

    .line 845
    .local v16, sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    sget-boolean v23, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_5

    .line 846
    const v23, 0x7f030028

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v10, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .end local v16           #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    check-cast v16, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 850
    .restart local v16       #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->setHandler(Landroid/os/Handler;)V

    .line 858
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 859
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "Tablet device cannot show navigation bar and system bar"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :catch_0
    move-exception v23

    .line 865
    :cond_0
    const v23, 0x7f0f0035

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    .line 868
    const v23, 0x7f0f0038

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationArea:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationTriggerTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 874
    const v23, 0x7f0f0071

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationTrigger:Landroid/view/View;

    .line 880
    const v23, 0x7f0f002b

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationIconArea:Lcom/android/systemui/statusbar/tablet/NotificationIconArea;

    .line 883
    const v23, 0x7f0f0029

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIconLayout:Lcom/android/systemui/statusbar/tablet/NotificationIconArea$IconLayout;

    .line 888
    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v21

    .line 889
    .local v21, vc:Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPeekTapDuration:I

    .line 890
    const/16 v23, 0x12c

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationFlingVelocity:I

    .line 892
    new-instance v23, Lcom/android/systemui/statusbar/tablet/TabletTicker;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    .line 895
    new-instance v23, Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 897
    new-instance v23, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v24, v0

    const v23, 0x7f0f002f

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 899
    new-instance v23, Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/android/systemui/statusbar/policy/BluetoothController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-object/from16 v24, v0

    const v23, 0x7f0f0074

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addIconView(Landroid/widget/ImageView;)V

    .line 902
    new-instance v23, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 903
    const v23, 0x7f0f002e

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 905
    .local v20, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 908
    const v23, 0x7f0f0010

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    .line 909
    const v23, 0x7f0f0036

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const v24, 0x7f0f0011

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHomeButton:Landroid/view/View;

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const v24, 0x7f0f0013

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const v24, 0x7f0f0012

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    sget-boolean v23, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_1

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 920
    :cond_1
    new-instance v13, Landroid/animation/LayoutTransition;

    invoke-direct {v13}, Landroid/animation/LayoutTransition;-><init>()V

    .line 921
    .local v13, lt:Landroid/animation/LayoutTransition;
    const-wide/16 v23, 0xfa

    move-wide/from16 v0, v23

    invoke-virtual {v13, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 923
    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    move/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v13, v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 924
    const/16 v23, 0x1

    const-wide/16 v24, 0x0

    move/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v13, v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 925
    new-instance v23, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$3;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 940
    const v23, 0x7f0f006e

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    .line 941
    const v23, 0x7f0f006f

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    sget-boolean v23, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_2

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNavigationArea:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const v24, 0x7f0f00be

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mQuickLaunchButton:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    .line 952
    :cond_2
    const v23, 0x7f0f0070

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->setVisibility(I)V

    .line 957
    const v23, 0x7f0f0037

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    .line 960
    const v23, 0x7f0f003a

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mShadow:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$4;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 982
    const/16 v7, 0x258

    .line 983
    .local v7, LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    const/16 v6, 0x3e8

    .line 984
    .local v6, LIGHTS_GOING_OUT_SHADOW_DURATION:I
    const/16 v5, 0x1f4

    .line 986
    .local v5, LIGHTS_GOING_OUT_SHADOW_DELAY:I
    const/16 v4, 0xc8

    .line 988
    .local v4, LIGHTS_COMING_UP_SYSBAR_DURATION:I
    const/4 v3, 0x0

    .line 990
    .local v3, LIGHTS_COMING_UP_SHADOW_DURATION:I
    new-instance v22, Landroid/animation/LayoutTransition;

    invoke-direct/range {v22 .. v22}, Landroid/animation/LayoutTransition;-><init>()V

    .line 991
    .local v22, xition:Landroid/animation/LayoutTransition;
    const/16 v23, 0x2

    const/16 v24, 0x0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 993
    const/16 v23, 0x2

    const-wide/16 v24, 0xc8

    invoke-virtual/range {v22 .. v25}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 994
    const/16 v23, 0x2

    const-wide/16 v24, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 995
    const/16 v23, 0x3

    const/16 v24, 0x0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_1

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 997
    const/16 v23, 0x3

    const-wide/16 v24, 0x258

    invoke-virtual/range {v22 .. v25}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 998
    const/16 v23, 0x3

    const-wide/16 v24, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 999
    const v23, 0x7f0f0034

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1001
    new-instance v22, Landroid/animation/LayoutTransition;

    .end local v22           #xition:Landroid/animation/LayoutTransition;
    invoke-direct/range {v22 .. v22}, Landroid/animation/LayoutTransition;-><init>()V

    .line 1002
    .restart local v22       #xition:Landroid/animation/LayoutTransition;
    const/16 v23, 0x2

    const/16 v24, 0x0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_2

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1004
    const/16 v23, 0x2

    const-wide/16 v24, 0x3e8

    invoke-virtual/range {v22 .. v25}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1005
    const/16 v23, 0x2

    const-wide/16 v24, 0x1f4

    invoke-virtual/range {v22 .. v25}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1006
    const/16 v23, 0x3

    const/16 v24, 0x0

    const-string v25, "alpha"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_3

    invoke-static/range {v24 .. v26}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 1008
    const/16 v23, 0x3

    const-wide/16 v24, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1009
    const/16 v23, 0x3

    const-wide/16 v24, 0x0

    invoke-virtual/range {v22 .. v25}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 1010
    const v23, 0x7f0f0039

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1013
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 1016
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addPanelWindows()V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1020
    sget-boolean v23, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_6

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00dc

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationCart:Landroid/widget/LinearLayout;

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00df

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationCart:Landroid/widget/LinearLayout;

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00de

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00e1

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00dd

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationTitle:Landroid/widget/TextView;

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00e0

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationTitle:Landroid/widget/TextView;

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationItems:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationItems:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1051
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f0078

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ScrollView;

    .line 1053
    .local v17, scroller:Landroid/widget/ScrollView;
    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->addOnBarHeightChangedListener(Lcom/android/systemui/statusbar/tablet/HeightReceiver$OnBarHeightChangedListener;)V

    .line 1058
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 1059
    .local v12, filter:Landroid/content/IntentFilter;
    const-string v23, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1060
    const-string v23, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1063
    const-string v23, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1068
    sget-boolean v23, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v23, :cond_3

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00e2

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    new-instance v24, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$5;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1079
    new-instance v8, Lcom/android/systemui/statusbar/policy/AlarmController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lcom/android/systemui/statusbar/policy/AlarmController;-><init>(Landroid/content/Context;)V

    .line 1080
    .local v8, alarmController:Lcom/android/systemui/statusbar/policy/AlarmController;
    const v23, 0x7f0f00d8

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/policy/AlarmController;->addIconView(Landroid/widget/ImageView;)V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00d8

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/policy/AlarmController;->addIconView(Landroid/widget/ImageView;)V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v25, 0x7f0f00e4

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->addIconView(Landroid/widget/ImageView;)V

    .line 1087
    new-instance v14, Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;-><init>(Landroid/content/Context;)V

    .line 1088
    .local v14, mFaceDetectionController:Lcom/android/systemui/statusbar/policy/FaceDetectionController;
    const v23, 0x7f0f00d7

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->addIconView(Landroid/widget/ImageView;)V

    .line 1094
    .end local v8           #alarmController:Lcom/android/systemui/statusbar/policy/AlarmController;
    .end local v14           #mFaceDetectionController:Lcom/android/systemui/statusbar/policy/FaceDetectionController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f080007

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    .line 1095
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 1096
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1098
    .local v15, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00d9

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1103
    .local v18, scrollerChild:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f00db

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1104
    .local v19, settings_underline:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    .end local v15           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v18           #scrollerChild:Landroid/widget/LinearLayout;
    .end local v19           #settings_underline:Landroid/view/View;
    :cond_4
    :try_start_1
    const-string v23, "android.view.MotionEvent"

    invoke-static/range {v23 .. v23}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1111
    .local v9, classMotionEvent:Ljava/lang/Class;
    const-string v23, "getSumSize"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mGetSumSizeMethod:Ljava/lang/reflect/Method;

    .line 1112
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsExistPalmMethod:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1122
    .end local v9           #classMotionEvent:Ljava/lang/Class;
    :goto_2
    return-object v16

    .line 848
    .end local v3           #LIGHTS_COMING_UP_SHADOW_DURATION:I
    .end local v4           #LIGHTS_COMING_UP_SYSBAR_DURATION:I
    .end local v5           #LIGHTS_GOING_OUT_SHADOW_DELAY:I
    .end local v6           #LIGHTS_GOING_OUT_SHADOW_DURATION:I
    .end local v7           #LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    .end local v12           #filter:Landroid/content/IntentFilter;
    .end local v13           #lt:Landroid/animation/LayoutTransition;
    .end local v17           #scroller:Landroid/widget/ScrollView;
    .end local v20           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v21           #vc:Landroid/view/ViewConfiguration;
    .end local v22           #xition:Landroid/animation/LayoutTransition;
    :cond_5
    const v23, 0x7f030008

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v10, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .end local v16           #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    check-cast v16, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    .restart local v16       #sb:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;
    goto/16 :goto_0

    .line 1036
    .restart local v3       #LIGHTS_COMING_UP_SHADOW_DURATION:I
    .restart local v4       #LIGHTS_COMING_UP_SYSBAR_DURATION:I
    .restart local v5       #LIGHTS_GOING_OUT_SHADOW_DELAY:I
    .restart local v6       #LIGHTS_GOING_OUT_SHADOW_DURATION:I
    .restart local v7       #LIGHTS_GOING_OUT_SYSBAR_DURATION:I
    .restart local v13       #lt:Landroid/animation/LayoutTransition;
    .restart local v20       #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .restart local v21       #vc:Landroid/view/ViewConfiguration;
    .restart local v22       #xition:Landroid/animation/LayoutTransition;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    move-object/from16 v23, v0

    const v24, 0x7f0f0079

    invoke-virtual/range {v23 .. v24}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPile:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_1

    .line 1113
    .restart local v12       #filter:Landroid/content/IntentFilter;
    .restart local v17       #scroller:Landroid/widget/ScrollView;
    :catch_1
    move-exception v11

    .line 1114
    .local v11, ex:Ljava/lang/ClassNotFoundException;
    const-string v23, "TabletStatusBar"

    const-string v24, "ClassNotFoundException"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsExistPalmMethod:Z

    goto :goto_2

    .line 1116
    .end local v11           #ex:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v11

    .line 1117
    .local v11, ex:Ljava/lang/NoSuchMethodException;
    const-string v23, "TabletStatusBar"

    const-string v24, "NoSuchMethodException"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsExistPalmMethod:Z

    goto :goto_2

    .line 991
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 995
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1002
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1006
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onBarHeightChanged(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 1134
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1136
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-nez v0, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, p1, :cond_0

    .line 1141
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1142
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    .line 1143
    .local v1, wm:Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/tablet/TabletStatusBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onClickCompatModeButton()V
    .locals 3

    .prologue
    .line 2153
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v0, 0x41a

    .line 2155
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2156
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2157
    return-void

    .line 2153
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x41b

    goto :goto_0
.end method

.method public onClickInputMethodSwitchButton()V
    .locals 3

    .prologue
    .line 2146
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/16 v0, 0x410

    .line 2148
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2149
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2150
    return-void

    .line 2146
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x411

    goto :goto_0
.end method

.method public onClickRecentButton()V
    .locals 3

    .prologue
    .line 2137
    iget v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 2138
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x3fd

    .line 2140
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2141
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2143
    .end local v0           #msg:I
    :cond_0
    return-void

    .line 2138
    :cond_1
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHeightReceiver:Lcom/android/systemui/statusbar/tablet/HeightReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/HeightReceiver;->updateHeight()V

    .line 747
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->loadDimens()V

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->getNotificationPanelHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 749
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanelParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 754
    sget-boolean v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 755
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateText()V

    .line 759
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableUiDisplayMirroring"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hasDirectionChanged(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->reloadBars()V

    .line 765
    :cond_1
    return-void
.end method

.method public onHardKeyboardEnabledChange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1996
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setHardKeyboardEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1999
    :goto_0
    return-void

    .line 1997
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLongClickRecentButton()V
    .locals 4

    .prologue
    .line 2162
    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisabled:I

    const/high16 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 2164
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2165
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2166
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2167
    const-string v2, "sec.android.intent.extra.LAUNCHER_ACTION"

    const-string v3, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2168
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2169
    :catch_0
    move-exception v0

    .line 2170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 1429
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1604
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1605
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->remove(Landroid/os/IBinder;)V

    .line 1606
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    .line 1607
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 6
    .parameter "key"

    .prologue
    .line 2241
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2242
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 2243
    const-string v3, "TabletStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNotification for unknown key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    const/4 v3, 0x0

    .line 2267
    :goto_0
    return-object v3

    .line 2248
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2249
    const-string v3, "TabletStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE:MiniCon-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2251
    .local v1, expandedParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2265
    .end local v1           #expandedParent:Landroid/view/ViewGroup;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 2267
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0

    .line 2254
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2255
    .local v2, rowParent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public resetNotificationPeekFadeTimer()V
    .locals 4

    .prologue
    const/16 v3, 0x3eb

    .line 2439
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2440
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 2442
    return-void
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 1
    .parameter "available"
    .parameter "enabled"

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setHardKeyboardStatus(Z)V

    .line 1989
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setHardKeyboardStatus(ZZ)V

    .line 1991
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 6
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    const/16 v5, 0x425

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1922
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, p1, v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->setImeWindowStatus(Landroid/os/IBinder;Z)V

    .line 1924
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->updateNotificationIcons()V

    .line 1925
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodsPanel:Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/tablet/InputMethodsPanel;->setImeToken(Landroid/os/IBinder;)V

    .line 1927
    packed-switch p3, :pswitch_data_0

    .line 1948
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_5

    .line 1950
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_4

    .line 1951
    const v0, 0x7f02010e

    .line 1967
    .local v0, res:I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBackButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1970
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMiniModeTrayEnabled:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mIsMiniAppPanelLoadedProperly:Z

    if-eqz v1, :cond_7

    .line 1971
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mInputMethodSwitchButton:Lcom/android/systemui/statusbar/tablet/InputMethodButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/InputMethodButton;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 1972
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1973
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1980
    :cond_0
    :goto_2
    return-void

    .end local v0           #res:I
    :cond_1
    move v1, v2

    .line 1922
    goto :goto_0

    .line 1930
    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_2

    .line 1931
    const v0, 0x7f02010d

    .restart local v0       #res:I
    goto :goto_1

    .line 1933
    .end local v0           #res:I
    :cond_2
    const v0, 0x7f020020

    .line 1936
    .restart local v0       #res:I
    goto :goto_1

    .line 1939
    .end local v0           #res:I
    :pswitch_1
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_3

    .line 1940
    const v0, 0x7f02010e

    .restart local v0       #res:I
    goto :goto_1

    .line 1942
    .end local v0           #res:I
    :cond_3
    const v0, 0x7f020021

    .line 1945
    .restart local v0       #res:I
    goto :goto_1

    .line 1953
    .end local v0           #res:I
    :cond_4
    const v0, 0x7f020021

    .restart local v0       #res:I
    goto :goto_1

    .line 1958
    .end local v0           #res:I
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_6

    .line 1959
    const v0, 0x7f02010d

    .restart local v0       #res:I
    goto :goto_1

    .line 1961
    .end local v0           #res:I
    :cond_6
    const v0, 0x7f020020

    .restart local v0       #res:I
    goto :goto_1

    .line 1977
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFakeSpaceBar:Landroid/view/View;

    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_3

    .line 1927
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLightsOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1848
    const/4 p1, 0x1

    .line 1851
    :cond_0
    const-string v0, "TabletStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    if-eqz p1, :cond_1

    .line 1853
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(I)V

    .line 1857
    :goto_0
    return-void

    .line 1855
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setMaxBrightness(I)V
    .locals 1
    .parameter "maxLevel"

    .prologue
    .line 3198
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMaxBrightness(I)V

    .line 3199
    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 4
    .parameter "vis"

    .prologue
    const/16 v1, 0x407

    const/16 v0, 0x406

    .line 1832
    iget v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    if-eq p1, v2, :cond_0

    .line 1833
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mSystemUiVisibility:I

    .line 1835
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1836
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 1837
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 1840
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->notifyUiVisibilityChanged()V

    .line 1842
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1837
    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1610
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f0f0030

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1611
    .local v0, clock:Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mBarContents:Landroid/view/ViewGroup;

    const v5, 0x7f0f0073

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1612
    .local v1, network_text:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1613
    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    :cond_0
    if-eqz v1, :cond_1

    .line 1616
    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1618
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 1613
    goto :goto_0

    :cond_3
    move v3, v4

    .line 1616
    goto :goto_1
.end method

.method public start()V
    .locals 3

    .prologue
    .line 708
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBar;->start()V

    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 712
    const-string v0, "TabletStatusBar"

    const-string v1, "TabletStatusBar :: start... StorageNotification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v1, Lcom/android/systemui/usb/StorageNotification;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/usb/StorageNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 719
    :cond_0
    return-void
.end method

.method public startTicking()V
    .locals 2

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mFeedbackIconArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3204
    return-void
.end method

.method public toggleNotificationPanel()V
    .locals 2

    .prologue
    .line 2988
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e9

    .line 2990
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2991
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2992
    return-void

    .line 2988
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 2980
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x3fd

    .line 2982
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->removeMessages(I)V

    .line 2983
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mHandler:Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$H;->sendEmptyMessage(I)Z

    .line 2984
    return-void

    .line 2980
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .parameter "showMenu"

    .prologue
    const/4 v1, 0x0

    .line 1863
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mMenuButton:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1866
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setLightsOn(Z)V

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->refresh()V

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModeButton:Lcom/android/systemui/statusbar/policy/CompatModeButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/CompatModeButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1870
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "shown_compat_mode_help"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1872
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showCompatibilityHelp()V

    .line 1878
    :cond_1
    :goto_1
    return-void

    .line 1863
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1875
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->hideCompatibilityHelp()V

    .line 1876
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mCompatModePanel:Lcom/android/systemui/statusbar/tablet/CompatModePanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/CompatModePanel;->closePanel()V

    goto :goto_1
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 1425
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 23
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 1456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v18

    .line 1457
    .local v18, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v18, :cond_0

    .line 1458
    const-string v4, "TabletStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification for unknown key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :goto_0
    return-void

    .line 1462
    :cond_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v19, v0

    .line 1463
    .local v19, oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 1465
    .local v17, oldContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v12, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1480
    .local v12, contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_3

    if-eqz v12, :cond_3

    if-eqz v17, :cond_3

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    if-ne v4, v7, :cond_3

    const/4 v13, 0x1

    .line 1488
    .local v13, contentsUnchanged:Z
    :goto_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v7, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v9, v4, Landroid/app/Notification;->when:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_4

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    if-ne v4, v7, :cond_4

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->defaults:I

    if-ne v4, v7, :cond_4

    const/16 v20, 0x1

    .line 1494
    .local v20, orderUnchanged:Z
    :goto_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v22, 0x1

    .line 1500
    .local v22, updateTicker:Z
    :goto_3
    const/4 v15, 0x0

    .line 1501
    .local v15, isFirstAnyway:Z
    const/16 v16, 0x0

    .line 1504
    .local v16, isLastAnyway:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1505
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 1507
    .local v21, rowParent:Landroid/view/ViewGroup;
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_7

    .line 1508
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_6

    const/4 v15, 0x1

    .line 1530
    :goto_4
    if-eqz v13, :cond_15

    if-nez v20, :cond_1

    if-nez v15, :cond_1

    if-eqz v16, :cond_15

    .line 1533
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1536
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1537
    const-string v4, "TabletStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE:MiniCon-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 1545
    :goto_5
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1546
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_12

    .line 1547
    new-instance v3, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1551
    .local v3, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_6
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v4, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v4, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v4, Landroid/app/Notification;->number:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v11, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 1561
    .local v6, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 1562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t update icon: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1581
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v14

    .line 1583
    .local v14, e:Ljava/lang/RuntimeException;
    const-string v4, "TabletStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t reapply views for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1584
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1585
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1594
    .end local v14           #e:Ljava/lang/RuntimeException;
    :goto_7
    if-eqz v22, :cond_2

    .line 1595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mTicker:Lcom/android/systemui/statusbar/tablet/TabletTicker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletTicker;->halt()V

    .line 1596
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->tick(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Z)V

    .line 1599
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->setAreThereNotifications()V

    goto/16 :goto_0

    .line 1480
    .end local v13           #contentsUnchanged:Z
    .end local v15           #isFirstAnyway:Z
    .end local v16           #isLastAnyway:Z
    .end local v20           #orderUnchanged:Z
    .end local v21           #rowParent:Landroid/view/ViewGroup;
    .end local v22           #updateTicker:Z
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1488
    .restart local v13       #contentsUnchanged:Z
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1494
    .restart local v20       #orderUnchanged:Z
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1508
    .restart local v15       #isFirstAnyway:Z
    .restart local v16       #isLastAnyway:Z
    .restart local v21       #rowParent:Landroid/view/ViewGroup;
    .restart local v22       #updateTicker:Z
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1510
    :cond_7
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_8

    const/16 v16, 0x1

    :goto_8
    goto/16 :goto_4

    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    .line 1513
    .end local v21           #rowParent:Landroid/view/ViewGroup;
    :cond_9
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .restart local v21       #rowParent:Landroid/view/ViewGroup;
    if-eqz v21, :cond_d

    .line 1514
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_b

    .line 1515
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_a

    const/4 v15, 0x1

    :goto_9
    goto/16 :goto_4

    :cond_a
    const/4 v15, 0x0

    goto :goto_9

    .line 1517
    :cond_b
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_c

    const/16 v16, 0x1

    :goto_a
    goto/16 :goto_4

    :cond_c
    const/16 v16, 0x0

    goto :goto_a

    .line 1520
    :cond_d
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    .end local v21           #rowParent:Landroid/view/ViewGroup;
    check-cast v21, Landroid/view/ViewGroup;

    .line 1522
    .restart local v21       #rowParent:Landroid/view/ViewGroup;
    sget-boolean v4, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_f

    .line 1523
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_e

    const/4 v15, 0x1

    :goto_b
    goto/16 :goto_4

    :cond_e
    const/4 v15, 0x0

    goto :goto_b

    .line 1525
    :cond_f
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_10

    const/16 v16, 0x1

    :goto_c
    goto/16 :goto_4

    :cond_10
    const/16 v16, 0x0

    goto :goto_c

    .line 1541
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_5

    .line 1553
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    :cond_12
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 1566
    .restart local v6       #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_13
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_14

    .line 1567
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 1569
    :cond_14
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v7, 0x0

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1570
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 1589
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1590
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto/16 :goto_7
.end method

.method public updateNotificationCountText()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 3103
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v8

    .line 3104
    .local v8, size:I
    iget-object v9, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 3105
    .local v7, res:Landroid/content/res/Resources;
    const v9, 0x7f09000f

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3106
    .local v6, ongoingTitle:Ljava/lang/String;
    const v9, 0x7f090010

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3107
    .local v3, latestTitle:Ljava/lang/String;
    const v9, 0x7f090005

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3108
    .local v4, numFormat:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3109
    .local v5, ongoingNum:I
    const/4 v2, 0x0

    .line 3111
    .local v2, latestNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v8, :cond_2

    .line 3112
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 3113
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v9}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3111
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3115
    :cond_0
    iget-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v9}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3116
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3118
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3122
    .end local v0           #entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mOngoingNotificationTitle:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3124
    iget-object v9, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mLatestNotificationTitle:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3126
    return-void
.end method

.method visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1813
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 1814
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mPanelSlightlyVisible:Z

    .line 1816
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    :cond_0
    :goto_0
    return-void

    .line 1817
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2853
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2854
    .local v0, bgd:Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v2, :cond_0

    .line 2860
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 2856
    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 2857
    .local v1, d:Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2858
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setOpacity(I)V

    .line 2859
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
