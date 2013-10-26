.class public Lcom/android/launcher2/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field public static final ACTION_EASY_MODE:Ljava/lang/String; = "com.android.launcher.action.EASY_MODE_CHANGE"

.field public static final PREFERENCES_GO_TO_WIDGET_TAB_AFTER_ADD_TO_HOMESCREEN:Ljava/lang/String; = "goToWidgetsTabAfterSelectingAddToHomeScreen"

.field private static final PREFERENCES_SCREENCOUNT:Ljava/lang/String; = "screencount"

.field private static final PREFERENCES_SCREENCOUNT_EASY:Ljava/lang/String; = "screencount.simple"

.field private static final PREFERENCES_SCREENINDEX:Ljava/lang/String; = "homescreenindex"

.field private static final PREFERENCES_SCREENINDEX_EASY:Ljava/lang/String; = "homescreenindex.simple"

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field private static sHasPermanentMenuKey:Z

.field private static sIsScreenLarge:Z

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxScreenCount:I

.field private static sScreenCountEasy:I

.field private static sScreenCountNormal:I

.field private static sScreenDensity:F

.field private static sScreenIndexEasy:I

.field private static sScreenIndexNormal:I


# instance fields
.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/launcher2/LauncherApplication$1;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$1;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 247
    new-instance v0, Lcom/android/launcher2/LauncherApplication$2;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$2;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public static getHomeScreenIndex()I
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    goto :goto_0
.end method

.method public static getMaxScreenCount()I
    .locals 1

    .prologue
    .line 343
    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    return v0
.end method

.method public static getScreenCount()I
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    goto :goto_0
.end method

.method public static getScreenDensity()F
    .locals 1

    .prologue
    .line 284
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static hasPermanentMenuKey()Z
    .locals 1

    .prologue
    .line 271
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sHasPermanentMenuKey:Z

    return v0
.end method

.method private static isNormalMode()Z
    .locals 2

    .prologue
    .line 348
    sget-object v1, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherProvider;->isFavoritesInNormalMode()Z

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

.method public static isScreenLandscape(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScreenLarge()Z
    .locals 1

    .prologue
    .line 275
    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    return v0
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "homeScreenIndex"

    .prologue
    const/4 v3, 0x0

    .line 294
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-eq v2, p1, :cond_0

    .line 296
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 297
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 298
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 299
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreenindex"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-eq v2, p1, :cond_0

    .line 304
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 305
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 306
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "homescreenindex.simple"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setScreenCount(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "screenCount"

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-eq v2, p1, :cond_0

    .line 323
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 324
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 325
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencount"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-eq v2, p1, :cond_0

    .line 331
    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 332
    const-string v2, "com.android.launcher2.prefs"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 333
    .restart local v1       #prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 334
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "screencount.simple"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 112
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 115
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v7

    sput-boolean v7, Lcom/android/launcher2/LauncherApplication;->sHasPermanentMenuKey:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v7, 0xf

    .line 117
    .local v6, screenSize:I
    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_a

    :cond_0
    move v7, v9

    :goto_0
    sput-boolean v7, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    .line 119
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    .line 121
    sget-object v7, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iput-object v7, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    .line 122
    iget-object v7, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/MenuAppModel;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    .line 123
    new-instance v7, Lcom/android/launcher2/PkgResCache;

    invoke-direct {v7, p0}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput-object v7, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 124
    new-instance v7, Lcom/android/launcher2/LauncherModel;

    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-direct {v7, p0, v10}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    iput-object v7, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    .line 127
    new-instance v2, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    const-string v7, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    :cond_1
    const-string v7, "package"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 135
    iget-object v7, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object v7, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 149
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v7, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v10, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    const-string v7, "com.android.launcher2.prefs"

    invoke-virtual {p0, v7, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 155
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 156
    .local v5, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 160
    .local v0, csc:Lcom/sec/android/app/CscFeature;
    const v7, 0x7f0a0017

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    .line 167
    const-string v7, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 168
    .local v1, cscValue:I
    const-string v7, "screencount"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 169
    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v7, :cond_2

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v10, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v7, v10, :cond_3

    .line 170
    :cond_2
    if-lez v1, :cond_b

    sget v7, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-gt v1, v7, :cond_b

    .line 171
    sput v1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 178
    :cond_3
    :goto_1
    const-string v7, "screencount.simple"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 179
    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-lez v7, :cond_4

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    sget v10, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v7, v10, :cond_5

    .line 180
    :cond_4
    if-lez v1, :cond_d

    sget v7, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-gt v1, v7, :cond_d

    .line 181
    sput v1, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 194
    :cond_5
    :goto_2
    const-string v7, "CscFeature_Launcher_DefaultPageNumber"

    invoke-virtual {v0, v7}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 195
    const-string v7, "homescreenindex"

    invoke-interface {v3, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 196
    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v7, :cond_6

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-le v7, v10, :cond_7

    .line 197
    :cond_6
    if-ltz v1, :cond_f

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-gt v1, v7, :cond_f

    .line 198
    sput v1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 205
    :cond_7
    :goto_3
    const-string v7, "homescreenindex.simple"

    invoke-interface {v3, v7, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 206
    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-ltz v7, :cond_8

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-le v7, v10, :cond_9

    .line 207
    :cond_8
    if-ltz v1, :cond_11

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-gt v1, v7, :cond_11

    .line 208
    sput v1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 216
    :cond_9
    :goto_4
    sget-object v7, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    iget-object v7, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherModel;->reloadBadges()V

    .line 218
    return-void

    .end local v0           #csc:Lcom/sec/android/app/CscFeature;
    .end local v1           #cscValue:I
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #resources:Landroid/content/res/Resources;
    :cond_a
    move v7, v8

    .line 117
    goto/16 :goto_0

    .line 173
    .restart local v0       #csc:Lcom/sec/android/app/CscFeature;
    .restart local v1       #cscValue:I
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #resources:Landroid/content/res/Resources;
    :cond_b
    const v7, 0x7f0a0015

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    .line 174
    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v7, :cond_c

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v10, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v7, v10, :cond_3

    .line 175
    :cond_c
    sget v7, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    goto :goto_1

    .line 183
    :cond_d
    const v7, 0x7f0a0016

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    .line 184
    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-lez v7, :cond_e

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    sget v10, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v7, v10, :cond_5

    .line 185
    :cond_e
    sget v7, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    goto :goto_2

    .line 200
    :cond_f
    const v7, 0x7f0a0018

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    .line 201
    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v7, :cond_10

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-le v7, v10, :cond_7

    .line 202
    :cond_10
    sput v8, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    goto :goto_3

    .line 210
    :cond_11
    const v7, 0x7f0a0019

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    .line 211
    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    if-ltz v7, :cond_12

    sget v7, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    sget v10, Lcom/android/launcher2/LauncherApplication;->sScreenCountEasy:I

    if-le v7, v10, :cond_9

    .line 212
    :cond_12
    sput v8, Lcom/android/launcher2/LauncherApplication;->sScreenIndexEasy:I

    goto :goto_4
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 227
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 231
    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    return-void
.end method

.method setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 263
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    .line 264
    return-void
.end method
