.class public final Lcom/android/launcher2/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/launcher2/LauncherModel$Callbacks;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Launcher$8;,
        Lcom/android/launcher2/Launcher$ClingCheckBoxListener;,
        Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/android/launcher2/Launcher$StateAnimatorProvider;,
        Lcom/android/launcher2/Launcher$LocaleConfiguration;,
        Lcom/android/launcher2/Launcher$HardwareKeys;
    }
.end annotation


# static fields
.field public static CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z = true

.field public static CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z = false

.field public static CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final EXTRA_HOME_FRAGMENT_HIDDEN:Ljava/lang/String; = "extra_home_fragment_hidden"

.field private static final EXTRA_LAUNCHER_ACTION:Ljava/lang/String; = "sec.android.intent.extra.LAUNCHER_ACTION"

.field private static final HELP_HUB_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.helphub.provider/help_page_status/"

.field private static final HELP_HUB_PATH_CLING1:Ljava/lang/String; = "homescreen_navigate"

.field private static final HELP_HUB_PATH_CLING2:Ljava/lang/String; = "notifications_access"

.field private static final HELP_HUB_PATH_CLING3:Ljava/lang/String; = "homescreen_applications"

.field private static final HELP_HUB_PATH_SHORTCUT:Ljava/lang/String; = "add_shortcut"

.field private static final HELP_HUB_PATH_WIDGET:Ljava/lang/String; = "add_widget"

.field private static final LAUNCHER_ACTION_ALL_APPS:Ljava/lang/String; = "com.android.launcher2.ALL_APPS"

.field public static final MOTION_DIALOG_ON_OFF_PREF:Ljava/lang/String; = "MotionDialogOnOff"

.field static final PREFERENCES:Ljava/lang/String; = "com.android.launcher2.prefs"

.field private static final PUBLIC_PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field public static SHOW_ALL_APPS_TRANSITION_DURATION:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "Launcher"

.field public static UseContextualPageFeature:Z = false

.field public static UseLauncherHighPriority:Z = false

.field static final VIBRATE_DURATION:I = 0x23

.field static final WIDGET_RESIZE_UPDATE_PAUSE:Ljava/lang/String; = "com.sec.android.intent.action.HOME_PAUSE"

.field static final WIDGET_RESIZE_UPDATE_RESUME:Ljava/lang/String; = "com.sec.android.intent.action.HOME_RESUME"

.field private static sHwPopupMenuShowing:Z

.field public static sIsEditFromHome:Z

.field private static sIsHomeEditMode:Z

.field private static sIsHomeRemoveMode:Z

.field private static sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

.field private static sPopupMenuShowing:Z


# instance fields
.field private mActivityName:Landroid/content/ComponentName;

.field private mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mAppMarketIntent:Landroid/content/Intent;

.field public mAttached:Z

.field private mAutoRestart:Z

.field private mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

.field public mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

.field private mClingEnd:Z

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

.field private mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

.field private mDarkenView:Landroid/view/View;

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDownloadedApp:Z

.field private mExitingAllApps:Z

.field private mFactoryModeString:Ljava/lang/String;

.field mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field mInMenu:Z

.field private mIsDestroyed:Z

.field private mIsFactoryMode:Z

.field private mLocaleChanged:Z

.field private mMarketLabelName:Ljava/lang/CharSequence;

.field private mMenuButtonView:Landroid/view/View;

.field private mMenuFragment:Lcom/android/launcher2/MenuFragment;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mOnResumeNeedsLoad:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPaused:Z

.field private mPermanentMenuKey:Z

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResOrientation:I

.field private mRestoring:Z

.field private mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

.field private mScreenLarge:Z

.field private mShowWidgetTabAfterAddToHomeScreen:Z

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Launcher$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTransitionAnimator:Landroid/animation/Animator;

.field private mTransitioningToAllApps:Z

.field private mWorksapceClingisShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    .line 158
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 168
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 169
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 212
    const-wide/16 v3, 0xe6

    sput-wide v3, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    .line 222
    sput-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 223
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    .line 224
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    .line 225
    sput-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    .line 226
    sput-boolean v2, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    .line 229
    sput-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 230
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    .line 232
    sput-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    return-void

    :cond_0
    move v0, v2

    .line 141
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 236
    invoke-direct {p0, v1}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 149
    new-instance v0, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher2/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 164
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 172
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 174
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPermanentMenuKey:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mScreenLarge:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mClingEnd:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mWorksapceClingisShow:Z

    .line 195
    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 214
    new-instance v0, Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$ClingCheckBoxListener;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    .line 623
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    .line 692
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    .line 704
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 801
    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 1299
    new-instance v0, Lcom/android/launcher2/Launcher$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$5;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher ctor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method private AllWidgetCount()I
    .locals 5

    .prologue
    .line 1326
    const/4 v3, 0x0

    .line 1328
    .local v3, total_size:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1329
    .local v1, mWidgetProviders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidgetListProvider;>;"
    new-instance v4, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    new-instance v4, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    new-instance v4, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 1337
    .local v2, provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 1339
    .end local v2           #provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_0
    return v3
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1004
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1006
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Launcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->AllWidgetCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/launcher2/Launcher$LocaleConfiguration;)Lcom/android/launcher2/Launcher$LocaleConfiguration;
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    sput-object p0, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/launcher2/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishShowAllApps()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    return-void
.end method

.method private checkForLocaleChange()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 399
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    if-nez v9, :cond_1

    .line 400
    new-instance v9, Lcom/android/launcher2/Launcher$1;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Launcher$1;-><init>(Lcom/android/launcher2/Launcher;)V

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v8}, Lcom/android/launcher2/Launcher$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 419
    .local v0, configuration:Landroid/content/res/Configuration;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget-object v5, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 420
    .local v5, previousLocale:Ljava/lang/String;
    iget-object v9, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, locale:Ljava/lang/String;
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v6, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 423
    .local v6, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 425
    .local v3, mcc:I
    sget-object v9, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iget v7, v9, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 426
    .local v7, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 428
    .local v4, mnc:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ne v3, v6, :cond_2

    if-eq v4, v7, :cond_3

    :cond_2
    const/4 v8, 0x1

    :cond_3
    iput-boolean v8, p0, Lcom/android/launcher2/Launcher;->mLocaleChanged:Z

    .line 430
    iget-boolean v8, p0, Lcom/android/launcher2/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_0

    .line 431
    sget-object v8, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput-object v1, v8, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 432
    sget-object v8, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v3, v8, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 433
    sget-object v8, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    iput v4, v8, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    .line 436
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v8}, Lcom/android/launcher2/PkgResCache;->clear()V

    .line 438
    sget-object v2, Lcom/android/launcher2/Launcher;->sLocaleConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;

    .line 439
    .local v2, localeConfiguration:Lcom/android/launcher2/Launcher$LocaleConfiguration;
    new-instance v8, Lcom/android/launcher2/Launcher$2;

    const-string v9, "WriteLocaleConfiguration"

    invoke-direct {v8, p0, v9, v2}, Lcom/android/launcher2/Launcher$2;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher$2;->start()V

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1279
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1280
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1281
    return-void
.end method

.method private dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V
    .locals 5
    .parameter "clingView"
    .parameter "clingPrefKey"
    .parameter "duration"
    .parameter "isChecked"

    .prologue
    .line 1779
    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1780
    .local v0, anim:Landroid/animation/ObjectAnimator;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1781
    new-instance v1, Lcom/android/launcher2/Launcher$7;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/launcher2/Launcher$7;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Cling;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1807
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1808
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSaveClingCheckState()V

    .line 1809
    return-void
.end method

.method private dismissMenuCling()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2340
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2341
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher2/Cling;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 2342
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->dismissAllAppsCling(Landroid/view/View;)V

    .line 2349
    :cond_0
    :goto_0
    return-void

    .line 2344
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2345
    instance-of v1, v0, Lcom/android/launcher2/Cling;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2346
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->dismissWidgetCling(Landroid/view/View;)V

    goto :goto_0
.end method

.method private exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 1430
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 1431
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 1433
    :cond_0
    return-void
.end method

.method private finishExitAllApps()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 867
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 868
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->onFinishExitAllApps()V

    .line 869
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 870
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 871
    .local v1, transaction:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 872
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 873
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v2, :cond_0

    .line 874
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 877
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 878
    iput-boolean v3, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 879
    return-void

    .line 876
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private finishShowAllApps()V
    .locals 2

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 793
    .local v0, transaction:Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 794
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 795
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 796
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 799
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private firstShowCling()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2170
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    if-nez v4, :cond_1

    .line 2171
    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2172
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "cling.workspace.page1.dismissed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2173
    .local v0, page1:Z
    const-string v4, "cling.workspace.page2.dismissed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2174
    .local v1, page2:Z
    const-string v4, "cling.workspace.page3.dismissed"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2176
    .local v2, page3:Z
    if-nez v0, :cond_2

    .line 2177
    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->nextWorkspaceCling(I)V

    .line 2183
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->onConfigurationChangedCling(Z)V

    .line 2185
    .end local v0           #page1:Z
    .end local v1           #page2:Z
    .end local v2           #page3:Z
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 2178
    .restart local v0       #page1:Z
    .restart local v1       #page2:Z
    .restart local v2       #page3:Z
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    if-nez v1, :cond_3

    .line 2179
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->nextWorkspaceCling(I)V

    goto :goto_0

    .line 2180
    :cond_3
    if-nez v2, :cond_0

    .line 2181
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/launcher2/Launcher;->nextWorkspaceCling(I)V

    goto :goto_0
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWorkspaceClingVisible()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2218
    const-string v5, "com.android.launcher2.prefs"

    invoke-virtual {p0, v5, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2219
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v5, "cling.workspace.page1.dismissed"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2220
    .local v0, page1:Z
    const-string v5, "cling.workspace.page2.dismissed"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2221
    .local v1, page2:Z
    const-string v5, "cling.workspace.page3.dismissed"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2222
    .local v2, page3:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private isFactoryMode()Z
    .locals 3

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1853
    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    .line 1854
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    .line 1855
    sget-boolean v0, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 1856
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mFactoryModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFactoryMode returns: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsFactoryMode:Z

    return v0

    .line 1854
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 6

    .prologue
    .line 1835
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1837
    .local v2, tm:Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 1838
    .local v0, IMSI:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1839
    .local v1, imsi:Ljava/lang/String;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFactorySim() imsi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_0
    if-eqz v1, :cond_2

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1841
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_1

    const-string v3, "Launcher"

    const-string v4, "isFactorySim() : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :cond_1
    const/4 v3, 0x1

    .line 1845
    :goto_0
    return v3

    .line 1844
    :cond_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v3, :cond_3

    const-string v3, "Launcher"

    const-string v4, "isFactorySim() : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHelpHubAvailable()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2226
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2227
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "displayed"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2228
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v7

    .line 2232
    :goto_0
    return v0

    .line 2231
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2232
    goto :goto_0
.end method

.method static isHomeEditMode()Z
    .locals 1

    .prologue
    .line 2864
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    return v0
.end method

.method static isHomeRemoveMode()Z
    .locals 1

    .prologue
    .line 2874
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    return v0
.end method

.method private isMotionDialogAvailable()Z
    .locals 3

    .prologue
    .line 2725
    const-string v0, "com.android.launcher2.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "MotionDialogOnOff"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMotionSettingOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2729
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPopupMenuShowing()Z
    .locals 1

    .prologue
    .line 2631
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToShowHelpPage(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2239
    const/4 v6, 0x0

    .line 2240
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2242
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 2244
    .local v7, result:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2245
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_2

    move v7, v8

    .line 2249
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 2250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2252
    :cond_1
    return v7

    :cond_2
    move v7, v9

    .line 2246
    goto :goto_0

    .line 2249
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private nextWorkspaceCling(I)V
    .locals 7
    .parameter "page"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 2148
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2150
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "cling.workspace.dismissed"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2166
    :cond_0
    return-void

    .line 2154
    :cond_1
    new-array v0, v6, [Landroid/view/View;

    .line 2155
    .local v0, clingPage:[Landroid/view/View;
    const v3, 0x7f070080

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v0, v5

    .line 2156
    const/4 v3, 0x1

    const v4, 0x7f070081

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2157
    const/4 v3, 0x2

    const v4, 0x7f070082

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2159
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 2160
    if-ne v1, p1, :cond_2

    .line 2161
    aget-object v3, v0, v1

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2163
    :cond_2
    aget-object v3, v0, v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 455
    const/4 v0, 0x0

    .line 457
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 458
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 459
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    .line 460
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 466
    if-eqz v1, :cond_2

    .line 468
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 474
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 469
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 471
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 461
    :catch_1
    move-exception v2

    .line 466
    :goto_1
    if-eqz v0, :cond_0

    .line 468
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 469
    :catch_2
    move-exception v2

    goto :goto_0

    .line 463
    :catch_3
    move-exception v2

    .line 466
    :goto_2
    if-eqz v0, :cond_0

    .line 468
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 469
    :catch_4
    move-exception v2

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 468
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 471
    :cond_1
    :goto_4
    throw v2

    .line 469
    :catch_5
    move-exception v3

    goto :goto_4

    .line 466
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 463
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 461
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filepath"

    .prologue
    .line 1869
    const-string v6, ""

    .line 1870
    .local v6, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1871
    .local v0, buf:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1873
    .local v4, fr:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1874
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1875
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v6

    .line 1884
    if-eqz v5, :cond_0

    .line 1885
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 1886
    :cond_0
    if-eqz v1, :cond_1

    .line 1887
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 1893
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    if-nez v6, :cond_7

    .line 1894
    const-string v6, ""

    .line 1897
    :goto_1
    return-object v6

    .line 1888
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 1889
    .local v2, e:Ljava/io/IOException;
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 1892
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 1876
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1877
    .local v3, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v7, "Launcher"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1884
    if-eqz v4, :cond_3

    .line 1885
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 1886
    :cond_3
    if-eqz v0, :cond_2

    .line 1887
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1888
    :catch_2
    move-exception v2

    .line 1889
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1879
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 1880
    .restart local v2       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "Launcher"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1884
    if-eqz v4, :cond_4

    .line 1885
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 1886
    :cond_4
    if-eqz v0, :cond_2

    .line 1887
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 1888
    :catch_4
    move-exception v2

    .line 1889
    const-string v7, "Launcher"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1883
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1884
    :goto_4
    if-eqz v4, :cond_5

    .line 1885
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 1886
    :cond_5
    if-eqz v0, :cond_6

    .line 1887
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1891
    :cond_6
    :goto_5
    throw v7

    .line 1888
    :catch_5
    move-exception v2

    .line 1889
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Launcher"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1896
    .end local v2           #e:Ljava/io/IOException;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_1

    .line 1883
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1879
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1876
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private releaseShadows()V
    .locals 2

    .prologue
    .line 2823
    const-string v0, "Launcher"

    const-string v1, "releaseShadows called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->releaseShadows()V

    .line 2825
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->releaseShadows()V

    .line 2827
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->releaseShadows()V

    .line 2828
    return-void
.end method

.method static setHomeEditMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2869
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeEditMode:Z

    .line 2870
    return-void
.end method

.method static setHomeRemoveMode(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 2879
    sput-boolean p0, Lcom/android/launcher2/Launcher;->sIsHomeRemoveMode:Z

    .line 2880
    return-void
.end method

.method private setMarketLabel()V
    .locals 6

    .prologue
    const v5, 0x7f0e003b

    .line 708
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 710
    .local v1, marketAppInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v1           #marketAppInfo:Landroid/content/pm/ActivityInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 716
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    .line 718
    :cond_1
    :goto_0
    return-void

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 716
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    goto :goto_0

    .line 715
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    .line 716
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    :cond_2
    throw v2
.end method

.method private setupOptionsMenu(Landroid/view/Menu;)V
    .locals 22
    .parameter "menu"

    .prologue
    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    .line 1575
    .local v19, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1577
    :cond_1
    if-eqz p1, :cond_0

    .line 1578
    const v20, 0x7f070097

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 1579
    .local v10, market:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMarketLabelName:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1580
    const v20, 0x7f070098

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1581
    .local v4, edit:Landroid/view/MenuItem;
    const v20, 0x7f070099

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1582
    .local v11, search:Landroid/view/MenuItem;
    const v20, 0x7f07009a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 1583
    .local v16, uninstall:Landroid/view/MenuItem;
    const v20, 0x7f07009b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1584
    .local v3, downloaded:Landroid/view/MenuItem;
    const v20, 0x7f07009c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 1585
    .local v17, viewType:Landroid/view/MenuItem;
    const v20, 0x7f07009d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 1586
    .local v14, shareApp:Landroid/view/MenuItem;
    const v20, 0x7f07009e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 1587
    .local v12, selAppsToHide:Landroid/view/MenuItem;
    const v20, 0x7f07009f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 1590
    .local v13, selAppsToUnHide:Landroid/view/MenuItem;
    const v20, 0x7f0700a2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 1591
    .local v8, homeSearch:Landroid/view/MenuItem;
    const v20, 0x7f0700a0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1592
    .local v7, homeEdit:Landroid/view/MenuItem;
    const v20, 0x7f0700a3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 1593
    .local v9, homeSettings:Landroid/view/MenuItem;
    const v20, 0x7f0700a4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1595
    .local v6, homeCreateFolder:Landroid/view/MenuItem;
    const v20, 0x7f0700a1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1596
    .local v5, homeAddPage:Landroid/view/MenuItem;
    sget-object v20, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppModel;->canUninstallApps()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    .line 1599
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1600
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1601
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1602
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1603
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1604
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1605
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1606
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1607
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1610
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1611
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1612
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1613
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1615
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1618
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1619
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1621
    sget-boolean v20, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-nez v20, :cond_2

    sget-boolean v20, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v20, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v20

    if-nez v20, :cond_3

    .line 1623
    :cond_2
    if-eqz v7, :cond_3

    .line 1624
    sget-boolean v20, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v20, :cond_6

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v20

    if-nez v20, :cond_5

    .line 1626
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1627
    const v20, 0x7f0e0052

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1638
    :cond_3
    :goto_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1639
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1641
    sget-boolean v20, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v20, :cond_4

    .line 1642
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1690
    :cond_4
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Launcher_DisableGoogleOption"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1692
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1693
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1629
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1632
    :cond_6
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1633
    const v20, 0x7f0e0052

    move/from16 v0, v20

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1644
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1646
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1647
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1648
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v18

    .line 1650
    .local v18, widgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_8
    const/16 v20, 0x0

    goto :goto_3

    .line 1655
    .end local v18           #widgets:Lcom/android/launcher2/MenuWidgets;
    :cond_9
    sget-object v20, Lcom/android/launcher2/Launcher$8;->$SwitchMap$com$android$launcher2$MenuFragment$ViewType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuFragment;->getViewType()Lcom/android/launcher2/MenuFragment$ViewType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuFragment$ViewType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    goto/16 :goto_2

    .line 1658
    :pswitch_0
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1659
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1660
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1661
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1663
    sget-object v20, Lcom/android/launcher2/Launcher$8;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_2

    .line 1665
    :pswitch_1
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1666
    sget-object v20, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v2

    .line 1667
    .local v2, _tmp:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_a

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1668
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1669
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Launcher;->mDownloadedApp:Z

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1670
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1671
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1672
    sget-object v20, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v15

    .line 1673
    .local v15, topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-eqz v15, :cond_c

    .line 1674
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_b

    const/16 v20, 0x1

    :goto_5
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1678
    :goto_6
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1679
    sget-object v20, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuAppModel;->hasHiddenApps()Z

    move-result v20

    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1667
    .end local v15           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_a
    const/16 v20, 0x0

    goto :goto_4

    .line 1674
    .restart local v15       #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_b
    const/16 v20, 0x0

    goto :goto_5

    .line 1676
    :cond_c
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_6

    .line 1684
    .end local v2           #_tmp:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v15           #topApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :pswitch_2
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1685
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1655
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1663
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static startDrag(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 2635
    new-instance v0, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    move-result v0

    return v0
.end method

.method private static final startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/launcher2/ShadowBuilder;Lcom/android/launcher2/DragState;I)Z
    .locals 25
    .parameter "inst"
    .parameter "data"
    .parameter "shadowBuilder"
    .parameter "myLocalState"
    .parameter "flags"

    .prologue
    .line 2643
    const-string v5, "Launcher"

    const-string v6, "Drag started"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    const/16 v21, 0x0

    .line 2646
    .local v21, okay:Z
    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    .line 2647
    .local v23, shadowSize:Landroid/graphics/Point;
    new-instance v24, Landroid/graphics/Point;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Point;-><init>()V

    .line 2648
    .local v24, shadowTouchPoint:Landroid/graphics/Point;
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2650
    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_1

    .line 2651
    :cond_0
    const-string v5, "Launcher"

    const-string v6, "Drag shadow touch point must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const/4 v5, 0x0

    .line 2705
    :goto_0
    return v5

    .line 2654
    :cond_1
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_2

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    if-gez v5, :cond_3

    .line 2655
    :cond_2
    const-string v5, "Launcher"

    const-string v6, "Drag shadow dimensions must not be negative"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    const/4 v5, 0x0

    goto :goto_0

    .line 2659
    :cond_3
    new-instance v8, Landroid/view/Surface;

    invoke-direct {v8}, Landroid/view/Surface;-><init>()V

    .line 2661
    .local v8, surface:Landroid/view/Surface;
    :try_start_0
    const-class v5, Landroid/view/View;

    const-string v6, "mAttachInfo"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 2662
    .local v19, f:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2663
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 2665
    .local v17, _mAttachInfo:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mWindow"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 2666
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2667
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/IWindow;

    .line 2669
    .local v4, _mWindow:Landroid/view/IWindow;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "mSession"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    .line 2670
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2671
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/IWindowSession;

    .line 2673
    .local v3, _mSession:Landroid/view/IWindowSession;
    move-object/from16 v0, v23

    iget v6, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v23

    iget v7, v0, Landroid/graphics/Point;->y:I

    move/from16 v5, p4

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v11

    .line 2675
    .local v11, token:Landroid/os/IBinder;
    if-eqz v11, :cond_4

    .line 2676
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/launcher2/ShadowBuilder;->setSurface(Landroid/view/Surface;)V

    .line 2677
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    .line 2679
    const-class v5, Landroid/view/View;

    const-string v6, "getViewRootImpl"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 2680
    .local v20, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2681
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/ViewRootImpl;

    .line 2684
    .local v22, root:Landroid/view/ViewRootImpl;
    const-class v5, Landroid/view/ViewRootImpl;

    const-string v6, "setLocalDragState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    aput-object v10, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20

    .line 2685
    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2686
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2689
    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 2691
    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v12, v5

    move-object/from16 v0, v23

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v13, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v14, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v15, v5

    move-object v9, v3

    move-object v10, v4

    move-object/from16 v16, p1

    invoke-interface/range {v9 .. v16}, Landroid/view/IWindowSession;->performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 2700
    .end local v3           #_mSession:Landroid/view/IWindowSession;
    .end local v4           #_mWindow:Landroid/view/IWindow;
    .end local v11           #token:Landroid/os/IBinder;
    .end local v17           #_mAttachInfo:Ljava/lang/Object;
    .end local v19           #f:Ljava/lang/reflect/Field;
    .end local v20           #m:Ljava/lang/reflect/Method;
    .end local v22           #root:Landroid/view/ViewRootImpl;
    :cond_4
    :goto_1
    if-eqz v21, :cond_5

    .line 2701
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    .line 2702
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragState;->onDragStartedSuccessfully()V

    .line 2704
    :cond_5
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start Drag result "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v21

    .line 2705
    goto/16 :goto_0

    .line 2695
    :catch_0
    move-exception v18

    .line 2696
    .local v18, e:Ljava/lang/Exception;
    const-string v5, "Launcher"

    const-string v6, "Unable to initiate drag"

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2697
    invoke-virtual {v8}, Landroid/view/Surface;->destroy()V

    goto :goto_1
.end method

.method public static startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z
    .locals 4
    .parameter "v"
    .parameter "shadow"

    .prologue
    .line 2638
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/DragState;

    invoke-direct {v2, p0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Landroid/content/ClipData;Lcom/android/launcher2/ShadowBuilder;Lcom/android/launcher2/DragState;I)Z

    move-result v0

    return v0
.end method

.method private updateStatusOfHelpPage(ZLjava/lang/String;)V
    .locals 5
    .parameter "needToShowHelpPage"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 2257
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isHelpHubAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2265
    :goto_0
    return-void

    .line 2261
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 2262
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "displayed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.helphub.provider/help_page_status/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2264
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/android/launcher2/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 477
    const/4 v1, 0x0

    .line 479
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 480
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 481
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 482
    iget v3, p1, Lcom/android/launcher2/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 483
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 490
    if-eqz v2, :cond_2

    .line 492
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 498
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 493
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 495
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 484
    :catch_1
    move-exception v3

    .line 490
    :goto_1
    if-eqz v1, :cond_0

    .line 492
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 493
    :catch_2
    move-exception v3

    goto :goto_0

    .line 486
    :catch_3
    move-exception v0

    .line 488
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 490
    if-eqz v1, :cond_0

    .line 492
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 493
    :catch_4
    move-exception v3

    goto :goto_0

    .line 490
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 492
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 495
    :cond_1
    :goto_4
    throw v3

    .line 493
    :catch_5
    move-exception v4

    goto :goto_4

    .line 490
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 486
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 484
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public addStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    return-void
.end method

.method public bindAppsLoaded()V
    .locals 1

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->appModelLoaded()V

    .line 2576
    return-void
.end method

.method public bindAppsUpdated()V
    .locals 1

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->appModelUpdated()V

    .line 2589
    return-void
.end method

.method public bindBadgeUpdated(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2579
    .local p1, appItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .local p2, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/HomeFragment;->bindHomeItemsUpdated(Ljava/util/List;)V

    .line 2582
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2583
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->appBadgeUpdated()V

    .line 2585
    :cond_1
    return-void
.end method

.method public bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2566
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    .line 2567
    return-void
.end method

.method public bindHomeAppWidget_CP(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2606
    .local p1, homewidgetItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeFragment;->bindAppWidget_CP(Ljava/util/List;I)V

    .line 2607
    return-void
.end method

.method public bindHomeBegin()V
    .locals 1

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->startBinding()V

    .line 2547
    return-void
.end method

.method public bindHomeEnd()V
    .locals 1

    .prologue
    .line 2560
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2561
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->finishBindingItems()V

    .line 2562
    return-void
.end method

.method public bindHomeFolders(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2555
    .local p1, folders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2556
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindFolders(Ljava/util/Map;)V

    .line 2557
    return-void
.end method

.method public bindHomeItemsRemoved(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2592
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindHomeItemsRemoved(Ljava/util/List;)V

    .line 2593
    return-void
.end method

.method public bindHomeItemsUpdated(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2596
    .local p1, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindHomeItemsUpdated(Ljava/util/List;)V

    .line 2597
    return-void
.end method

.method public bindHomeSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2571
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 2572
    return-void
.end method

.method public bindHomeSamsungAppWidget_CP(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungAppWidgetInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2610
    .local p1, samsungAppWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungAppWidgetInfo;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeFragment;->bindSamsungAppWidget_CP(Ljava/util/List;I)V

    .line 2611
    return-void
.end method

.method public bindHomeShortcuts(Ljava/util/List;II)V
    .locals 1
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2550
    .local p1, shortcuts:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->setLoadOnResume()Z

    .line 2551
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/HomeFragment;->bindItems(Ljava/util/List;II)V

    .line 2552
    return-void
.end method

.method public bindHomeShortcuts_CP(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2602
    .local p1, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/HomeFragment;->bindItems_CP(Ljava/util/List;I)V

    .line 2603
    return-void
.end method

.method public bindModeChange()V
    .locals 1

    .prologue
    .line 2541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 2542
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->finish()V

    .line 2543
    return-void
.end method

.method public bindSearchablesChanged()V
    .locals 1

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->updateGlobalSearchIcon()Z

    .line 2748
    return-void
.end method

.method public bindWidgetsAfterConfigChange()V
    .locals 1

    .prologue
    .line 2534
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 2535
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->bindWidgetsAfterConfigChange()V

    .line 2537
    :cond_0
    return-void
.end method

.method public checkFactoryMode()Z
    .locals 1

    .prologue
    .line 1864
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkShowCling(Ljava/lang/String;)Z
    .locals 5
    .parameter "clingPrefKey"

    .prologue
    const/4 v2, 0x0

    .line 1820
    const/4 v1, 0x0

    .line 1821
    .local v1, rc:Z
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1823
    const-string v3, "com.android.launcher2.prefs"

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1825
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 1827
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 1828
    const-string v3, "Launcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    const-string v2, "show"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cling view for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_1
    return v1

    .restart local v0       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    move v1, v2

    .line 1825
    goto :goto_0

    .line 1828
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    const-string v2, "skip"

    goto :goto_1
.end method

.method public closePopupMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1219
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 1222
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closeOptionsMenu()V

    .line 1225
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 1226
    return-void
.end method

.method public createPopupMenu(Landroid/view/View;)V
    .locals 3
    .parameter "popupAnchorView"

    .prologue
    .line 1524
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    .line 1525
    if-nez p1, :cond_0

    .line 1526
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find anchor for menu button."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1528
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    .line 1529
    new-instance v0, Lcom/android/launcher2/popup/PopupMenu;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/popup/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    .line 1530
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    new-instance v1, Lcom/android/launcher2/Launcher$6;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$6;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/PopupMenu;->setOnDismissListener(Lcom/android/launcher2/popup/PopupMenu$OnDismissListener;)V

    .line 1537
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    .line 1538
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f10

    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1539
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popup/PopupMenu;->setOnMenuItemClickListener(Lcom/android/launcher2/popup/PopupMenu$OnMenuItemClickListener;)V

    .line 1540
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)V

    .line 1541
    return-void
.end method

.method public dismissAllAppsCling(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 2012
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2014
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 2015
    .local v0, cb:Landroid/widget/CheckBox;
    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v3, v2, :cond_2

    .line 2016
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 2020
    .restart local v0       #cb:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2021
    instance-of v3, v1, Lcom/android/launcher2/Cling;

    if-eqz v3, :cond_1

    .line 2022
    check-cast v1, Lcom/android/launcher2/Cling;

    .end local v1           #view:Landroid/view/View;
    const-string v3, "cling.allapps.dismissed"

    const/16 v4, 0xfa

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V

    .line 2023
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    const-string v3, "add_shortcut"

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2026
    :cond_1
    return-void

    .line 2017
    .restart local v1       #view:Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2018
    const v3, 0x7f070010

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .restart local v0       #cb:Landroid/widget/CheckBox;
    goto :goto_0

    .line 2023
    .end local v1           #view:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dismissOrNextWorkspaceCling(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2095
    const-string v10, "com.android.launcher2.prefs"

    invoke-virtual {p0, v10, v9}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2097
    .local v7, prefs:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "cling.workspace.dismissed"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2144
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 2102
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .local v0, cb1:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .local v1, cb2:Landroid/widget/CheckBox;
    const/4 v2, 0x0

    .line 2104
    .local v2, cb3:Landroid/widget/CheckBox;
    const v10, 0x7f070080

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2105
    .local v3, clingPage1:Landroid/view/View;
    const v10, 0x7f070081

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 2106
    .local v4, clingPage2:Landroid/view/View;
    const v10, 0x7f070082

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2108
    .local v5, clingPage3:Landroid/view/View;
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v8, :cond_5

    .line 2109
    const v10, 0x7f070085

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb1:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 2114
    .restart local v0       #cb1:Landroid/widget/CheckBox;
    :cond_2
    :goto_1
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v8, :cond_6

    .line 2115
    const v10, 0x7f07008b

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #cb2:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 2120
    .restart local v1       #cb2:Landroid/widget/CheckBox;
    :cond_3
    :goto_2
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v8, :cond_7

    .line 2121
    const v10, 0x7f070090

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #cb3:Landroid/widget/CheckBox;
    check-cast v2, Landroid/widget/CheckBox;

    .line 2126
    .restart local v2       #cb3:Landroid/widget/CheckBox;
    :cond_4
    :goto_3
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_9

    .line 2127
    const-string v10, "cling.workspace.page1.dismissed"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2128
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2129
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-nez v10, :cond_8

    :goto_4
    const-string v9, "homescreen_navigate"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2130
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    goto :goto_0

    .line 2110
    :cond_5
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v11, :cond_2

    .line 2111
    const v10, 0x7f070088

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb1:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .restart local v0       #cb1:Landroid/widget/CheckBox;
    goto :goto_1

    .line 2116
    :cond_6
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v11, :cond_3

    .line 2117
    const v10, 0x7f07008d

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #cb2:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .restart local v1       #cb2:Landroid/widget/CheckBox;
    goto :goto_2

    .line 2122
    :cond_7
    iget v10, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v10, v11, :cond_4

    .line 2123
    const v10, 0x7f070092

    invoke-virtual {p0, v10}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #cb3:Landroid/widget/CheckBox;
    check-cast v2, Landroid/widget/CheckBox;

    .restart local v2       #cb3:Landroid/widget/CheckBox;
    goto :goto_3

    :cond_8
    move v8, v9

    .line 2129
    goto :goto_4

    .line 2131
    :cond_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_b

    .line 2132
    const-string v10, "cling.workspace.page2.dismissed"

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2133
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2134
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-nez v10, :cond_a

    :goto_5
    const-string v9, "notifications_access"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2135
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_a
    move v8, v9

    .line 2134
    goto :goto_5

    .line 2136
    :cond_b
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_0

    .line 2137
    const-string v10, "cling.workspace.page3.dismissed"

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2138
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2139
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    if-nez v10, :cond_c

    :goto_6
    const-string v9, "homescreen_applications"

    invoke-direct {p0, v8, v9}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2140
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    move v8, v9

    .line 2139
    goto :goto_6
.end method

.method public dismissWidgetCling(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 2033
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2035
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .line 2037
    .local v0, cb:Landroid/widget/CheckBox;
    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    if-ne v3, v2, :cond_2

    .line 2038
    const v3, 0x7f07007c

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 2044
    .restart local v0       #cb:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2045
    instance-of v3, v1, Lcom/android/launcher2/Cling;

    if-eqz v3, :cond_1

    .line 2046
    check-cast v1, Lcom/android/launcher2/Cling;

    .end local v1           #view:Landroid/view/View;
    const-string v3, "cling.widget.dismissed"

    const/16 v4, 0xfa

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V

    .line 2047
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    const-string v3, "add_widget"

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Launcher;->updateStatusOfHelpPage(ZLjava/lang/String;)V

    .line 2050
    :cond_1
    return-void

    .line 2039
    .restart local v1       #view:Landroid/view/View;
    :cond_2
    iget v3, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2040
    const v3, 0x7f07007f

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #cb:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .restart local v0       #cb:Landroid/widget/CheckBox;
    goto :goto_0

    .line 2047
    .end local v1           #view:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dismissWorkspaceCling(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v6, 0x0

    .line 2068
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f070035

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 2070
    .local v5, view:Landroid/view/View;
    const-string v7, "com.android.launcher2.prefs"

    invoke-virtual {p0, v7, v6}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2071
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v7, "cling.workspace.dismissed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2092
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 2075
    .restart local v5       #view:Landroid/view/View;
    :cond_1
    instance-of v7, v5, Lcom/android/launcher2/Cling;

    if-eqz v7, :cond_0

    .line 2076
    const/4 v0, 0x0

    .line 2077
    .local v0, bClingState:Z
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getDismissCling_Key()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2078
    const-string v7, "com.android.launcher2.prefs"

    invoke-virtual {p0, v7, v6}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2079
    const-string v7, "cling.workspace.page1.dismissed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2080
    .local v1, page1:Z
    const-string v7, "cling.workspace.page2.dismissed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2081
    .local v2, page2:Z
    const-string v7, "cling.workspace.page3.dismissed"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2082
    .local v3, page3:Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 2088
    .end local v1           #page1:Z
    .end local v2           #page2:Z
    .end local v3           #page3:Z
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->setDismissCling_Key(Z)V

    .line 2089
    check-cast v5, Lcom/android/launcher2/Cling;

    .end local v5           #view:Landroid/view/View;
    const-string v7, "cling.workspace.dismissed"

    const/16 v8, 0xfa

    invoke-direct {p0, v5, v7, v8, v0}, Lcom/android/launcher2/Launcher;->dismissCling(Lcom/android/launcher2/Cling;Ljava/lang/String;IZ)V

    .line 2090
    iput-boolean v6, p0, Lcom/android/launcher2/Launcher;->mWorksapceClingisShow:Z

    goto :goto_0

    .restart local v1       #page1:Z
    .restart local v2       #page2:Z
    .restart local v3       #page3:Z
    .restart local v5       #view:Landroid/view/View;
    :cond_2
    move v0, v6

    .line 2082
    goto :goto_1

    .line 2085
    .end local v1           #page1:Z
    .end local v2           #page2:Z
    .end local v3           #page3:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const v8, 0x7f07004e

    const v7, 0x7f07001b

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 1011
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_4

    .line 1012
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1140
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    :cond_1
    :goto_1
    :sswitch_0
    return v4

    .line 1015
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :sswitch_2
    move v4, v0

    .line 1022
    goto :goto_1

    .line 1024
    :sswitch_3
    const-string v5, "debug.launcher2.dumpstate"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1025
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->dumpState()V

    goto :goto_1

    .line 1033
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1037
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_1

    .line 1047
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1051
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isEmptyPage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1052
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1053
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Hotseat;->requestFocus()Z

    goto :goto_1

    .line 1059
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 1060
    .local v1, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v1, :cond_0

    .line 1061
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/PagedViewWidget;

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/SearchView$SearchAutoComplete;

    if-nez v5, :cond_3

    move v0, v4

    .line 1062
    .local v0, allowFocus:Z
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v5, v6, :cond_0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    iget-object v5, v5, Lcom/android/launcher2/MenuFragment;->mTabHost:Lcom/android/launcher2/MenuTabHost;

    const v6, 0x7f07006b

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1064
    .local v2, searchInput:Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    .line 1065
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    goto/16 :goto_1

    .line 1072
    .end local v0           #allowFocus:Z
    .end local v1           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    .end local v2           #searchInput:Landroid/view/ViewGroup;
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1073
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_0

    .line 1132
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 1076
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 1083
    :sswitch_8
    iget-boolean v5, p0, Lcom/android/launcher2/Launcher;->mScreenLarge:Z

    if-eqz v5, :cond_c

    .line 1084
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    .line 1085
    .restart local v1       #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v1, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v5, v6, :cond_5

    move v4, v0

    .line 1086
    goto/16 :goto_1

    .line 1088
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v5, v6, :cond_6

    move v4, v0

    .line 1089
    goto/16 :goto_1

    .line 1091
    :cond_6
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_7

    move v4, v0

    .line 1092
    goto/16 :goto_1

    .line 1095
    :cond_7
    const/4 v3, 0x0

    .line 1096
    .local v3, v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v5, v6, :cond_a

    .line 1097
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v8, :cond_9

    .line 1098
    :cond_8
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1100
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 1109
    :cond_9
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    invoke-direct {p0, v5}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)V

    .line 1110
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 1111
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v5}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 1112
    sput-boolean v4, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto/16 :goto_1

    .line 1103
    :cond_a
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_9

    .line 1104
    :cond_b
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1105
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_2

    .line 1123
    .end local v1           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    .end local v3           #v:Landroid/view/View;
    :cond_c
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_1

    move v4, v0

    .line 1125
    goto/16 :goto_1

    .line 1012
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_5
        0x17 -> :sswitch_1
        0x19 -> :sswitch_3
        0x42 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch

    .line 1073
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_0
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x17 -> :sswitch_7
        0x42 -> :sswitch_7
        0x52 -> :sswitch_8
    .end sparse-switch
.end method

.method public exitAllApps()V
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->exitAllApps(Z)V

    .line 807
    return-void
.end method

.method public exitAllApps(Z)V
    .locals 13
    .parameter "withDrag"

    .prologue
    const v2, 0x7f070035

    const/4 v4, 0x0

    .line 809
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 864
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->dismissMenuCling()V

    .line 814
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->onExitAllApps()V

    .line 816
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 820
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v6, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .line 822
    .local v11, provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    invoke-interface {v11, v6}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectExitAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 824
    .end local v11           #provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    :cond_4
    if-nez p1, :cond_5

    .line 825
    const v0, 0x7f050006

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v8

    .line 826
    .local v8, darkenAnimator:Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 827
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .end local v8           #darkenAnimator:Landroid/animation/Animator;
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    .line 831
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 833
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 834
    .local v12, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v12, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 835
    const-wide/16 v0, 0x12c

    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 836
    new-instance v0, Lcom/android/launcher2/Launcher$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Launcher$4;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 850
    iput-object v12, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    .line 851
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 853
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 854
    .local v10, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initClingCheck()V

    .line 855
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cling.workspace.dismissed"

    invoke-interface {v10, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 857
    .local v7, clingView:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingVisible()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v3, 0x0

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 860
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->firstShowCling()V

    goto/16 :goto_0
.end method

.method public getAnimationLayer()Lcom/android/launcher2/AnimationLayer;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method public getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method public getContextualPageReceiver()Lcom/android/launcher2/ContextualPageReceiver;
    .locals 1

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    return-object v0
.end method

.method public getDismissCling_Key()Z
    .locals 1

    .prologue
    .line 2061
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mClingEnd:Z

    return v0
.end method

.method getHotseat()Lcom/android/launcher2/Hotseat;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    return-object v0
.end method

.method public getMenuFragment()Lcom/android/launcher2/MenuFragment;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    return-object v0
.end method

.method public getQuickViewWorkspaceOpen()Z
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2832
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v0

    .line 2834
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResOrientation()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    return v0
.end method

.method public getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getShowWidgetTabAfterAddToHomeScreen()Z
    .locals 1

    .prologue
    .line 2785
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mShowWidgetTabAfterAddToHomeScreen:Z

    return v0
.end method

.method public getTextToSpeech()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public getTransitionToAllApps()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    return v0
.end method

.method public getWorkspaceClingState()Z
    .locals 1

    .prologue
    .line 2065
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mWorksapceClingisShow:Z

    return v0
.end method

.method public initClingCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2269
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isHelpHubAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2334
    :cond_0
    :goto_0
    return-void

    .line 2273
    :cond_1
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2274
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2276
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreen_navigate"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "cling.workspace.page1.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2277
    const-string v2, "cling.workspace.page1.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2278
    const-string v2, "cling.workspace.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2282
    :cond_2
    const-string v2, "notifications_access"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cling.workspace.page2.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2283
    const-string v2, "cling.workspace.page2.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2284
    const-string v2, "cling.workspace.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2288
    :cond_3
    const-string v2, "homescreen_applications"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cling.workspace.page3.dismissed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2289
    const-string v2, "cling.workspace.page3.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2290
    const-string v2, "cling.workspace.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2294
    :cond_4
    const-string v2, "add_shortcut"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "cling.allapps.dismissed"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2295
    const-string v2, "cling.allapps.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2299
    :cond_5
    const-string v2, "add_widget"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "cling.widget.dismissed"

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2300
    const-string v2, "cling.widget.dismissed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2304
    :cond_6
    const-string v2, "homescreen_navigate"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2305
    const-string v2, "cling.workspace.page1.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2306
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2309
    :cond_7
    const-string v2, "notifications_access"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2310
    const-string v2, "cling.workspace.page2.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2314
    :cond_8
    const-string v2, "homescreen_applications"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2315
    const-string v2, "cling.workspace.page3.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2319
    :cond_9
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingVisible()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2320
    const-string v2, "cling.workspace.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2324
    :cond_a
    const-string v2, "add_shortcut"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 2325
    const-string v2, "cling.allapps.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2329
    :cond_b
    const-string v2, "add_widget"

    invoke-direct {p0, v2}, Lcom/android/launcher2/Launcher;->needToShowHelpPage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2330
    const-string v2, "cling.widget.dismissed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2331
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public isAddToScreenDialogShowing()Z
    .locals 1

    .prologue
    .line 1443
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddToHomescreenDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v0

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    return v0
.end method

.method public isEmptyPage()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1144
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1145
    iget-object v6, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 1146
    .local v4, workspace:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    .line 1147
    .local v3, parent:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v0, 0x0

    .line 1149
    .local v0, countAppIcon:I
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1150
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1151
    .local v1, countItem:Landroid/view/View;
    instance-of v6, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_0

    .line 1152
    add-int/lit8 v0, v0, 0x1

    .line 1149
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1156
    .end local v1           #countItem:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    if-nez v0, :cond_2

    .line 1157
    const/4 v5, 0x1

    .line 1161
    .end local v0           #countAppIcon:I
    .end local v2           #index:I
    .end local v3           #parent:Lcom/android/launcher2/CellLayoutChildren;
    .end local v4           #workspace:Lcom/android/launcher2/CellLayout;
    :cond_2
    return v5
.end method

.method public isExitingAllApps()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    return v0
.end method

.method public isPageEdit()Z
    .locals 3

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 1166
    .local v0, menuWidget:Lcom/android/launcher2/MenuWidgets;
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->PAGE_EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_1

    .line 1169
    :cond_0
    const/4 v1, 0x1

    .line 1171
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 2721
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    return v0
.end method

.method public isShowCling()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1175
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v5

    .line 1178
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v2

    .line 1179
    .local v2, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f070035

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1180
    .local v4, workspaceClingView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f070062

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1181
    .local v0, allAppsClingView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f070063

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1184
    .local v3, widgetClingView:Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "cling.allapps.dismissed"

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1188
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v7, 0x7f07000e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1189
    .local v1, clingButton:Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 1190
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    :cond_2
    move v5, v6

    .line 1191
    goto :goto_0

    .line 1194
    .end local v1           #clingButton:Landroid/widget/Button;
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "cling.widget.dismissed"

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1200
    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->getRootView()Landroid/view/View;

    move-result-object v5

    const v7, 0x7f07007d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1201
    .restart local v1       #clingButton:Landroid/widget/Button;
    if-eqz v1, :cond_4

    .line 1202
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    :cond_4
    move v5, v6

    .line 1203
    goto/16 :goto_0

    .line 1206
    .end local v1           #clingButton:Landroid/widget/Button;
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "cling.workspace.dismissed"

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1210
    iget-object v5, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v5

    const v7, 0x7f070086

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1211
    .restart local v1       #clingButton:Landroid/widget/Button;
    if-eqz v1, :cond_6

    .line 1212
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    :cond_6
    move v5, v6

    .line 1213
    goto/16 :goto_0
.end method

.method public isTransitioningToShowAllApps()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    :cond_0
    const/4 v0, 0x1

    .line 728
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public menuWidgetsUpdated(Z)V
    .locals 3
    .parameter "hasUninstallable"

    .prologue
    .line 2622
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isPopupMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2623
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f07009a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2624
    .local v0, uninstall:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2625
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2628
    .end local v0           #uninstall:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1343
    const-string v1, "Launcher"

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-super {p0}, Landroid/app/ActivityGroup;->onAttachedToWindow()V

    .line 1347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1348
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1349
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1351
    const-string v1, "android.intent.action.REQUEST_HOME_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1352
    const-string v1, "android.intent.action.REQUEST_WIDGET_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1354
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1357
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1358
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eqz v0, :cond_3

    .line 1232
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1233
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->dismissMenuCling()V

    .line 1240
    :cond_1
    :goto_0
    return-void

    .line 1234
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    goto :goto_0

    .line 1238
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->onBackPressed()Z

    goto :goto_0
.end method

.method public onClickAppMarketButton()V
    .locals 2

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    const-string v1, "app market"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 1726
    :cond_0
    return-void
.end method

.method public onClickAppMarketButton(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    .line 1715
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1720
    :goto_0
    return-void

    .line 1717
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 1715
    nop

    :pswitch_data_0
    .packed-switch 0x7f07004f
        :pswitch_0
    .end packed-switch
.end method

.method public onClickDownloadedButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->onOptionSelectedDownload()V

    .line 1730
    return-void
.end method

.method public onClickPopupMenuButton(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v0, :cond_0

    .line 1558
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 1566
    :goto_0
    return-void

    .line 1561
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 1563
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 1564
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 2841
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    .line 2842
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged. orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2856
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    if-eqz v0, :cond_0

    .line 2857
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AnimationLayer;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2859
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->onConfigurationChangedCling(Z)V

    .line 2860
    return-void
.end method

.method public onConfigurationChangedCling(Z)V
    .locals 13
    .parameter "config"

    .prologue
    .line 2433
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cling.allapps.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cling.widget.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2440
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v10

    .line 2441
    .local v10, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f070035

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 2442
    .local v12, workspaceClingView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f070062

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 2443
    .local v6, allAppsClingView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v5, 0x7f070063

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 2444
    .local v11, widgetClingView:Landroid/view/View;
    const/4 v3, 0x0

    .local v3, cbPort:Landroid/widget/CheckBox;
    const/4 v4, 0x0

    .line 2445
    .local v4, cbLand:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .local v1, vPort:Landroid/view/View;
    const/4 v2, 0x0

    .line 2447
    .local v2, vLand:Landroid/view/View;
    if-eqz v6, :cond_2

    const-string v0, "cling.allapps.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2448
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2449
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2450
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2451
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2452
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    .line 2455
    :cond_2
    if-eqz v11, :cond_3

    const-string v0, "cling.widget.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v10, :cond_3

    .line 2456
    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2457
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2458
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2459
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2460
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    .line 2463
    :cond_3
    if-eqz v12, :cond_0

    const-string v0, "cling.workspace.dismissed"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->checkShowCling(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2464
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2465
    .local v7, clingPage1:Landroid/view/View;
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2466
    .local v8, clingPage2:Landroid/view/View;
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2468
    .local v9, clingPage3:Landroid/view/View;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2469
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2470
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2471
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2472
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2473
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    goto/16 :goto_0

    .line 2474
    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 2475
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2476
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2477
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2478
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2479
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    goto/16 :goto_0

    .line 2480
    :cond_5
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2481
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2482
    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2483
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #cbPort:Landroid/widget/CheckBox;
    check-cast v3, Landroid/widget/CheckBox;

    .line 2484
    .restart local v3       #cbPort:Landroid/widget/CheckBox;
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cbLand:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #cbLand:Landroid/widget/CheckBox;
    move-object v0, p0

    move v5, p1

    .line 2485
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 242
    const-string v9, "Launcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreate. savedInstanceState: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_8

    const-string v8, "null"

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", Launcher: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 244
    sget-boolean v8, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v8, :cond_0

    .line 245
    const/4 v8, -0x4

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v8

    if-nez v8, :cond_a

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 251
    .local v0, IsProvisioned:Z
    if-eqz v0, :cond_9

    .line 252
    const-string v8, "Launcher"

    const-string v9, "Set device_provisioned: 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "device_provisioned"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 255
    const-string v8, "Launcher"

    const-string v9, "Confirm device_provisioned: 1"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0           #IsProvisioned:Z
    :cond_1
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Launcher_HomeScreenEditMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 269
    sput-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 271
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Launcher_ReplaceHotseatAreaInEditMode"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 272
    sput-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    .line 273
    sput-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 276
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Launcher_DisableHelpUI"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 277
    sput-boolean v11, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    .line 279
    :cond_4
    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HOMESCREENEDITMODE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " REPLACEHOTSEATAREAINEDITMODE="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasPermanentMenuKey()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Launcher;->mPermanentMenuKey:Z

    .line 283
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Launcher;->mScreenLarge:Z

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    .line 286
    .local v1, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 287
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v8, p0}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 288
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    .line 292
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->checkForLocaleChange()V

    .line 293
    const v8, 0x7f03001a

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->setContentView(I)V

    .line 295
    invoke-static {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 296
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mSamsungWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iget-boolean v9, p0, Lcom/android/launcher2/Launcher;->mLocaleChanged:Z

    invoke-virtual {v8, p0, v9}, Lcom/android/launcher2/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const v9, 0x7f070045

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeFragment;

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const v9, 0x7f070044

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/MenuFragment;

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    .line 300
    const v8, 0x7f070043

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    .line 303
    const-string v8, "com.android.launcher2.prefs"

    invoke-virtual {p0, v8, v12}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 304
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v8, "goToWidgetsTabAfterSelectingAddToHomeScreen"

    invoke-interface {v5, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Launcher;->mShowWidgetTabAfterAddToHomeScreen:Z

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 309
    .local v6, transaction:Landroid/app/FragmentTransaction;
    if-eqz p1, :cond_c

    .line 310
    const-string v8, "extra_home_fragment_hidden"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 311
    .local v7, wasHomeHidden:Z
    if-eqz v7, :cond_b

    .line 312
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v6, v8}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 313
    iput-boolean v11, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 314
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6, v8}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 315
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f0b

    invoke-virtual {v9, v10, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    .line 326
    .end local v7           #wasHomeHidden:Z
    :goto_2
    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 328
    iget-boolean v8, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v8, :cond_5

    .line 329
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v8, v11}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 331
    :cond_5
    new-instance v3, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 332
    .local v3, filter:Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/android/launcher2/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    invoke-static {p0}, Lcom/android/launcher2/BadgeCountReceiver;->initialize(Landroid/content/Context;)Lcom/android/launcher2/BadgeCountReceiver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    .line 338
    sget-boolean v8, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v8, :cond_6

    .line 340
    new-instance v8, Lcom/android/launcher2/ContextualPageManager;

    invoke-direct {v8, p0}, Lcom/android/launcher2/ContextualPageManager;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    .line 341
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/HomeFragment;->setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V

    .line 342
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/QuickViewWorkspace;->setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V

    .line 343
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8, v9}, Lcom/android/launcher2/ContextualPageManager;->initContextualPage(Lcom/android/launcher2/HomeFragment;)V

    .line 344
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-static {p0, v8}, Lcom/android/launcher2/ContextualPageReceiver;->initialize(Landroid/content/Context;Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/ContextualPageReceiver;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    .line 347
    :cond_6
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 348
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v8, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 351
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.category.APP_MARKET"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 354
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    .line 355
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mActivityName:Landroid/content/ComponentName;

    if-eqz v8, :cond_7

    .line 356
    iput-object v4, p0, Lcom/android/launcher2/Launcher;->mAppMarketIntent:Landroid/content/Intent;

    .line 359
    :cond_7
    const v8, 0x7f070042

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AnimationLayer;

    iput-object v8, p0, Lcom/android/launcher2/Launcher;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    .line 361
    sget-boolean v8, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v8, :cond_d

    .line 363
    invoke-static {v12}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 364
    invoke-static {v12}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 372
    :goto_3
    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Launcher;->setRequestedOrientation(I)V

    return-void

    .line 242
    .end local v1           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v3           #filter:Landroid/content/IntentFilter;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #prefs:Landroid/content/SharedPreferences;
    .end local v6           #transaction:Landroid/app/FragmentTransaction;
    :cond_8
    const-string v8, "not null"

    goto/16 :goto_0

    .line 258
    .restart local v0       #IsProvisioned:Z
    :cond_9
    :try_start_1
    const-string v8, "Launcher"

    const-string v9, "database error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 260
    .end local v0           #IsProvisioned:Z
    :catch_0
    move-exception v2

    .line 261
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "Launcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error Setting device_provisioned: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 265
    .end local v2           #e:Ljava/lang/Exception;
    :cond_a
    const-string v8, "Launcher"

    const-string v9, "FactoryMode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 317
    .restart local v1       #app:Lcom/android/launcher2/LauncherApplication;
    .restart local v5       #prefs:Landroid/content/SharedPreferences;
    .restart local v6       #transaction:Landroid/app/FragmentTransaction;
    .restart local v7       #wasHomeHidden:Z
    :cond_b
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6, v8}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 318
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v6, v8}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 319
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mDarkenView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    .line 323
    .end local v7           #wasHomeHidden:Z
    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6, v8}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 324
    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v6, v8}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_2

    .line 366
    .restart local v3       #filter:Landroid/content/IntentFilter;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_d
    sput-boolean v12, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    .line 367
    invoke-static {v12}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 368
    invoke-static {v12}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 888
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 889
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mScreenLarge:Z

    if-nez v1, :cond_0

    .line 890
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 891
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 893
    .end local v0           #menuInflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 649
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mIsDestroyed:Z

    .line 650
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy, Launcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 652
    invoke-static {}, Lcom/android/launcher2/Utilities;->onDestroy()V

    .line 654
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/LauncherModel;->initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V

    .line 655
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 657
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-eqz v2, :cond_0

    .line 659
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 660
    .local v1, tempPopupStatus:Z
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->dismiss()V

    .line 661
    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    .line 662
    sput-boolean v1, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    .line 665
    .end local v1           #tempPopupStatus:Z
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 667
    iput-object v5, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 670
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mBadgeCountChangedReceiver:Lcom/android/launcher2/BadgeCountReceiver;

    invoke-virtual {v2}, Lcom/android/launcher2/BadgeCountReceiver;->unregister()V

    .line 673
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_2

    .line 674
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    invoke-virtual {v2}, Lcom/android/launcher2/ContextualPageReceiver;->unregister()V

    .line 678
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    if-eqz v2, :cond_3

    .line 679
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Launcher;->mAutoRestart:Z

    .line 680
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 681
    .local v0, home:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 682
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 684
    .end local v0           #home:Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowGen;->onDestroy()V

    .line 685
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1362
    const-string v0, "Launcher"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDetachedFromWindow()V

    .line 1364
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 1366
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mAttached:Z

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 1371
    return-void
.end method

.method public onInit(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 2754
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v2, :cond_1

    .line 2778
    :cond_0
    :goto_0
    return-void

    .line 2758
    :cond_1
    if-nez p1, :cond_4

    .line 2760
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 2761
    .local v0, result:I
    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_0

    .line 2764
    :cond_2
    const-string v2, "Launcher"

    const-string v3, "Language is not available defaulting to US english."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v1

    .line 2766
    .local v1, result2:I
    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_0

    .line 2768
    :cond_3
    const-string v2, "Launcher"

    const-string v3, "Could not initialize TextToSpeech US language"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2776
    .end local v0           #result:I
    .end local v1           #result2:I
    :cond_4
    const-string v2, "Launcher"

    const-string v3, "Could not initialize TextToSpeech."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v10, 0x12

    const/4 v9, 0x7

    const/4 v6, 0x1

    .line 956
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    .line 957
    .local v5, uniChar:I
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 958
    .local v2, handled:Z
    if-lez v5, :cond_1

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_1

    move v3, v6

    .line 959
    .local v3, isKeyNotWhitespace:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 961
    .local v0, config:Landroid/content/res/Configuration;
    iget v7, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 962
    if-lt p1, v9, :cond_4

    if-gt p1, v10, :cond_4

    .line 963
    const/4 v4, 0x0

    .line 964
    .local v4, myIntentDial:Landroid/content/Intent;
    if-lt p1, v9, :cond_2

    const/16 v7, 0x10

    if-gt p1, v7, :cond_2

    .line 965
    new-instance v4, Landroid/content/Intent;

    .end local v4           #myIntentDial:Landroid/content/Intent;
    const-string v6, "android.intent.action.DIAL"

    const-string v7, "tel:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 975
    .restart local v4       #myIntentDial:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 976
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 1001
    .end local v2           #handled:Z
    .end local v4           #myIntentDial:Landroid/content/Intent;
    :cond_0
    :goto_2
    return v2

    .line 958
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v3           #isKeyNotWhitespace:Z
    .restart local v2       #handled:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 967
    .restart local v0       #config:Landroid/content/res/Configuration;
    .restart local v3       #isKeyNotWhitespace:Z
    .restart local v4       #myIntentDial:Landroid/content/Intent;
    :cond_2
    if-ne p1, v10, :cond_3

    .line 968
    new-instance v4, Landroid/content/Intent;

    .end local v4           #myIntentDial:Landroid/content/Intent;
    const-string v7, "android.intent.action.DIAL"

    const-string v8, "tel:"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 970
    .restart local v4       #myIntentDial:Landroid/content/Intent;
    const-string v7, "isPoundKey"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 972
    :cond_3
    new-instance v4, Landroid/content/Intent;

    .end local v4           #myIntentDial:Landroid/content/Intent;
    const-string v6, "android.intent.action.DIAL"

    const-string v7, "tel:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v4       #myIntentDial:Landroid/content/Intent;
    goto :goto_1

    .line 982
    .end local v4           #myIntentDial:Landroid/content/Intent;
    :cond_4
    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->acceptFilter()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v3, :cond_5

    .line 983
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v8, v9, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 985
    .local v1, gotKey:Z
    if-eqz v1, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 992
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSearchRequested()Z

    move-result v2

    goto :goto_2

    .line 997
    .end local v1           #gotKey:Z
    :cond_5
    const/16 v7, 0x52

    if-ne p1, v7, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v6

    .line 998
    goto :goto_2
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1705
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/high16 v6, 0x40

    const/4 v3, 0x0

    .line 1378
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 1380
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    .line 1382
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->setIntent(Landroid/content/Intent;)V

    .line 1383
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1384
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1386
    .local v1, notiID:I
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v6

    if-eq v4, v6, :cond_6

    .line 1388
    const-string v4, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1389
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1390
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuFragment;->onHomePressed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1391
    const-string v4, "streetlife"

    const-string v5, "onNewIntent exitAllApps"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    .line 1402
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v2

    .line 1403
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1404
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1406
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1413
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 1415
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->closeSystemDialogs()V

    .line 1417
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    if-eqz v3, :cond_2

    .line 1418
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/ContextualPageManager;->notificationGoContextualPage(I)V

    .line 1420
    .end local v1           #notiID:I
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 1384
    goto :goto_0

    .line 1395
    .restart local v1       #notiID:I
    :cond_4
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v5, :cond_0

    .line 1396
    :cond_5
    if-nez v1, :cond_0

    .line 1397
    iget-object v4, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->onHomePressed()Z

    goto :goto_1

    .line 1408
    :cond_6
    const-string v3, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1409
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->finishExitAllApps()V

    goto :goto_2

    .line 1411
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->exitAllApps()V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1448
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 1450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v5, v2

    .line 1507
    :goto_0
    return v5

    .line 1452
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onClickAppMarketButton()V

    goto :goto_0

    .line 1455
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 1458
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->onOptionSelectedSearch()V

    goto :goto_0

    .line 1461
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->onOptionSelectedUninstall()V

    goto :goto_0

    .line 1464
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->onOptionSelectedDownload()V

    goto :goto_0

    .line 1467
    :pswitch_5
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuFragment;->chooseViewType()V

    goto :goto_0

    .line 1470
    :pswitch_6
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SHARE_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 1473
    :pswitch_7
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_HIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 1476
    :pswitch_8
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEL_APPS_TO_UNHIDE:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 1481
    :pswitch_9
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1482
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1486
    .end local v0           #searchManager:Landroid/app/SearchManager;
    :pswitch_a
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2, v1, v5}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1490
    :pswitch_b
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_0

    .line 1491
    invoke-static {v5}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 1492
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/HomeFragment;->showWorkspaceEditmode(Z)V

    goto :goto_0

    .line 1494
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2, v1, v5}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 1498
    :pswitch_c
    new-instance v6, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1499
    .local v6, i:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1500
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1501
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1504
    .end local v6           #i:Landroid/content/Intent;
    :pswitch_d
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/HomeFragment;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;)V

    goto/16 :goto_0

    .line 1450
    :pswitch_data_0
    .packed-switch 0x7f070097
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 945
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 946
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 947
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 502
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 504
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, pauseIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 898
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 900
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 940
    :cond_0
    :goto_0
    return v1

    .line 904
    :cond_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_2

    .line 905
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 909
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v3

    if-nez v3, :cond_3

    .line 910
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 911
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v0

    .line 912
    .local v0, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    if-eqz v0, :cond_3

    .line 913
    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v3, v4, :cond_0

    .line 924
    .end local v0           #menuWidgets:Lcom/android/launcher2/MenuWidgets;
    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-eq v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/Launcher;->mExitingAllApps:Z

    if-eq v3, v2, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 930
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->setMarketLabel()V

    .line 937
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mScreenLarge:Z

    if-nez v1, :cond_4

    .line 938
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher;->setupOptionsMenu(Landroid/view/Menu;)V

    .line 939
    :cond_4
    sput-boolean v2, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    move v1, v2

    .line 940
    goto :goto_0

    .line 917
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_3

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 394
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-super {p0}, Landroid/app/ActivityGroup;->onRestart()V

    .line 396
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f070035

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 514
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume, Launcher: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 516
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->clearTypedText()V

    .line 517
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 519
    .local v10, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/launcher2/Utilities;->broadcastStkIntent(Landroid/content/Context;)V

    .line 520
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0, v12}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 522
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mRestoring:Z

    .line 523
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 525
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    .line 527
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, action:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 529
    const-string v0, "com.android.launcher2.ALL_APPS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    if-nez v0, :cond_8

    .line 532
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->showAllApps()V

    .line 539
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sec.android.intent.extra.LAUNCHER_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 543
    :cond_3
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 544
    .local v11, resumeIntent:Landroid/content/Intent;
    const-string v0, "com.sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    invoke-virtual {p0, v11}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initClingCheck()V

    .line 547
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "cling.workspace.dismissed"

    invoke-interface {v10, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 549
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 550
    .local v8, clingView:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getWorkspaceClingVisible()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-boolean v0, v0, Lcom/android/launcher2/HomeFragment;->mHomeKeyPress:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 556
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isPageEdit()Z

    move-result v0

    if-nez v0, :cond_4

    .line 557
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 558
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->firstShowCling()V

    .line 563
    .end local v8           #clingView:Landroid/view/View;
    :cond_5
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageManager;->getHasPostWork()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    .line 565
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mContextualPageManager:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/ContextualPageManager;->setHasPostWork(Z)V

    .line 568
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iput-boolean v4, v0, Lcom/android/launcher2/HomeFragment;->mHomeKeyPress:Z

    .line 569
    sput-boolean v4, Lcom/android/launcher2/Launcher;->sHwPopupMenuShowing:Z

    .line 570
    const/4 v6, 0x0

    .line 572
    .local v6, accessibilityEnabled:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    .line 573
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACCESSIBILITY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_1
    if-ne v6, v12, :cond_9

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_9

    .line 579
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p0, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 584
    :cond_7
    :goto_2
    return-void

    .line 534
    .end local v6           #accessibilityEnabled:I
    .end local v11           #resumeIntent:Landroid/content/Intent;
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->isCurrentTabWidgets()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    goto/16 :goto_0

    .line 574
    .restart local v6       #accessibilityEnabled:I
    .restart local v11       #resumeIntent:Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 575
    .local v9, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error finding setting, default accessibility to not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 580
    .end local v9           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_9
    if-nez v6, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_7

    .line 581
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 582
    iput-object v3, p0, Lcom/android/launcher2/Launcher;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    goto :goto_2
.end method

.method public onRotationCling(Landroid/view/View;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Z)V
    .locals 4
    .parameter "port"
    .parameter "land"
    .parameter "cbPort"
    .parameter "cbLand"
    .parameter "config"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2492
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2493
    iget v0, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2494
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2495
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2496
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 2497
    invoke-virtual {p3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2508
    :cond_0
    :goto_0
    return-void

    .line 2500
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2501
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2502
    if-eqz p5, :cond_0

    if-eqz p3, :cond_0

    .line 2503
    invoke-virtual {p4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public onSaveClingCheckState()V
    .locals 19

    .prologue
    .line 2353
    const-string v17, "com.android.launcher2.prefs"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 2354
    .local v13, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 2355
    .local v11, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .local v5, cb1:Landroid/widget/CheckBox;
    const/4 v6, 0x0

    .local v6, cb2:Landroid/widget/CheckBox;
    const/4 v7, 0x0

    .local v7, cb3:Landroid/widget/CheckBox;
    const/4 v4, 0x0

    .local v4, appsCb:Landroid/widget/CheckBox;
    const/4 v14, 0x0

    .line 2357
    .local v14, widgetCb:Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v12

    .line 2358
    .local v12, menuWidgets:Lcom/android/launcher2/MenuWidgets;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->getView()Landroid/view/View;

    move-result-object v17

    const v18, 0x7f070035

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 2359
    .local v16, workspaceClingView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v17

    const v18, 0x7f070062

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2360
    .local v3, allAppsClingView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v17

    const v18, 0x7f070063

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 2361
    .local v15, widgetClingView:Landroid/view/View;
    const v17, 0x7f070080

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2362
    .local v8, clingPage1:Landroid/view/View;
    const v17, 0x7f070081

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 2363
    .local v9, clingPage2:Landroid/view/View;
    const v17, 0x7f070082

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 2365
    .local v10, clingPage3:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 2366
    const v17, 0x7f070085

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #cb1:Landroid/widget/CheckBox;
    check-cast v5, Landroid/widget/CheckBox;

    .line 2371
    .restart local v5       #cb1:Landroid/widget/CheckBox;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 2372
    const v17, 0x7f07008b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #cb2:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 2377
    .restart local v6       #cb2:Landroid/widget/CheckBox;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 2378
    const v17, 0x7f070090

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #cb3:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 2384
    .restart local v7       #cb3:Landroid/widget/CheckBox;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 2385
    const v17, 0x7f07007c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #widgetCb:Landroid/widget/CheckBox;
    check-cast v14, Landroid/widget/CheckBox;

    .line 2390
    .restart local v14       #widgetCb:Landroid/widget/CheckBox;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 2391
    const v17, 0x7f07000d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #appsCb:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .line 2396
    .restart local v4       #appsCb:Landroid/widget/CheckBox;
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2399
    const-string v17, "cling.allapps.checked"

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2400
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2403
    :cond_5
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuFragment;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_6

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/launcher2/MenuWidgets;->isShown()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2407
    const-string v17, "cling.widget.checked"

    invoke-virtual {v14}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2408
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2412
    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeFragment;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2415
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_d

    .line 2417
    const-string v17, "cling.workspace.page1.checked"

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2418
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2429
    :cond_7
    :goto_5
    return-void

    .line 2367
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 2368
    const v17, 0x7f070088

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #cb1:Landroid/widget/CheckBox;
    check-cast v5, Landroid/widget/CheckBox;

    .restart local v5       #cb1:Landroid/widget/CheckBox;
    goto/16 :goto_0

    .line 2373
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2374
    const v17, 0x7f07008d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #cb2:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .restart local v6       #cb2:Landroid/widget/CheckBox;
    goto/16 :goto_1

    .line 2379
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 2380
    const v17, 0x7f070092

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #cb3:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .restart local v7       #cb3:Landroid/widget/CheckBox;
    goto/16 :goto_2

    .line 2386
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 2387
    const v17, 0x7f07007f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .end local v14           #widgetCb:Landroid/widget/CheckBox;
    check-cast v14, Landroid/widget/CheckBox;

    .restart local v14       #widgetCb:Landroid/widget/CheckBox;
    goto/16 :goto_3

    .line 2392
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2393
    const v17, 0x7f070010

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #appsCb:Landroid/widget/CheckBox;
    check-cast v4, Landroid/widget/CheckBox;

    .restart local v4       #appsCb:Landroid/widget/CheckBox;
    goto/16 :goto_4

    .line 2419
    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_e

    .line 2421
    const-string v17, "cling.workspace.page2.checked"

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2422
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5

    .line 2423
    :cond_e
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7

    .line 2425
    const-string v17, "cling.workspace.page3.checked"

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2426
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 2710
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2711
    const-string v0, "extra_home_fragment_hidden"

    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->isHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2713
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->isShowCling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2714
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onSaveClingCheckState()V

    .line 2716
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1244
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1246
    const/high16 v0, 0x7f04

    const v1, 0x7f040001

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Launcher;->overridePendingTransition(II)V

    .line 1247
    return v2
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 388
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, Launcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 390
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 611
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop, Launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 614
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    .line 615
    .local v0, priority:I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseLauncherHighPriority:Z

    if-eqz v1, :cond_0

    .line 616
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 619
    :cond_0
    sget-object v1, Lcom/android/launcher2/AvailableAppWidgetListProvider;->CACHED_PREVIEW:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 620
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 2794
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory. Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    sparse-switch p1, :sswitch_data_0

    .line 2820
    :goto_0
    :sswitch_0
    return-void

    .line 2799
    :sswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->releaseShadows()V

    goto :goto_0

    .line 2806
    :sswitch_2
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->releaseShadows()V

    goto :goto_0

    .line 2795
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x3c -> :sswitch_2
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Launcher$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 700
    return-void
.end method

.method public restorePopupMenu()Z
    .locals 4

    .prologue
    .line 591
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sPopupMenuShowing:Z

    if-eqz v2, :cond_2

    .line 592
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    if-nez v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, downloadPopupButton:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    .line 603
    .end local v0           #downloadPopupButton:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mPopupMenu:Lcom/android/launcher2/popup/PopupMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/PopupMenu;->show()V

    .line 604
    const/4 v2, 0x1

    .line 606
    :goto_1
    return v2

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 600
    .local v1, popupButton:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->createPopupMenu(Landroid/view/View;)V

    goto :goto_0

    .line 606
    .end local v1           #popupButton:Landroid/view/View;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setContextualPageReceiver(Lcom/android/launcher2/ContextualPageReceiver;)V
    .locals 0
    .parameter "cpReceiver"

    .prologue
    .line 2891
    iput-object p1, p0, Lcom/android/launcher2/Launcher;->mContextualPageReceiver:Lcom/android/launcher2/ContextualPageReceiver;

    .line 2892
    return-void
.end method

.method public setDismissCling_Key(Z)V
    .locals 0
    .parameter "keyevnet"

    .prologue
    .line 2057
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mClingEnd:Z

    .line 2058
    return-void
.end method

.method public setEnableMenuButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/android/launcher2/Launcher;->mMenuButtonView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1549
    :cond_0
    return-void
.end method

.method public setLoadOnResume()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2526
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2527
    iput-boolean v0, p0, Lcom/android/launcher2/Launcher;->mOnResumeNeedsLoad:Z

    .line 2530
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowWidgetTabAfterAddToHomeScreen(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2789
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher;->mShowWidgetTabAfterAddToHomeScreen:Z

    .line 2790
    return-void
.end method

.method public showAllApps()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 732
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 790
    :goto_0
    return-void

    .line 735
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->updateRunning()V

    .line 736
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 737
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/HomeFragment;->closeQuickViewWorkspace(Z)V

    .line 738
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->exitWidgetResizeMode()V

    .line 741
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 742
    const v7, 0x7f070035

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 743
    .local v1, clingView:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 744
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/launcher2/Launcher;->dismissWorkspaceCling(Landroid/view/View;)V

    .line 747
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->onShowAllApps()V

    .line 749
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    if-eqz v7, :cond_2

    .line 750
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 753
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v0, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher$StateAnimatorProvider;

    .line 755
    .local v5, provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    invoke-interface {v5, v0}, Lcom/android/launcher2/Launcher$StateAnimatorProvider;->collectShowAllAppsAnimators(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 758
    .end local v5           #provider:Lcom/android/launcher2/Launcher$StateAnimatorProvider;
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v7, v8, :cond_4

    .line 759
    const v7, 0x7f050003

    invoke-static {p0, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 760
    .local v2, darkenAnimator:Landroid/animation/Animator;
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 761
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    .end local v2           #darkenAnimator:Landroid/animation/Animator;
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuFragment;->getView()Landroid/view/View;

    move-result-object v4

    .line 765
    .local v4, menuView:Landroid/view/View;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 767
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 768
    .local v6, set:Landroid/animation/AnimatorSet;
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 769
    sget-wide v7, Lcom/android/launcher2/Launcher;->SHOW_ALL_APPS_TRANSITION_DURATION:J

    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 770
    new-instance v7, Lcom/android/launcher2/Launcher$3;

    invoke-direct {v7, p0}, Lcom/android/launcher2/Launcher$3;-><init>(Lcom/android/launcher2/Launcher;)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 786
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mTransitioningToAllApps:Z

    .line 787
    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mInMenu:Z

    .line 788
    iput-object v6, p0, Lcom/android/launcher2/Launcher;->mTransitionAnimator:Landroid/animation/Animator;

    .line 789
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public showAllAppsCling([I)V
    .locals 7
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 2188
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2189
    .local v6, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initClingCheck()V

    .line 2190
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cling.allapps.dismissed"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2194
    if-nez p1, :cond_0

    .line 2195
    const/4 v0, 0x2

    new-array p1, v0, [I

    .end local p1
    fill-array-data p1, :array_0

    .line 2198
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    const v2, 0x7f070062

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 2200
    :cond_1
    return-void

    .line 2195
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;
    .locals 12
    .parameter "fragment"
    .parameter "clingViewId"
    .parameter "positionData"
    .parameter "animate"
    .parameter "delay"

    .prologue
    .line 1918
    const/4 v2, 0x0

    .line 1919
    .local v2, clingView:Lcom/android/launcher2/Cling;
    sget-boolean v9, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_DISABLEHELPUI:Z

    if-nez v9, :cond_c

    .line 1920
    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1921
    .local v4, view:Landroid/view/View;
    instance-of v9, v4, Landroid/view/ViewStub;

    if-eqz v9, :cond_d

    .line 1922
    check-cast v4, Landroid/view/ViewStub;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .end local v2           #clingView:Lcom/android/launcher2/Cling;
    check-cast v2, Lcom/android/launcher2/Cling;

    .line 1927
    .restart local v2       #clingView:Lcom/android/launcher2/Cling;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 1928
    invoke-virtual {v2, p1, p3}, Lcom/android/launcher2/Cling;->init(Landroid/app/Fragment;[I)V

    .line 1929
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Cling;->setVisibility(I)V

    .line 1930
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lcom/android/launcher2/Cling;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1931
    if-nez p4, :cond_e

    .line 1932
    const/high16 v9, 0x3f80

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 1940
    :cond_1
    :goto_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/Launcher;->mWorksapceClingisShow:Z

    .line 1942
    const/4 v6, 0x0

    .local v6, workCb1:Landroid/widget/CheckBox;
    const/4 v7, 0x0

    .local v7, workCb2:Landroid/widget/CheckBox;
    const/4 v8, 0x0

    .local v8, workCb3:Landroid/widget/CheckBox;
    const/4 v1, 0x0

    .local v1, appsCb:Landroid/widget/CheckBox;
    const/4 v5, 0x0

    .line 1944
    .local v5, widgetCb:Landroid/widget/CheckBox;
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 1945
    const v9, 0x7f070085

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #workCb1:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 1950
    .restart local v6       #workCb1:Landroid/widget/CheckBox;
    :cond_2
    :goto_2
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 1951
    const v9, 0x7f07008b

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #workCb2:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 1956
    .restart local v7       #workCb2:Landroid/widget/CheckBox;
    :cond_3
    :goto_3
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    .line 1957
    const v9, 0x7f070090

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #workCb3:Landroid/widget/CheckBox;
    check-cast v8, Landroid/widget/CheckBox;

    .line 1962
    .restart local v8       #workCb3:Landroid/widget/CheckBox;
    :cond_4
    :goto_4
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_12

    .line 1963
    const v9, 0x7f07000d

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #appsCb:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .line 1968
    .restart local v1       #appsCb:Landroid/widget/CheckBox;
    :cond_5
    :goto_5
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 1969
    const v9, 0x7f07007c

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #widgetCb:Landroid/widget/CheckBox;
    check-cast v5, Landroid/widget/CheckBox;

    .line 1974
    .restart local v5       #widgetCb:Landroid/widget/CheckBox;
    :cond_6
    :goto_6
    const-string v9, "com.android.launcher2.prefs"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1975
    .local v3, prefs:Landroid/content/SharedPreferences;
    if-eqz v6, :cond_7

    .line 1976
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1977
    const-string v9, "cling.workspace.page1.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1979
    :cond_7
    if-eqz v7, :cond_8

    .line 1980
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1981
    const-string v9, "cling.workspace.page2.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1983
    :cond_8
    if-eqz v8, :cond_9

    .line 1984
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1985
    const-string v9, "cling.workspace.page3.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1987
    :cond_9
    if-eqz v1, :cond_a

    .line 1988
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1989
    const-string v9, "cling.allapps.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1991
    :cond_a
    if-eqz v5, :cond_b

    .line 1992
    iget-object v9, p0, Lcom/android/launcher2/Launcher;->mClingCheckBoxListener:Lcom/android/launcher2/Launcher$ClingCheckBoxListener;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1993
    const-string v9, "cling.widget.checked"

    const/4 v10, 0x1

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1996
    :cond_b
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->onConfigurationChangedCling(Z)V

    .line 1998
    .end local v1           #appsCb:Landroid/widget/CheckBox;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #widgetCb:Landroid/widget/CheckBox;
    .end local v6           #workCb1:Landroid/widget/CheckBox;
    .end local v7           #workCb2:Landroid/widget/CheckBox;
    .end local v8           #workCb3:Landroid/widget/CheckBox;
    :cond_c
    return-object v2

    .line 1923
    .restart local v4       #view:Landroid/view/View;
    :cond_d
    instance-of v9, v4, Lcom/android/launcher2/Cling;

    if-eqz v9, :cond_0

    move-object v2, v4

    .line 1924
    check-cast v2, Lcom/android/launcher2/Cling;

    goto/16 :goto_0

    .line 1934
    .end local v4           #view:Landroid/view/View;
    :cond_e
    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->buildLayer()V

    .line 1935
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Cling;->setAlpha(F)V

    .line 1936
    invoke-virtual {v2}, Lcom/android/launcher2/Cling;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const/high16 v10, 0x3f80

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    const-wide/16 v10, 0x226

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    move/from16 v0, p5

    int-to-long v10, v0

    invoke-virtual {v9, v10, v11}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    .line 1946
    .restart local v1       #appsCb:Landroid/widget/CheckBox;
    .restart local v5       #widgetCb:Landroid/widget/CheckBox;
    .restart local v6       #workCb1:Landroid/widget/CheckBox;
    .restart local v7       #workCb2:Landroid/widget/CheckBox;
    .restart local v8       #workCb3:Landroid/widget/CheckBox;
    :cond_f
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 1947
    const v9, 0x7f070088

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #workCb1:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .restart local v6       #workCb1:Landroid/widget/CheckBox;
    goto/16 :goto_2

    .line 1952
    :cond_10
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 1953
    const v9, 0x7f07008d

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #workCb2:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .restart local v7       #workCb2:Landroid/widget/CheckBox;
    goto/16 :goto_3

    .line 1958
    :cond_11
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 1959
    const v9, 0x7f070092

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #workCb3:Landroid/widget/CheckBox;
    check-cast v8, Landroid/widget/CheckBox;

    .restart local v8       #workCb3:Landroid/widget/CheckBox;
    goto/16 :goto_4

    .line 1964
    :cond_12
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 1965
    const v9, 0x7f070010

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #appsCb:Landroid/widget/CheckBox;
    check-cast v1, Landroid/widget/CheckBox;

    .restart local v1       #appsCb:Landroid/widget/CheckBox;
    goto/16 :goto_5

    .line 1970
    :cond_13
    iget v9, p0, Lcom/android/launcher2/Launcher;->mResOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 1971
    const v9, 0x7f07007f

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #widgetCb:Landroid/widget/CheckBox;
    check-cast v5, Landroid/widget/CheckBox;

    .restart local v5       #widgetCb:Landroid/widget/CheckBox;
    goto/16 :goto_6
.end method

.method protected showMotionDialog()Z
    .locals 1

    .prologue
    .line 2734
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isMotionDialogAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2735
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isMotionSettingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2736
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/MotionDialogOffFragment;->createAndShow(Landroid/app/FragmentManager;)V

    .line 2740
    :goto_0
    const/4 v0, 0x1

    .line 2742
    :goto_1
    return v0

    .line 2738
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/MotionDialogOnFragment;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 2742
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public showWidgetCling([I)V
    .locals 7
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 2203
    const-string v0, "com.android.launcher2.prefs"

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2204
    .local v6, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->initClingCheck()V

    .line 2205
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cling.widget.dismissed"

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2209
    if-nez p1, :cond_0

    .line 2210
    const/4 v0, 0x2

    new-array p1, v0, [I

    .end local p1
    fill-array-data p1, :array_0

    .line 2213
    .restart local p1
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mMenuFragment:Lcom/android/launcher2/MenuFragment;

    const v2, 0x7f070063

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Launcher;->showCling(Landroid/app/Fragment;I[IZI)Lcom/android/launcher2/Cling;

    .line 2215
    :cond_1
    return-void

    .line 2210
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method startActivitySafely(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    const v3, 0x7f0e0003

    const/4 v1, 0x0

    .line 1751
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1753
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1754
    const/4 v1, 0x1

    .line 1761
    :goto_0
    return v1

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1758
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1759
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 5
    .parameter "intent"
    .parameter "tag"

    .prologue
    const v3, 0x7f0e0003

    const/4 v1, 0x0

    .line 1733
    const/high16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1735
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1736
    const/4 v1, 0x1

    .line 1747
    :goto_0
    return v1

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1739
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1740
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1741
    .local v0, e:Ljava/lang/SecurityException;
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1742
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1259
    if-nez p1, :cond_0

    .line 1261
    invoke-direct {p0}, Lcom/android/launcher2/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1263
    :cond_0
    if-nez p3, :cond_1

    .line 1264
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 1265
    .restart local p3
    const-string v1, "source"

    const-string v2, "launcher-search"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1270
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1272
    return-void
.end method
