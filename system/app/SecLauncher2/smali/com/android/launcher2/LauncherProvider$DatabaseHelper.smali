.class Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final TAGS_ALLOWED_HOME:I = 0xf

.field private static final TAGS_ALLOWED_HOTSEAT:I = 0x7

.field private static final TAG_ALLOWED_APP:I = 0x1

.field private static final TAG_ALLOWED_FOLDER:I = 0x4

.field private static final TAG_ALLOWED_SHORTCUT:I = 0x2

.field private static final TAG_ALLOWED_WIDGET:I = 0x8

.field private static final TAG_APP:Ljava/lang/String; = "favorite"

.field private static final TAG_APPORDER:Ljava/lang/String; = "appOrder"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_CLOCK:Ljava/lang/String; = "clock"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_HOME:Ljava/lang/String; = "home"

.field private static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final TAG_SACTIVITYWIDGET:Ljava/lang/String; = "sactivitywidget"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mFavoritesInNormalMode:Z

.field private mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxFavoriteCPId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 405
    const-string v1, "launcher.db"

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 406
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 407
    new-instance v1, Landroid/appwidget/AppWidgetHost;

    const/16 v2, 0x400

    invoke-direct {v1, p1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 416
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "favorites"

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 419
    :cond_0
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "favorites_cp"

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "favorites_cp"

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteCPId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v1, :cond_2

    .line 424
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "favorites_cp"

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteCPId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v1, :cond_3

    .line 428
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "appOrder"

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 431
    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z

    .line 434
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 435
    .local v0, easyModeSwitch:I
    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->switchFavoritesIfNecessary(I)Z

    .line 436
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mFavoritesInNormalMode:Z

    return v0
.end method

.method private addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v0

    .line 1569
    .local v0, id:J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1570
    const-string v2, "appOrder"

    const/4 v3, 0x0

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, v2, v3, p2}, Lcom/android/launcher2/LauncherProvider;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1571
    const-wide/16 v0, -0x1

    .line 1572
    :cond_0
    return-wide v0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "pkgMgr"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 1493
    if-eqz p3, :cond_0

    .line 1494
    const/4 v9, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 1495
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 1498
    :cond_0
    const-wide/16 v5, -0x1

    .line 1500
    .local v5, id:J
    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    .line 1501
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1512
    .local v7, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v5

    .line 1513
    const-string v9, "_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1514
    const-string v9, "componentName"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v9, "title"

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const-string v9, "appOrder"

    const/4 v10, 0x0

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, v9, v10, p2}, Lcom/android/launcher2/LauncherProvider;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    .line 1517
    const-wide/16 v5, -0x1

    .line 1523
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_1
    return-wide v5

    .line 1507
    .restart local v2       #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 1508
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p5, v9, v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1509
    .local v8, packages:[Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v8, v9

    move-object/from16 v0, p6

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1510
    .end local v2           #cn:Landroid/content/ComponentName;
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .restart local v7       #info:Landroid/content/pm/ActivityInfo;
    move-object v2, v3

    .end local v3           #cn:Landroid/content/ComponentName;
    .restart local v2       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 1519
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    .end local v8           #packages:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1520
    .restart local v4       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to get ActivityInfo for : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1519
    .end local v2           #cn:Landroid/content/ComponentName;
    .restart local v3       #cn:Landroid/content/ComponentName;
    .restart local v8       #packages:[Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #cn:Landroid/content/ComponentName;
    .restart local v2       #cn:Landroid/content/ComponentName;
    goto :goto_2
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 7
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1664
    const/4 v0, 0x0

    .line 1665
    .local v0, allocatedAppWidgets:Z
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1668
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1670
    .local v1, appWidgetId:I
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1671
    const-string v4, "spanX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1672
    const-string v4, "spanY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1673
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1674
    const-string v4, "_id"

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1675
    const/4 v4, 0x0

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, p2, v4, p3}, Lcom/android/launcher2/LauncherProvider;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1677
    const/4 v0, 0x1

    .line 1679
    invoke-virtual {v2, v1, p4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    .end local v1           #appWidgetId:I
    :goto_0
    return v0

    .line 1680
    :catch_0
    move-exception v3

    .line 1681
    .local v3, ex:Ljava/lang/RuntimeException;
    const-string v4, "LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 13
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "packageName"
    .parameter "className"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1627
    if-eqz p4, :cond_0

    .line 1628
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p6

    .line 1629
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p7

    .line 1632
    :cond_0
    if-eqz p6, :cond_1

    if-nez p7, :cond_2

    .line 1633
    :cond_1
    const/4 v2, 0x0

    .line 1659
    :goto_0
    return v2

    .line 1636
    :cond_2
    const/4 v11, 0x1

    .line 1637
    .local v11, hasPackage:Z
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    .local v6, cn:Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    :goto_1
    if-eqz v11, :cond_4

    .line 1652
    if-eqz p4, :cond_3

    .line 1653
    const/4 v2, 0x5

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p8

    .line 1654
    const/4 v2, 0x6

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p9

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p8

    move/from16 v8, p9

    .line 1656
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v2

    goto :goto_0

    .line 1640
    :catch_0
    move-exception v9

    .line 1641
    .local v9, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p6, v2, v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1643
    .local v12, packages:[Ljava/lang/String;
    new-instance v6, Landroid/content/ComponentName;

    .end local v6           #cn:Landroid/content/ComponentName;
    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p7

    invoke-direct {v6, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    .restart local v6       #cn:Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1646
    :catch_1
    move-exception v10

    .line 1647
    .local v10, e1:Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_1

    .line 1659
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #e1:Ljava/lang/Exception;
    .end local v12           #packages:[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "db"
    .parameter "tableName"
    .parameter "values"

    .prologue
    const/4 v5, 0x2

    .line 1619
    new-instance v4, Landroid/content/ComponentName;

    const-string v0, "com.android.alarmclock"

    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, cn:Landroid/content/ComponentName;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    .line 1621
    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .parameter "db"
    .parameter "tableName"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 1576
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1577
    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1578
    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1579
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v0

    .line 1580
    .local v0, id:J
    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1581
    const/4 v2, 0x0

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, p2, v2, p3}, Lcom/android/launcher2/LauncherProvider;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1582
    const-wide/16 v0, -0x1

    .line 1584
    .end local v0           #id:J
    :cond_0
    return-wide v0
.end method

.method private addHomeShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "a"
    .parameter "pkgMgr"
    .parameter "intent"
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 1528
    const-wide/16 v5, -0x1

    .line 1530
    .local v5, id:J
    if-eqz p4, :cond_0

    .line 1531
    const/4 v9, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p7

    .line 1532
    const/4 v9, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p8

    .line 1535
    :cond_0
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    .line 1536
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1547
    .local v7, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v5

    .line 1548
    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1549
    const/high16 v9, 0x1020

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1551
    const-string v9, "intent"

    const/4 v10, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const-string v9, "title"

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    const-string v9, "itemType"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    const-string v9, "spanX"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1555
    const-string v9, "spanY"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1556
    const-string v9, "_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1557
    const/4 v9, 0x0

    move-object/from16 v0, p3

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {p0, p1, p2, v9, v0}, Lcom/android/launcher2/LauncherProvider;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    .line 1558
    const-wide/16 v5, -0x1

    .line 1564
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_1
    return-wide v5

    .line 1541
    .restart local v2       #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    .line 1542
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p7, v9, v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1544
    .local v8, packages:[Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    const/4 v9, 0x0

    aget-object v9, v8, v9

    move-object/from16 v0, p8

    invoke-direct {v3, v9, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1545
    .end local v2           #cn:Landroid/content/ComponentName;
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v9, 0x0

    :try_start_2
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .restart local v7       #info:Landroid/content/pm/ActivityInfo;
    move-object v2, v3

    .end local v3           #cn:Landroid/content/ComponentName;
    .restart local v2       #cn:Landroid/content/ComponentName;
    goto/16 :goto_0

    .line 1559
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #info:Landroid/content/pm/ActivityInfo;
    .end local v8           #packages:[Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1560
    .restart local v4       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    const-string v9, "LauncherProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to add Home app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1559
    .end local v2           #cn:Landroid/content/ComponentName;
    .restart local v3       #cn:Landroid/content/ComponentName;
    .restart local v8       #packages:[Ljava/lang/String;
    :catch_2
    move-exception v4

    move-object v2, v3

    .end local v3           #cn:Landroid/content/ComponentName;
    .restart local v2       #cn:Landroid/content/ComponentName;
    goto :goto_2
.end method

.method private addSamsungActivityWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 31
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "pkgName"
    .parameter "cName"
    .parameter "themeName"
    .parameter "cscSpanX"
    .parameter "cscSpanY"

    .prologue
    .line 1765
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1766
    .local v14, intent:Landroid/content/Intent;
    if-eqz p4, :cond_1

    .line 1767
    const/16 v28, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1768
    .local v18, packageName:Ljava/lang/String;
    const/16 v28, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1776
    .local v9, className:Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 1780
    .local v8, c:Landroid/content/Context;
    :try_start_0
    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    invoke-direct {v10, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    .local v10, cn:Landroid/content/ComponentName;
    const/16 v28, 0x80

    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v13

    .line 1782
    .local v13, info:Landroid/content/pm/ActivityInfo;
    if-eqz p4, :cond_0

    .line 1783
    invoke-virtual {v14, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1785
    :cond_0
    const-string v28, "intent"

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const-string v28, "itemType"

    const/16 v29, 0x384

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x3

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v8

    .line 1790
    if-nez v8, :cond_2

    .line 1791
    const/16 v28, 0x0

    .line 1873
    .end local v10           #cn:Landroid/content/ComponentName;
    .end local v13           #info:Landroid/content/pm/ActivityInfo;
    :goto_1
    return v28

    .line 1770
    .end local v8           #c:Landroid/content/Context;
    .end local v9           #className:Ljava/lang/String;
    .end local v18           #packageName:Ljava/lang/String;
    :cond_1
    move-object/from16 v18, p6

    .line 1771
    .restart local v18       #packageName:Ljava/lang/String;
    move-object/from16 v9, p7

    .line 1772
    .restart local v9       #className:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1773
    const-string v28, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v28

    move-object/from16 v1, p8

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1793
    .restart local v8       #c:Landroid/content/Context;
    .restart local v10       #cn:Landroid/content/ComponentName;
    .restart local v13       #info:Landroid/content/pm/ActivityInfo;
    :cond_2
    if-eqz p9, :cond_4

    if-eqz p10, :cond_4

    .line 1794
    move/from16 v23, p9

    .line 1795
    .local v23, spanX:I
    move/from16 v24, p10

    .line 1857
    .local v24, spanY:I
    :cond_3
    :goto_2
    :try_start_1
    const-string v28, "spanX"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1858
    const-string v28, "spanY"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1859
    const-string v28, "_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1860
    const-string v28, "appWidgetId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1861
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v4, p3

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1873
    const/16 v28, 0x1

    goto :goto_1

    .line 1798
    .end local v23           #spanX:I
    .end local v24           #spanY:I
    :cond_4
    iget-object v7, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1799
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_8

    .line 1800
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1801
    .local v16, keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1802
    .local v15, key:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v13, v0, v15}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 1803
    .local v19, parser:Landroid/content/res/XmlResourceParser;
    if-nez v19, :cond_5

    .line 1804
    const-string v28, "LauncherProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed to load XML data from package "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " with key "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " while opening Samsung ActivityWidget"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1806
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 1811
    :cond_5
    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v25

    .local v25, type:I
    const/16 v28, 0x2

    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    const/16 v28, 0x1

    move/from16 v0, v25

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 1818
    .end local v25           #type:I
    :cond_6
    :goto_3
    const/16 v28, 0x0

    :try_start_3
    const-string v29, "width"

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v21

    .line 1819
    .local v21, resWidth:I
    const/16 v28, 0x0

    const-string v29, "height"

    const/16 v30, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 1820
    .local v20, resHeight:I
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 1821
    .local v26, width:I
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1838
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19           #parser:Landroid/content/res/XmlResourceParser;
    .local v12, height:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 1840
    .local v22, resources:Landroid/content/res/Resources;
    const v28, 0x7f0c0013

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const v29, 0x7f0c0015

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    add-int v6, v28, v29

    .line 1842
    .local v6, actualWidth:I
    const v28, 0x7f0c0014

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const v29, 0x7f0c0016

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    add-int v5, v28, v29

    .line 1845
    .local v5, actualHeight:I
    rem-int v28, v26, v6

    if-eqz v28, :cond_b

    div-int v28, v26, v6

    add-int/lit8 v23, v28, 0x1

    .line 1846
    .restart local v23       #spanX:I
    :goto_5
    rem-int v28, v12, v5

    if-eqz v28, :cond_c

    div-int v28, v12, v5

    add-int/lit8 v24, v28, 0x1

    .line 1848
    .restart local v24       #spanY:I
    :goto_6
    const v28, 0x7f0a0027

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v28

    move/from16 v0, v23

    move/from16 v1, v28

    if-le v0, v1, :cond_7

    .line 1849
    const v28, 0x7f0a0027

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    .line 1852
    :cond_7
    const v28, 0x7f0a0028

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v28

    move/from16 v0, v23

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    .line 1853
    const v28, 0x7f0a0028

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    goto/16 :goto_2

    .line 1813
    .end local v5           #actualHeight:I
    .end local v6           #actualWidth:I
    .end local v12           #height:I
    .end local v20           #resHeight:I
    .end local v21           #resWidth:I
    .end local v22           #resources:Landroid/content/res/Resources;
    .end local v23           #spanX:I
    .end local v24           #spanY:I
    .end local v26           #width:I
    .restart local v15       #key:Ljava/lang/String;
    .restart local v16       #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v19       #parser:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v11

    .line 1814
    .local v11, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_3

    .line 1863
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v10           #cn:Landroid/content/ComponentName;
    .end local v11           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v13           #info:Landroid/content/pm/ActivityInfo;
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19           #parser:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v11

    .line 1864
    .local v11, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v28, "LauncherProvider"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unable to add sactivitywidget: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1866
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1867
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 1815
    .end local v11           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v10       #cn:Landroid/content/ComponentName;
    .restart local v13       #info:Landroid/content/pm/ActivityInfo;
    .restart local v15       #key:Ljava/lang/String;
    .restart local v16       #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v19       #parser:Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v11

    .line 1816
    .local v11, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_3

    .line 1868
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v10           #cn:Landroid/content/ComponentName;
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #info:Landroid/content/pm/ActivityInfo;
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19           #parser:Landroid/content/res/XmlResourceParser;
    :catch_3
    move-exception v11

    .line 1869
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    const-string v28, "LauncherProvider"

    const-string v29, "Resource not found exception :"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    invoke-virtual {v11}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 1871
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 1823
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v7       #bundle:Landroid/os/Bundle;
    .restart local v10       #cn:Landroid/content/ComponentName;
    .restart local v13       #info:Landroid/content/pm/ActivityInfo;
    :cond_8
    :try_start_5
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string v29, "min_width"

    const-string v30, "string"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 1825
    .restart local v21       #resWidth:I
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string v29, "min_height"

    const-string v30, "string"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 1827
    .restart local v20       #resHeight:I
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1828
    .local v17, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "window"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/WindowManager;

    .line 1830
    .local v27, wm:Landroid/view/WindowManager;
    invoke-interface/range {v27 .. v27}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1832
    if-eqz v21, :cond_9

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1834
    .restart local v26       #width:I
    :goto_7
    if-eqz v20, :cond_a

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v12, v0

    .restart local v12       #height:I
    :goto_8
    goto/16 :goto_4

    .line 1832
    .end local v12           #height:I
    .end local v26           #width:I
    :cond_9
    const/16 v26, 0x0

    goto :goto_7

    .line 1834
    .restart local v26       #width:I
    :cond_a
    const/4 v12, 0x0

    goto :goto_8

    .line 1845
    .end local v17           #metrics:Landroid/util/DisplayMetrics;
    .end local v27           #wm:Landroid/view/WindowManager;
    .restart local v5       #actualHeight:I
    .restart local v6       #actualWidth:I
    .restart local v12       #height:I
    .restart local v22       #resources:Landroid/content/res/Resources;
    :cond_b
    div-int v23, v26, v6

    goto/16 :goto_5

    .line 1846
    .restart local v23       #spanX:I
    :cond_c
    div-int v24, v12, v5
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_6
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "db"
    .parameter "tableName"
    .parameter "values"

    .prologue
    .line 1614
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v4

    .line 1615
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v5, 0x4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 19
    .parameter "db"
    .parameter "tableName"
    .parameter "values"
    .parameter "a"
    .parameter "uri"
    .parameter "titleId"
    .parameter "imgId"

    .prologue
    .line 1688
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1690
    .local v12, r:Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 1691
    .local v8, iconResId:I
    const/4 v14, 0x0

    .line 1693
    .local v14, titleResId:I
    if-eqz p4, :cond_0

    .line 1694
    const/4 v15, 0x7

    const/16 v16, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1695
    const/16 v15, 0x8

    const/16 v16, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 1701
    :cond_0
    if-eqz p4, :cond_1

    .line 1702
    const/16 v15, 0x9

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p5

    .line 1704
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v15}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1710
    .local v11, intent:Landroid/content/Intent;
    if-eqz p4, :cond_4

    if-eqz v8, :cond_2

    if-nez v14, :cond_4

    .line 1711
    :cond_2
    const-string v15, "LauncherProvider"

    const-string v16, "Shortcut is missing title or icon resource ID"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    const-wide/16 v9, -0x1

    .line 1753
    .end local v11           #intent:Landroid/content/Intent;
    :cond_3
    :goto_0
    return-wide v9

    .line 1705
    :catch_0
    move-exception v7

    .line 1706
    .local v7, e:Ljava/net/URISyntaxException;
    const-string v15, "LauncherProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Shortcut has malformed uri: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 1715
    .end local v7           #e:Ljava/net/URISyntaxException;
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->generateNewFavoritesId()J

    move-result-wide v9

    .line 1716
    .local v9, id:J
    const/high16 v15, 0x1000

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1717
    const-string v15, "intent"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string v15, "itemType"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    const-string v15, "spanX"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1720
    const-string v15, "spanY"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1721
    const-string v15, "_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1722
    if-eqz p4, :cond_5

    .line 1723
    const-string v15, "iconType"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1724
    const-string v15, "iconPackage"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const-string v15, "title"

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const-string v15, "iconResource"

    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v2, v15, v3}, Lcom/android/launcher2/LauncherProvider;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-gez v15, :cond_3

    .line 1751
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 1730
    :cond_5
    const-string v4, ""

    .line 1731
    .local v4, appTitle:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1733
    .local v6, d:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p6

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4           #appTitle:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1734
    .restart local v4       #appTitle:Ljava/lang/String;
    const-string v15, "title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v0, p7

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1737
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    if-nez v6, :cond_7

    .line 1738
    :cond_6
    const-string v15, "LauncherProvider"

    const-string v16, "Shortcut is missing title or icon resource ID from csc resource"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 1742
    :cond_7
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1743
    .local v13, stream:Ljava/io/ByteArrayOutputStream;
    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1744
    .local v5, bitmap:Landroid/graphics/Bitmap;
    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1746
    const-string v15, "iconType"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1747
    const-string v15, "icon"

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 9
    .parameter "db"

    .prologue
    const/4 v8, 0x0

    .line 526
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    const-string v3, "converting database from an older format, but not onUpgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    const/4 v6, 0x0

    .line 529
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 531
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 532
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 535
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 541
    :goto_0
    if-eqz v7, :cond_2

    .line 543
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 544
    invoke-direct {p0, p1, v7}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_5

    const/4 v6, 0x1

    .line 547
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 550
    if-eqz v6, :cond_2

    .line 551
    invoke-virtual {v0, v1, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 555
    :cond_2
    if-eqz v6, :cond_4

    .line 557
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LauncherProvider"

    const-string v3, "converted and now triggering widget upgrade"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 561
    :cond_4
    return v6

    .line 544
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 547
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 536
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 21
    .parameter "db"

    .prologue
    .line 956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v12

    .line 957
    .local v12, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    const/4 v3, 0x3

    new-array v13, v3, [I

    fill-array-data v13, :array_0

    .line 963
    .local v13, bindSources:[I
    const-string v3, "itemType"

    invoke-static {v3, v13}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 965
    .local v6, selectWhere:Ljava/lang/String;
    const/4 v14, 0x0

    .line 967
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 970
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "itemType"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 973
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v4, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found upgrade cursor count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v14, :cond_4

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_0
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 976
    .local v20, values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 977
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 978
    .local v16, favoriteId:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    .line 982
    .local v18, favoriteType:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v11

    .line 984
    .local v11, appWidgetId:I
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 985
    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocated appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for favoriteId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_2
    invoke-virtual/range {v20 .. v20}, Landroid/content/ContentValues;->clear()V

    .line 989
    const-string v3, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 990
    const-string v3, "appWidgetId"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 994
    const-string v3, "spanX"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 995
    const-string v3, "spanY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1002
    .local v19, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1004
    const/16 v3, 0x3e8

    move/from16 v0, v18

    if-ne v0, v3, :cond_7

    .line 1005
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.alarmclock"

    const-string v5, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1016
    .end local v11           #appWidgetId:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1017
    .local v15, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "LauncherProvider"

    const-string v4, "Problem allocating appWidgetId"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1022
    .end local v15           #ex:Ljava/lang/RuntimeException;
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v15

    .line 1023
    .local v15, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "LauncherProvider"

    const-string v4, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1025
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1026
    if-eqz v14, :cond_3

    .line 1027
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1030
    .end local v15           #ex:Landroid/database/SQLException;
    :cond_3
    :goto_3
    return-void

    .line 973
    :cond_4
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    goto/16 :goto_0

    .line 997
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_5
    const-string v3, "spanX"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    const-string v3, "spanY"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1025
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v20           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1026
    if-eqz v14, :cond_6

    .line 1027
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 1008
    .restart local v11       #appWidgetId:I
    .restart local v16       #favoriteId:J
    .restart local v18       #favoriteType:I
    .restart local v19       #updateWhere:Ljava/lang/String;
    .restart local v20       #values:Landroid/content/ContentValues;
    :cond_7
    const/16 v3, 0x3ea

    move/from16 v0, v18

    if-ne v0, v3, :cond_8

    .line 1009
    :try_start_6
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V

    goto/16 :goto_1

    .line 1012
    :cond_8
    const/16 v3, 0x3e9

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    .line 1013
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v12, v11, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 1021
    .end local v11           #appWidgetId:I
    .end local v16           #favoriteId:J
    .end local v18           #favoriteType:I
    .end local v19           #updateWhere:Ljava/lang/String;
    :cond_9
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1025
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1026
    if-eqz v14, :cond_3

    .line 1027
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 957
    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
        0xe9t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 27
    .parameter "db"
    .parameter "c"

    .prologue
    .line 565
    const-string v23, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 566
    .local v14, idIndex:I
    const-string v23, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 567
    .local v15, intentIndex:I
    const-string v23, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 568
    .local v20, titleIndex:I
    const-string v23, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 569
    .local v13, iconTypeIndex:I
    const-string v23, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 570
    .local v10, iconIndex:I
    const-string v23, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 571
    .local v11, iconPackageIndex:I
    const-string v23, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 572
    .local v12, iconResourceIndex:I
    const-string v23, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 573
    .local v7, containerIndex:I
    const-string v23, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 574
    .local v16, itemTypeIndex:I
    const-string v23, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 575
    .local v19, screenIndex:I
    const-string v23, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 576
    .local v5, cellXIndex:I
    const-string v23, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 578
    .local v6, cellYIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    .line 579
    .local v18, rows:[Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 580
    .local v8, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 581
    new-instance v22, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v23

    invoke-direct/range {v22 .. v23}, Landroid/content/ContentValues;-><init>(I)V

    .line 582
    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    const-string v23, "intent"

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v23, "title"

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v23, "iconType"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 586
    const-string v23, "icon"

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 587
    const-string v23, "iconPackage"

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v23, "iconResource"

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v23, "container"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    const-string v23, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 591
    const-string v23, "appWidgetId"

    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 592
    const-string v23, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 593
    const-string v23, "cellX"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v23, "cellY"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 595
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    aput-object v22, v18, v8

    move v8, v9

    .line 596
    .end local v9           #i:I
    .restart local v8       #i:I
    goto/16 :goto_0

    .line 598
    .end local v22           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 599
    const/16 v21, 0x0

    .line 601
    .local v21, total:I
    :try_start_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v17, v0

    .line 602
    .local v17, numValues:I
    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_2

    .line 603
    const-string v23, "favorites"

    const/16 v24, 0x0

    aget-object v25, v18, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    #calls: Lcom/android/launcher2/LauncherProvider;->dbInsertAndCheck(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider;->access$100(Lcom/android/launcher2/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v23

    const-wide/16 v25, 0x0

    cmp-long v23, v23, v25

    if-gez v23, :cond_1

    .line 604
    const/16 v21, 0x0

    .line 610
    .end local v21           #total:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 613
    :goto_2
    return v21

    .line 606
    .restart local v21       #total:I
    :cond_1
    add-int/lit8 v21, v21, 0x1

    .line 602
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 608
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    .end local v17           #numValues:I
    :catchall_0
    move-exception v23

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v23
.end method

.method private createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 512
    const-string v0, "CREATE table appOrder (_id integer primary key,folderId integer not null default -1,screen integer not null default -1,cell integer not null default -1,hidden integer not null default 0,title text,componentName text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 523
    return-void
.end method

.method private createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "tableName"

    .prologue
    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "screen INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellX INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellY INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanX INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanY INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appWidgetId INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconType INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconPackage TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconResource TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon BLOB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method private doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 8
    .parameter "db"
    .parameter "tableName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 617
    const/4 v1, 0x0

    .line 618
    .local v1, exists:Z
    const-string v4, "SELECT count(*) from sqlite_master where name=? and type=\'table\'"

    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 620
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 621
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v1, v2

    .line 624
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 626
    :cond_1
    return v1

    :cond_2
    move v1, v3

    .line 622
    goto :goto_0
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 1600
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1601
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 1602
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_1

    move-object v2, v6

    .line 1610
    :cond_0
    :goto_0
    return-object v2

    .line 1603
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1604
    .local v3, providerCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1605
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1606
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1604
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #provider:Landroid/content/ComponentName;
    :cond_3
    move-object v2, v6

    .line 1610
    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 1588
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 1590
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1591
    .local v0, searchComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 1592
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6
    .parameter "db"
    .parameter "table"

    .prologue
    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select ifnull(max(_id),0) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 891
    .local v0, c:Landroid/database/Cursor;
    const-wide/16 v1, -0x1

    .line 892
    .local v1, id:J
    if-eqz v0, :cond_1

    .line 893
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 894
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 896
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 899
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 900
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: could not query max id from table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    :cond_2
    return-wide v1
.end method

.method private loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    .locals 24
    .parameter "db"
    .parameter "parser"
    .parameter "folderId"
    .parameter "isCSC"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1047
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAppOrderContainer. folderId: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1049
    .local v4, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1051
    .local v6, pkgMgr:Landroid/content/pm/PackageManager;
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v15

    .line 1052
    .local v15, attrs:Landroid/util/AttributeSet;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    .line 1053
    .local v20, startDepth:I
    const/16 v16, 0x0

    .line 1054
    .local v16, cell:I
    const/16 v17, 0x0

    .line 1057
    .local v17, items:I
    const/4 v7, 0x0

    .line 1058
    .local v7, pkgName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1060
    .local v8, className:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    .local v23, type:I
    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v20

    if-le v2, v0, :cond_2

    .line 1062
    :cond_1
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_3

    .line 1139
    :cond_2
    return v17

    .line 1065
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_0

    .line 1068
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1069
    .local v18, name:Ljava/lang/String;
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadApplicationsContainer. Process tag: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const-string v19, ""

    .line 1074
    .local v19, screen:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_6

    .line 1075
    const/4 v5, 0x0

    .line 1076
    .local v5, a:Landroid/content/res/TypedArray;
    const-string v7, ""

    .line 1077
    const-string v8, ""

    .line 1078
    const/4 v2, 0x0

    const-string v3, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1085
    :goto_1
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 1087
    const-string v2, "favorite"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1091
    if-eqz p5, :cond_4

    .line 1092
    const/4 v2, 0x0

    const-string v3, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1093
    const/4 v2, 0x0

    const-string v3, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1096
    :cond_4
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_7

    .line 1097
    const-string v2, "screen"

    move-object/from16 v0, v19

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string v2, "cell"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1105
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    if-ltz v2, :cond_5

    .line 1106
    add-int/lit8 v17, v17, 0x1

    .line 1107
    add-int/lit8 v16, v16, 0x1

    .line 1135
    :cond_5
    :goto_3
    const/4 v2, 0x1

    move/from16 v0, p5

    if-eq v0, v2, :cond_0

    .line 1136
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1080
    .end local v5           #a:Landroid/content/res/TypedArray;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/android/app/launcher/R$styleable;->AppOrder:[I

    invoke-virtual {v2, v15, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1081
    .restart local v5       #a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 1101
    :cond_7
    const-string v2, "folderId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1102
    const-string v2, "screen"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1110
    :cond_8
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_b

    const-string v2, "folder"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1111
    const/16 v21, 0x0

    .line 1112
    .local v21, title:Ljava/lang/String;
    const/16 v22, -0x1

    .line 1113
    .local v22, titleResId:I
    if-eqz p5, :cond_a

    .line 1114
    const/4 v2, 0x0

    const-string v3, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1122
    :cond_9
    :goto_4
    const-string v2, "title"

    move-object/from16 v0, v21

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const-string v2, "screen"

    move-object/from16 v0, v19

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v2, "cell"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 1126
    .local v12, newFolderId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-eqz v2, :cond_5

    .line 1127
    add-int/lit8 v17, v17, 0x1

    .line 1128
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v14, p5

    .line 1129
    invoke-direct/range {v9 .. v14}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I

    move-result v2

    add-int v17, v17, v2

    goto/16 :goto_3

    .line 1116
    .end local v12           #newFolderId:J
    :cond_a
    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    .line 1118
    const/4 v2, -0x1

    move/from16 v0, v22

    if-eq v0, v2, :cond_9

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_4

    .line 1133
    .end local v21           #title:Ljava/lang/String;
    .end local v22           #titleResId:I
    :cond_b
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid tag <"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "> detected while parsing favorites at line "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "db"

    .prologue
    .line 1151
    const/4 v11, 0x0

    .line 1152
    .local v11, items:I
    const-string v0, "LauncherProvider"

    const-string v1, "loadAppOrderDefaults."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v6, 0x0

    .line 1156
    .local v6, cscFile:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 1157
    .local v5, isCSC:Z
    const/4 v2, 0x0

    .line 1158
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    .line 1160
    .local v12, resParser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v0, "/system/csc/default_application_order.xml"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v8, cscFileChk:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 1163
    new-instance v7, Ljava/io/FileReader;

    const-string v0, "/system/csc/default_application_order.xml"

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1165
    .end local v6           #cscFile:Ljava/io/FileReader;
    .local v7, cscFile:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    .line 1166
    .local v10, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1167
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1169
    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1170
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1172
    const/4 v5, 0x1

    move-object v6, v7

    .line 1180
    .end local v7           #cscFile:Ljava/io/FileReader;
    .end local v10           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    :goto_0
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    :try_start_2
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v11

    .line 1191
    if-eqz v6, :cond_0

    .line 1193
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1198
    .end local v8           #cscFileChk:Ljava/io/File;
    :cond_0
    :goto_1
    return v11

    .line 1174
    .restart local v8       #cscFileChk:Ljava/io/File;
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 1175
    const-string v0, "appOrder"

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1176
    move-object v2, v12

    goto :goto_0

    .line 1182
    .end local v8           #cscFileChk:Ljava/io/File;
    :catch_0
    move-exception v9

    .line 1183
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    :try_start_5
    const-string v0, "LauncherProvider"

    const-string v1, "Got exception parsing applications."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1191
    if-eqz v6, :cond_0

    .line 1193
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1194
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1185
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v9

    .line 1186
    .local v9, e:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v0, "LauncherProvider"

    const-string v1, "Got exception parsing applications."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1191
    if-eqz v6, :cond_0

    .line 1193
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 1194
    :catch_3
    move-exception v0

    goto :goto_1

    .line 1188
    .end local v9           #e:Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 1189
    .local v9, e:Landroid/content/res/Resources$NotFoundException;
    :goto_4
    :try_start_9
    const-string v0, "LauncherProvider"

    const-string v1, "Got exception parsing applications."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1191
    if-eqz v6, :cond_0

    .line 1193
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_1

    .line 1194
    :catch_5
    move-exception v0

    goto :goto_1

    .line 1191
    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v6, :cond_2

    .line 1193
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1194
    :cond_2
    :goto_6
    throw v0

    .restart local v8       #cscFileChk:Ljava/io/File;
    :catch_6
    move-exception v0

    goto :goto_1

    .end local v8           #cscFileChk:Ljava/io/File;
    :catch_7
    move-exception v1

    goto :goto_6

    .line 1191
    .end local v6           #cscFile:Ljava/io/FileReader;
    .restart local v7       #cscFile:Ljava/io/FileReader;
    .restart local v8       #cscFileChk:Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #cscFile:Ljava/io/FileReader;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    goto :goto_5

    .line 1188
    .end local v6           #cscFile:Ljava/io/FileReader;
    .restart local v7       #cscFile:Ljava/io/FileReader;
    :catch_8
    move-exception v9

    move-object v6, v7

    .end local v7           #cscFile:Ljava/io/FileReader;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    goto :goto_4

    .line 1185
    .end local v6           #cscFile:Ljava/io/FileReader;
    .restart local v7       #cscFile:Ljava/io/FileReader;
    :catch_9
    move-exception v9

    move-object v6, v7

    .end local v7           #cscFile:Ljava/io/FileReader;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    goto :goto_3

    .line 1182
    .end local v6           #cscFile:Ljava/io/FileReader;
    .restart local v7       #cscFile:Ljava/io/FileReader;
    :catch_a
    move-exception v9

    move-object v6, v7

    .end local v7           #cscFile:Ljava/io/FileReader;
    .restart local v6       #cscFile:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 21
    .parameter "db"
    .parameter "tableName"
    .parameter "hotseatOnly"

    .prologue
    .line 1384
    const/16 v17, 0x0

    .line 1385
    .local v17, items:I
    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFavorites table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hotseatOnly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const/4 v9, 0x0

    .line 1389
    .local v9, cscFile:Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 1390
    .local v8, isCSC:Z
    const/4 v4, 0x0

    .line 1391
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    .line 1393
    .local v19, resParser:Landroid/content/res/XmlResourceParser;
    const/4 v11, 0x0

    .line 1395
    .local v11, cscFileChk:Ljava/io/File;
    :try_start_0
    const-string v1, "favorites_easy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 1397
    .local v16, isEasyMode:Z
    if-eqz v16, :cond_4

    .line 1398
    new-instance v12, Ljava/io/File;

    const-string v1, "/system/csc/default_workspace_simple.xml"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v11           #cscFileChk:Ljava/io/File;
    .local v12, cscFileChk:Ljava/io/File;
    move-object v11, v12

    .line 1405
    .end local v12           #cscFileChk:Ljava/io/File;
    .restart local v11       #cscFileChk:Ljava/io/File;
    :goto_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_6

    .line 1408
    if-eqz v16, :cond_5

    .line 1409
    new-instance v10, Ljava/io/FileReader;

    const-string v1, "/system/csc/default_workspace_simple.xml"

    invoke-direct {v10, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .end local v9           #cscFile:Ljava/io/FileReader;
    .local v10, cscFile:Ljava/io/FileReader;
    move-object v9, v10

    .line 1414
    .end local v10           #cscFile:Ljava/io/FileReader;
    .restart local v9       #cscFile:Ljava/io/FileReader;
    :goto_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v15

    .line 1415
    .local v15, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 1416
    invoke-virtual {v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1418
    invoke-interface {v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1419
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 1421
    const/4 v8, 0x1

    .line 1447
    .end local v15           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 1450
    .local v13, depth:I
    :cond_0
    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v1, 0x3

    move/from16 v0, v20

    if-ne v0, v1, :cond_1

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v1

    if-le v1, v13, :cond_2

    :cond_1
    const/4 v1, 0x1

    move/from16 v0, v20

    if-eq v0, v1, :cond_2

    .line 1452
    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_a

    .line 1481
    :cond_2
    if-eqz v9, :cond_3

    .line 1483
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 1488
    .end local v13           #depth:I
    .end local v16           #isEasyMode:Z
    .end local v20           #type:I
    :cond_3
    :goto_4
    return v17

    .line 1400
    .restart local v16       #isEasyMode:Z
    :cond_4
    :try_start_2
    new-instance v12, Ljava/io/File;

    const-string v1, "/system/csc/default_workspace.xml"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v11           #cscFileChk:Ljava/io/File;
    .restart local v12       #cscFileChk:Ljava/io/File;
    move-object v11, v12

    .end local v12           #cscFileChk:Ljava/io/File;
    .restart local v11       #cscFileChk:Ljava/io/File;
    goto :goto_0

    .line 1411
    :cond_5
    new-instance v10, Ljava/io/FileReader;

    const-string v1, "/system/csc/default_workspace.xml"

    invoke-direct {v10, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .end local v9           #cscFile:Ljava/io/FileReader;
    .restart local v10       #cscFile:Ljava/io/FileReader;
    move-object v9, v10

    .end local v10           #cscFile:Ljava/io/FileReader;
    .restart local v9       #cscFile:Ljava/io/FileReader;
    goto :goto_1

    .line 1428
    :cond_6
    if-eqz v16, :cond_7

    .line 1429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .line 1442
    :goto_5
    const-string v1, "favorites"

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1443
    move-object/from16 v4, v19

    goto :goto_2

    .line 1431
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    goto :goto_5

    .line 1435
    :cond_8
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_9

    .line 1436
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    goto :goto_5

    .line 1438
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    goto :goto_5

    .line 1455
    .restart local v13       #depth:I
    .restart local v20       #type:I
    :cond_a
    const/4 v1, 0x2

    move/from16 v0, v20

    if-ne v0, v1, :cond_0

    .line 1459
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .line 1460
    .local v18, name:Ljava/lang/String;
    const-string v1, "home"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1461
    if-nez p3, :cond_0

    .line 1462
    const-wide/16 v5, -0x64

    const/16 v7, 0xf

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v1

    add-int v17, v17, v1

    goto/16 :goto_3

    .line 1464
    :cond_b
    const-string v1, "hotseat"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1465
    const-wide/16 v5, -0x65

    const/4 v7, 0x7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I

    move-result v1

    add-int v17, v17, v1

    goto/16 :goto_3

    .line 1468
    :cond_c
    const-string v1, "LauncherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tag <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> detected while parsing favorites at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_3

    .line 1472
    .end local v13           #depth:I
    .end local v16           #isEasyMode:Z
    .end local v18           #name:Ljava/lang/String;
    .end local v20           #type:I
    :catch_0
    move-exception v14

    .line 1473
    .local v14, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1481
    if-eqz v9, :cond_3

    .line 1483
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 1484
    :catch_1
    move-exception v1

    goto/16 :goto_4

    .line 1475
    .end local v14           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v14

    .line 1476
    .local v14, e:Ljava/io/IOException;
    :try_start_5
    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1481
    if-eqz v9, :cond_3

    .line 1483
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 1484
    :catch_3
    move-exception v1

    goto/16 :goto_4

    .line 1478
    .end local v14           #e:Ljava/io/IOException;
    :catch_4
    move-exception v14

    .line 1479
    .local v14, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_7
    const-string v1, "LauncherProvider"

    const-string v2, "Got exception parsing favorites."

    invoke-static {v1, v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1481
    if-eqz v9, :cond_3

    .line 1483
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_4

    .line 1484
    :catch_5
    move-exception v1

    goto/16 :goto_4

    .line 1481
    .end local v14           #e:Landroid/content/res/Resources$NotFoundException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_d

    .line 1483
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 1484
    :cond_d
    :goto_6
    throw v1

    .restart local v13       #depth:I
    .restart local v16       #isEasyMode:Z
    .restart local v20       #type:I
    :catch_6
    move-exception v1

    goto/16 :goto_4

    .end local v13           #depth:I
    .end local v16           #isEasyMode:Z
    .end local v20           #type:I
    :catch_7
    move-exception v2

    goto :goto_6
.end method

.method private loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I
    .locals 51
    .parameter "db"
    .parameter "tableName"
    .parameter "parser"
    .parameter "containerType"
    .parameter "allowedTags"
    .parameter "isCSC"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1215
    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFavoritesContainer. containerType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", allowedTags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    new-instance v9, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v9, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1217
    .local v9, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1219
    .local v6, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1221
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v37

    .line 1222
    .local v37, attrs:Landroid/util/AttributeSet;
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v45

    .line 1223
    .local v45, startDepth:I
    const/16 v40, 0x0

    .line 1226
    .local v40, items:I
    const/4 v10, 0x0

    .line 1227
    .local v10, pkgName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1228
    .local v11, className:Ljava/lang/String;
    const/16 v34, 0x0

    .line 1229
    .local v34, themeName:Ljava/lang/String;
    const/16 v49, 0x0

    .line 1230
    .local v49, x:Ljava/lang/String;
    const/16 v50, 0x0

    .line 1231
    .local v50, y:Ljava/lang/String;
    const/16 v17, 0x0

    .line 1232
    .local v17, uri:Ljava/lang/String;
    const/16 v43, 0x0

    .line 1233
    .local v43, spanX:Ljava/lang/String;
    const/16 v44, 0x0

    .line 1234
    .local v44, spanY:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1235
    .local v18, titleId:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1236
    .local v19, imgId:Ljava/lang/String;
    const/16 v39, 0x0

    .line 1238
    .local v39, isContextPage:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v48

    .local v48, type:I
    const/4 v3, 0x3

    move/from16 v0, v48

    if-ne v0, v3, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move/from16 v0, v45

    if-le v3, v0, :cond_2

    .line 1239
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, v48

    if-ne v0, v3, :cond_3

    .line 1373
    :cond_2
    return v40

    .line 1242
    :cond_3
    const/4 v3, 0x2

    move/from16 v0, v48

    if-ne v0, v3, :cond_0

    .line 1245
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v41

    .line 1246
    .local v41, name:Ljava/lang/String;
    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFavoritesContainer. Process tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const-string v42, ""

    .line 1251
    .local v42, screen:Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_6

    .line 1252
    const/4 v7, 0x0

    .line 1253
    .local v7, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1254
    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1255
    const/4 v3, 0x0

    const-string v4, "screen"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1256
    const/4 v3, 0x0

    const-string v4, "x"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 1257
    const/4 v3, 0x0

    const-string v4, "y"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1258
    const/4 v3, 0x0

    const-string v4, "isContextPage"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1268
    :goto_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_4

    .line 1269
    if-eqz v39, :cond_7

    const-string v3, "1"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1270
    const-string p2, "favorites_cp"

    .line 1275
    :cond_4
    :goto_2
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1276
    const-string v3, "container"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1277
    const-string v3, "screen"

    move-object/from16 v0, v42

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const-string v3, "cellX"

    move-object/from16 v0, v49

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v3, "cellY"

    move-object/from16 v0, v50

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_8

    const-string v3, "favorite"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 1282
    invoke-direct/range {v3 .. v11}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addHomeShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-ltz v3, :cond_5

    .line 1283
    add-int/lit8 v40, v40, 0x1

    .line 1369
    :cond_5
    :goto_3
    const/4 v3, 0x1

    move/from16 v0, p7

    if-eq v0, v3, :cond_0

    .line 1370
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 1261
    .end local v7           #a:Landroid/content/res/TypedArray;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    move-object/from16 v0, v37

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1262
    .restart local v7       #a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1263
    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 1264
    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 1265
    const/16 v3, 0xa

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v39

    goto :goto_1

    .line 1272
    :cond_7
    const-string p2, "favorites"

    goto :goto_2

    .line 1285
    :cond_8
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_a

    const-string v3, "shortcut"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1286
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_9

    .line 1287
    const/4 v3, 0x0

    const-string v4, "uri"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1288
    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1289
    const/4 v3, 0x0

    const-string v4, "icon"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_9
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v15, v6

    move-object/from16 v16, v7

    .line 1293
    invoke-direct/range {v12 .. v19}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v12, 0x0

    cmp-long v3, v3, v12

    if-ltz v3, :cond_5

    .line 1294
    add-int/lit8 v40, v40, 0x1

    goto :goto_3

    .line 1296
    :cond_a
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_b

    const-string v3, "search"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1298
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_3

    .line 1300
    :cond_b
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_c

    const-string v3, "clock"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1302
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_3

    .line 1304
    :cond_c
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_12

    const-string v3, "appwidget"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1305
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_11

    .line 1306
    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1307
    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1309
    if-eqz v43, :cond_d

    const-string v3, "null"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1310
    :cond_d
    const-string v43, "1"

    .line 1311
    :cond_e
    if-eqz v44, :cond_f

    const-string v3, "null"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1312
    :cond_f
    const-string v44, "1"

    .line 1319
    :cond_10
    :goto_4
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    invoke-direct/range {v20 .. v29}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1320
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_3

    .line 1315
    :cond_11
    const-string v43, "0"

    .line 1316
    const-string v44, "0"

    goto :goto_4

    .line 1322
    :cond_12
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_15

    const-string v3, "folder"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1323
    const/16 v46, 0x0

    .line 1324
    .local v46, title:Ljava/lang/String;
    const/16 v47, -0x1

    .line 1326
    .local v47, titleResId:I
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_14

    .line 1327
    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1335
    :cond_13
    :goto_5
    const-string v3, "title"

    move-object/from16 v0, v46

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v24

    .line 1337
    .local v24, folderId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v24, v3

    if-ltz v3, :cond_5

    .line 1338
    add-int/lit8 v40, v40, 0x1

    .line 1340
    and-int/lit8 v26, p6, -0xd

    move-object/from16 v20, p0

    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move/from16 v27, p7

    :try_start_0
    invoke-direct/range {v20 .. v27}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JIZ)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int v40, v40, v3

    goto/16 :goto_3

    .line 1329
    .end local v24           #folderId:J
    :cond_14
    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v47

    .line 1330
    const/4 v3, -0x1

    move/from16 v0, v47

    if-eq v0, v3, :cond_13

    .line 1331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v46

    goto :goto_5

    .line 1342
    .restart local v24       #folderId:J
    :catch_0
    move-exception v38

    .line 1343
    .local v38, e:Ljava/io/IOException;
    const-string v3, "LauncherProvider"

    const-string v4, "Failed to load favorites"

    move-object/from16 v0, v38

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1347
    .end local v24           #folderId:J
    .end local v38           #e:Ljava/io/IOException;
    .end local v46           #title:Ljava/lang/String;
    .end local v47           #titleResId:I
    :cond_15
    and-int/lit8 v3, p6, 0x8

    if-eqz v3, :cond_1b

    const-string v3, "sactivitywidget"

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1348
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_1a

    .line 1349
    const/4 v3, 0x0

    const-string v4, "themeName"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1350
    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1351
    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1353
    if-eqz v43, :cond_16

    const-string v3, "null"

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1354
    :cond_16
    const-string v43, "1"

    .line 1355
    :cond_17
    if-eqz v44, :cond_18

    const-string v3, "null"

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1356
    :cond_18
    const-string v44, "1"

    .line 1363
    :cond_19
    :goto_6
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move-object/from16 v26, p0

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    invoke-direct/range {v26 .. v36}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSamsungActivityWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1364
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_3

    .line 1359
    :cond_1a
    const-string v43, "0"

    .line 1360
    const-string v44, "0"

    .line 1361
    const-string v34, ""

    goto :goto_6

    .line 1367
    :cond_1b
    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid tag <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> detected while parsing favorites at line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    .line 805
    const-string v11, "LauncherProvider"

    const-string v12, "normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 808
    const/4 v1, 0x0

    .line 809
    .local v1, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 811
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    const/4 v9, 0x0

    .line 812
    .local v9, logged:Z
    :try_start_0
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 815
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 818
    if-eqz v1, :cond_7

    if-eqz v10, :cond_7

    .line 819
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 820
    .local v8, idIndex:I
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 822
    .local v5, iconIndex:I
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 823
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 824
    .local v6, id:J
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 826
    .local v2, data:[B
    const/4 v11, 0x0

    :try_start_1
    array-length v12, v2

    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 829
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 830
    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 831
    invoke-static {v0}, Lcom/android/launcher2/HomeItem;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 832
    if-eqz v2, :cond_1

    .line 833
    const/4 v11, 0x2

    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 834
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 836
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 838
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 839
    .local v3, e:Ljava/lang/Exception;
    if-nez v9, :cond_2

    .line 840
    :try_start_2
    const-string v11, "LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 842
    :cond_2
    const-string v11, "LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Also failed normalizing icon "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 851
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconIndex:I
    .end local v6           #id:J
    .end local v8           #idIndex:I
    :catch_1
    move-exception v4

    .line 852
    .local v4, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v11, "LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 854
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 855
    if-eqz v10, :cond_3

    .line 856
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 858
    :cond_3
    if-eqz v1, :cond_4

    .line 859
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 862
    .end local v4           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_2
    return-void

    .line 847
    .restart local v5       #iconIndex:I
    .restart local v8       #idIndex:I
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 854
    .end local v5           #iconIndex:I
    .end local v8           #idIndex:I
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 855
    if-eqz v10, :cond_6

    .line 856
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 858
    :cond_6
    if-eqz v1, :cond_4

    .line 859
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 849
    :cond_7
    :try_start_5
    const-string v11, "LauncherProvider"

    const-string v12, "Failed to create cursor while normalizing icons"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 854
    :catchall_0
    move-exception v11

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 855
    if-eqz v10, :cond_8

    .line 856
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 858
    :cond_8
    if-eqz v1, :cond_9

    .line 859
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 446
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 447
    return-void
.end method

.method private updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 24
    .parameter "db"

    .prologue
    .line 735
    const/4 v11, 0x0

    .line 736
    .local v11, c:Landroid/database/Cursor;
    const-string v3, "itemType"

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput v7, v4, v5

    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v6

    .line 739
    .local v6, selectWhere:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 742
    :try_start_0
    const-string v4, "favorites"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v3

    const/4 v3, 0x1

    const-string v7, "intent"

    aput-object v7, v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 745
    if-eqz v11, :cond_7

    .line 746
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found upgrade cursor count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 749
    .local v23, values:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 750
    .local v17, idIndex:I
    const-string v3, "intent"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 752
    .local v19, intentIndex:I
    :cond_1
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 753
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 754
    .local v15, favoriteId:J
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 755
    .local v20, intentUri:Ljava/lang/String;
    if-eqz v20, :cond_1

    .line 757
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 758
    .local v18, intent:Landroid/content/Intent;
    const-string v3, "Home"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v22

    .line 760
    .local v22, uri:Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 761
    .local v12, data:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "content://contacts/people/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "content://com.android.contacts/contacts/lookup/"

    invoke-virtual {v12, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    :cond_2
    new-instance v18, Landroid/content/Intent;

    .end local v18           #intent:Landroid/content/Intent;
    const-string v3, "com.android.contacts.action.QUICK_CONTACT"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 766
    .restart local v18       #intent:Landroid/content/Intent;
    const/high16 v3, 0x1420

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 770
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 771
    const-string v3, "mode"

    const/4 v4, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    const-string v4, "exclude_mimes"

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    .line 775
    const-string v3, "intent"

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, v15

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 778
    .local v21, updateWhere:Ljava/lang/String;
    const-string v3, "favorites"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 780
    .end local v12           #data:Ljava/lang/String;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v21           #updateWhere:Ljava/lang/String;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 781
    .local v14, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 791
    .end local v14           #ex:Ljava/lang/RuntimeException;
    .end local v15           #favoriteId:J
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v20           #intentUri:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v14

    .line 792
    .local v14, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "LauncherProvider"

    const-string v4, "Problem while upgrading contacts"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 793
    const/4 v3, 0x0

    .line 795
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 796
    if-eqz v11, :cond_3

    .line 797
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 801
    .end local v14           #ex:Landroid/database/SQLException;
    :cond_3
    :goto_1
    return v3

    .line 782
    .restart local v15       #favoriteId:J
    .restart local v17       #idIndex:I
    .restart local v19       #intentIndex:I
    .restart local v20       #intentUri:Ljava/lang/String;
    .restart local v23       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v13

    .line 783
    .local v13, e:Ljava/net/URISyntaxException;
    :try_start_4
    const-string v3, "LauncherProvider"

    const-string v4, "Problem upgrading shortcut"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 795
    .end local v13           #e:Ljava/net/URISyntaxException;
    .end local v15           #favoriteId:J
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v20           #intentUri:Ljava/lang/String;
    .end local v23           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 796
    if-eqz v11, :cond_4

    .line 797
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 787
    .restart local v17       #idIndex:I
    .restart local v19       #intentIndex:I
    .restart local v23       #values:Landroid/content/ContentValues;
    :cond_5
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1

    .line 795
    .end local v17           #idIndex:I
    .end local v19           #intentIndex:I
    .end local v23           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 796
    if-eqz v11, :cond_6

    .line 797
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 801
    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    .line 789
    :cond_7
    :try_start_6
    const-string v3, "LauncherProvider"

    const-string v4, "Failed to create cursor for updateContactsShortcuts"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public generateNewAppOrderId()J
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: mMaxAppOrderId was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewFavoritesId()J
    .locals 6

    .prologue
    .line 866
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v4, :cond_0

    .line 867
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: mMaxFavoriteId was not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 870
    :cond_0
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_2

    .line 871
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteCPId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 872
    .local v0, CPid:J
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 874
    .local v2, id:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 876
    .end local v0           #CPid:J
    .end local v2           #id:J
    :goto_0
    return-wide v0

    .restart local v0       #CPid:J
    .restart local v2       #id:J
    :cond_1
    move-wide v0, v2

    .line 874
    goto :goto_0

    .line 876
    .end local v0           #CPid:J
    .end local v2           #id:J
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const-wide/16 v3, 0x0

    .line 451
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LauncherProvider"

    const-string v2, "creating new launcher database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 460
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 462
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 463
    const-string v1, "favorites"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 464
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_2

    .line 465
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteCPId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 466
    const-string v1, "favorites_cp"

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 474
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 476
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 478
    const-string v1, "favorites"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 480
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 481
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x3

    .line 631
    invoke-static {}, Lcom/android/launcher2/LauncherProvider;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "LauncherProvider"

    const-string v3, "onUpgrade triggered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    move v1, p2

    .line 634
    .local v1, version:I
    if-ge v1, v4, :cond_1

    .line 636
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 639
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    const/4 v1, 0x3

    .line 647
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 651
    :goto_0
    if-ne v1, v4, :cond_1

    .line 652
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 656
    :cond_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 657
    const/4 v1, 0x4

    .line 668
    :cond_2
    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    .line 670
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 672
    :try_start_1
    const-string v2, "UPDATE favorites SET screen=(screen + 1);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 678
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 682
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->updateContactsShortcuts(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 683
    const/4 v1, 0x6

    .line 687
    :cond_3
    const/4 v2, 0x7

    if-ge v1, v2, :cond_4

    .line 689
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 690
    const/4 v1, 0x7

    .line 693
    :cond_4
    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    .line 697
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 698
    const/16 v1, 0x8

    .line 701
    :cond_5
    if-ge v1, v5, :cond_7

    .line 704
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v2, :cond_6

    .line 705
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "favorites"

    invoke-direct {p0, p1, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 718
    :cond_6
    const-string v2, "favorites"

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 719
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 720
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 721
    const/16 v1, 0x9

    .line 724
    :cond_7
    if-eq v1, v5, :cond_8

    .line 725
    const-string v2, "LauncherProvider"

    const-string v3, "Destroying all old data."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 727
    const-string v2, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 728
    const-string v2, "DROP TABLE IF EXISTS favorites_normal"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 729
    const-string v2, "DROP TABLE IF EXISTS favorites_easy"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 732
    :cond_8
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 645
    .local v0, ex:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 674
    :catch_1
    move-exception v0

    .line 676
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_3
    const-string v2, "LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 678
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method switchFavoritesIfNecessary(I)Z
    .locals 1
    .parameter "easyModeSwitch"

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 948
    .local v0, changed:Z
    return v0
.end method
