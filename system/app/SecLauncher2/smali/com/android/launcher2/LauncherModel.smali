.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$15;,
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final DEBUG_LOADERS:Z = true

.field private static final ITEMS_CHUNK:I = 0x6

.field private static final TAG:Ljava/lang/String; = "Launcher.Model"

.field public static UseLauncherHighPriority:Z

.field private static final sAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sCellCountX:I

.field private static sCellCountY:I

.field private static final sDbIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final sHomeFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHomeItemIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHomeItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsCPFavorite:Z

.field private static final sSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SamsungAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private volatile mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mAppsCanBeOnExternalStorage:Z

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private volatile mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConfigMccWhenLoaded:I

.field private volatile mConfigMncWhenLoaded:I

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private final mHomeLoader:Lcom/android/launcher2/HomeLoader;

.field private volatile mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private volatile mLocaleWhenLoaded:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mRefreshRequired:Z

.field private volatile mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "launcher-loader"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 93
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 97
    sput-boolean v2, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungAppWidgets:Ljava/util/ArrayList;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    .line 166
    sput-boolean v1, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V
    .locals 2
    .parameter "app"
    .parameter "pkgResCache"

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 89
    new-instance v0, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 191
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 192
    new-instance v0, Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1}, Lcom/android/launcher2/BadgeCache;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 193
    new-instance v0, Lcom/android/launcher2/HomeLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/HomeLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    .line 194
    new-instance v0, Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher2/MenuAppLoader;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    .line 195
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 196
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 197
    return-void

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/LauncherModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->setLocaleLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p9}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher2/LauncherModel;Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/PkgResCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/BadgeCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    return p1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 16
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 733
    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    .line 734
    move/from16 v0, p4

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 735
    move/from16 v0, p5

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 736
    move/from16 v0, p6

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 739
    const-wide/16 v12, -0x65

    cmp-long v12, p2, v12

    if-nez v12, :cond_0

    if-gez p4, :cond_0

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/android/launcher2/Launcher;

    if-eqz v12, :cond_0

    move-object/from16 v12, p0

    .line 741
    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v12

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 742
    const/4 v12, -0x1

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 743
    const/4 v12, -0x1

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 746
    :cond_0
    sget-boolean v12, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/android/launcher2/Launcher;

    if-eqz v12, :cond_3

    move-object/from16 v12, p0

    .line 747
    check-cast v12, Lcom/android/launcher2/Launcher;

    iget-object v12, v12, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v12}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    .line 748
    .local v11, ws:Lcom/android/launcher2/Workspace;
    const/4 v4, 0x0

    .line 750
    .local v4, cl:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v14, -0x64

    cmp-long v12, v12, v14

    if-nez v12, :cond_6

    .line 751
    move/from16 v0, p4

    invoke-virtual {v11, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 752
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    if-nez v4, :cond_2

    .line 846
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v11           #ws:Lcom/android/launcher2/Workspace;
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 755
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v11       #ws:Lcom/android/launcher2/Workspace;
    .restart local p0
    :cond_2
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x0

    :goto_1
    sput-boolean v12, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 756
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    if-eqz v12, :cond_3

    .line 757
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v12

    move-object/from16 v0, p1

    iput v12, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 758
    const/4 v12, 0x1

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 776
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v11           #ws:Lcom/android/launcher2/Workspace;
    :cond_3
    :goto_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 777
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 778
    .local v5, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 780
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    .line 781
    .local v3, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v12

    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 782
    const-string v12, "_id"

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 783
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12, v13}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 785
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v12, v13, :cond_4

    .line 786
    sget-object v13, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v12, p1

    check-cast v12, Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_4
    new-instance v8, Lcom/android/launcher2/LauncherModel$8;

    move/from16 v0, p7

    move-object/from16 v1, p1

    invoke-direct {v8, v5, v0, v10, v1}, Lcom/android/launcher2/LauncherModel$8;-><init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/android/launcher2/HomeItem;)V

    .line 825
    .local v8, r:Ljava/lang/Runnable;
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    if-ne v12, v13, :cond_8

    .line 826
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 831
    :goto_3
    sget-boolean v12, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    instance-of v12, v0, Lcom/android/launcher2/Launcher;

    if-eqz v12, :cond_1

    .line 832
    check-cast p0, Lcom/android/launcher2/Launcher;

    .end local p0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 834
    .local v7, hf:Lcom/android/launcher2/HomeFragment;
    new-instance v9, Lcom/android/launcher2/LauncherModel$9;

    invoke-direct {v9, v7}, Lcom/android/launcher2/LauncherModel$9;-><init>(Lcom/android/launcher2/HomeFragment;)V

    .line 842
    .local v9, r2:Ljava/lang/Runnable;
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v12}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v13

    if-ne v12, v13, :cond_9

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 755
    .end local v3           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v5           #cr:Landroid/content/ContentResolver;
    .end local v7           #hf:Lcom/android/launcher2/HomeFragment;
    .end local v8           #r:Ljava/lang/Runnable;
    .end local v9           #r2:Ljava/lang/Runnable;
    .end local v10           #values:Landroid/content/ContentValues;
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v11       #ws:Lcom/android/launcher2/Workspace;
    .restart local p0
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 760
    :cond_6
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v14, -0x65

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    .line 763
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeFolderItem;

    .line 764
    .local v6, folderItem:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v6, :cond_3

    .line 765
    iget v12, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 766
    .restart local v4       #cl:Lcom/android/launcher2/CellLayout;
    if-eqz v4, :cond_1

    .line 768
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x0

    :goto_4
    sput-boolean v12, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 769
    sget-boolean v12, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iput-boolean v12, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    goto/16 :goto_2

    .line 768
    :cond_7
    const/4 v12, 0x1

    goto :goto_4

    .line 828
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v6           #folderItem:Lcom/android/launcher2/HomeFolderItem;
    .end local v11           #ws:Lcom/android/launcher2/Workspace;
    .restart local v3       #app:Lcom/android/launcher2/LauncherApplication;
    .restart local v5       #cr:Landroid/content/ContentResolver;
    .restart local v8       #r:Ljava/lang/Runnable;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_8
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v12, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 843
    .end local p0
    .restart local v7       #hf:Lcom/android/launcher2/HomeFragment;
    .restart local v9       #r2:Ljava/lang/Runnable;
    :cond_9
    sget-object v12, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v12, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 275
    iget-wide v0, p1, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 277
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 9
    .parameter "context"
    .parameter "item"

    .prologue
    .line 955
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 957
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v5, p1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    sput-boolean v5, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 958
    iget-wide v5, p1, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v7, 0x0

    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {v5, v6, v7, v8}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v4

    .line 960
    .local v4, uriToDelete:Landroid/net/Uri;
    iget-object v5, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_0

    .line 961
    sget-object v5, Lcom/android/launcher2/HomeFragment;->sFolders:Ljava/util/HashMap;

    iget-wide v6, p1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    :cond_0
    const/4 v1, 0x0

    .line 965
    .local v1, hf:Lcom/android/launcher2/HomeFragment;
    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_1

    instance-of v5, p0, Lcom/android/launcher2/Launcher;

    if-eqz v5, :cond_1

    .line 966
    check-cast p0, Lcom/android/launcher2/Launcher;

    .end local p0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 968
    :cond_1
    move-object v2, v1

    .line 970
    .local v2, hf_cp:Lcom/android/launcher2/HomeFragment;
    new-instance v3, Lcom/android/launcher2/LauncherModel$11;

    invoke-direct {v3, p1, v0, v4, v2}, Lcom/android/launcher2/LauncherModel$11;-><init>(Lcom/android/launcher2/HomeItem;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/launcher2/HomeFragment;)V

    .line 1010
    .local v3, r:Ljava/lang/Runnable;
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1011
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_2
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 6
    .parameter "context"
    .parameter
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 882
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 883
    .local v1, hf:Lcom/android/launcher2/HomeFragment;
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_0

    instance-of v4, p0, Lcom/android/launcher2/Launcher;

    if-eqz v4, :cond_0

    .line 884
    check-cast p0, Lcom/android/launcher2/Launcher;

    .end local p0
    iget-object v1, p0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 886
    :cond_0
    move-object v2, v1

    .line 888
    .local v2, hf_cp:Lcom/android/launcher2/HomeFragment;
    new-instance v3, Lcom/android/launcher2/LauncherModel$10;

    invoke-direct {v3, p1, v0, v2, p2}, Lcom/android/launcher2/LauncherModel$10;-><init>(Ljava/util/List;Landroid/content/ContentResolver;Lcom/android/launcher2/HomeFragment;Z)V

    .line 941
    .local v3, r:Ljava/lang/Runnable;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 942
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 946
    :goto_0
    return-void

    .line 944
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 2002
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2003
    return-void
.end method

.method private static findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    .prologue
    .line 2428
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    .line 2429
    .local v0, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    if-nez v0, :cond_0

    .line 2431
    new-instance v0, Lcom/android/launcher2/HomeFolderItem;

    .end local v0           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 2432
    .restart local v0       #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2434
    :cond_0
    return-object v0
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 858
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 862
    sget v0, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(JIIIII)I
    .locals 2
    .parameter "container"
    .parameter "screen"
    .parameter "localCellX"
    .parameter "localCellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 853
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p4, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"
    .parameter "context"

    .prologue
    .line 2309
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 2311
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2314
    :goto_0
    return-object v2

    .line 2313
    :catch_0
    move-exception v1

    .line 2314
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;
    .locals 17
    .parameter "context"
    .parameter "container"
    .parameter "screen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v13, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 650
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "cellX"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "cellY"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "spanX"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "spanY"

    aput-object v6, v4, v5

    const-string v5, "container=? and screen=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 660
    .local v8, c:Landroid/database/Cursor;
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 661
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 662
    .local v10, cellYIndex:I
    const-string v3, "spanX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 663
    .local v14, spanXIndex:I
    const-string v3, "spanY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 666
    .local v15, spanYIndex:I
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 667
    new-instance v12, Lcom/android/launcher2/HomeItem;

    invoke-direct {v12}, Lcom/android/launcher2/HomeItem;-><init>()V

    .line 668
    .local v12, item:Lcom/android/launcher2/HomeItem;
    move-wide/from16 v0, p1

    iput-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    .line 669
    move/from16 v0, p3

    iput v0, v12, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 670
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 671
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 672
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 673
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 674
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    .end local v12           #item:Lcom/android/launcher2/HomeItem;
    :catch_0
    move-exception v11

    .line 677
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 682
    .end local v11           #e:Ljava/lang/Exception;
    :goto_1
    return-object v13

    .line 679
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    .locals 5
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v1, 0x0

    .line 2177
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2178
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 2218
    :cond_0
    :goto_0
    return-object v1

    .line 2184
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 2185
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 2188
    new-instance v1, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v1, v4}, Lcom/android/launcher2/HomeShortcutItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 2189
    .local v1, info:Lcom/android/launcher2/HomeShortcutItem;
    new-instance v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 2190
    .local v3, titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v4, v3, v2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 2191
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2192
    iget-object v4, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2194
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 2195
    if-eqz p4, :cond_2

    .line 2196
    invoke-direct {p0, p4, p5, p3}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2200
    :cond_2
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 2201
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2202
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2207
    :cond_3
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 2208
    if-eqz p4, :cond_4

    .line 2209
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2213
    :cond_4
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 2214
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2217
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v4

    iput v4, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    goto :goto_0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 14
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"
    .parameter "manager"
    .parameter "intent"

    .prologue
    .line 2228
    const/4 v3, 0x0

    .line 2229
    .local v3, icon:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 2234
    .local v11, title:Ljava/lang/String;
    invoke-virtual/range {p9 .. p9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2235
    .local v2, cn:Landroid/content/ComponentName;
    if-eqz v2, :cond_2

    .line 2236
    const/4 v12, 0x0

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 2237
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v8, :cond_0

    .line 2238
    const/4 v6, 0x0

    .line 2299
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v6

    .line 2244
    .restart local v8       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.android.email"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "com.android.settings.SHORTCUT"

    move-object/from16 v0, p9

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "android.intent.category.LAUNCHER"

    move-object/from16 v0, p9

    invoke-virtual {v0, v12}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2247
    :cond_1
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12, v8}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v11

    .line 2250
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v6, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v6}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2252
    .local v6, info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez v11, :cond_3

    .line 2253
    move/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2255
    :cond_3
    iput-object v11, v6, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2257
    move/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2258
    .local v4, iconType:I
    packed-switch v4, :pswitch_data_0

    .line 2293
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2294
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    .line 2295
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2298
    :cond_4
    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2260
    :pswitch_0
    move/from16 v0, p4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2261
    .local v7, packageName:Ljava/lang/String;
    move/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2262
    .local v9, resourceName:Ljava/lang/String;
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2265
    :try_start_0
    move-object/from16 v0, p8

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 2266
    .local v10, resources:Landroid/content/res/Resources;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2267
    .local v5, id:I
    if-eqz v5, :cond_5

    .line 2268
    iget-object v12, p0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v12, v10, v5, v7}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2273
    .end local v5           #id:I
    .end local v10           #resources:Landroid/content/res/Resources;
    :cond_5
    :goto_2
    if-nez v3, :cond_6

    .line 2274
    move/from16 v0, p6

    move-object/from16 v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2277
    :cond_6
    if-nez v3, :cond_4

    .line 2278
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2279
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto :goto_1

    .line 2283
    .end local v7           #packageName:Ljava/lang/String;
    .end local v9           #resourceName:Ljava/lang/String;
    :pswitch_1
    move/from16 v0, p6

    move-object/from16 v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2284
    if-nez v3, :cond_7

    .line 2285
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2286
    const/4 v12, 0x0

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2287
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto :goto_1

    .line 2289
    :cond_7
    const/4 v12, 0x1

    iput-boolean v12, v6, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    goto :goto_1

    .line 2269
    .restart local v7       #packageName:Ljava/lang/String;
    .restart local v9       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_2

    .line 2258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasLocaleChangedLocked()Z
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 234
    .local v0, config:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V
    .locals 6
    .parameter "provider"
    .parameter "moveToCP"
    .parameter "itemId"
    .parameter "isFolderItem"

    .prologue
    .line 453
    new-instance v0, Lcom/android/launcher2/LauncherModel$4;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel$4;-><init>(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    .line 459
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v3, -0x1

    .line 469
    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 470
    iput p4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 471
    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 472
    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 476
    const-wide/16 v1, -0x65

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    if-gez p4, :cond_0

    instance-of v1, p0, Lcom/android/launcher2/Launcher;

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 478
    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 479
    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 480
    iput v3, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 483
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 485
    const-string v1, "cellX"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string v1, "cellY"

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    const-string v1, "screen"

    iget v2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    const-string v1, "moveItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public static moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    .local v4, newPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 531
    .local v2, item:Lcom/android/launcher2/HomeItem;
    new-instance v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    invoke-direct {v3}, Lcom/android/launcher2/LauncherSettings$FavoritePos;-><init>()V

    .line 532
    .local v3, itemPos:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    iget-wide v6, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    .line 533
    iget-wide v6, v2, Lcom/android/launcher2/HomeItem;->container:J

    iput-wide v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    .line 534
    iget v6, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    .line 535
    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellX:I

    .line 536
    iget v6, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v6, v3, Lcom/android/launcher2/LauncherSettings$FavoritePos;->cellY:I

    .line 537
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 539
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    .end local v3           #itemPos:Lcom/android/launcher2/LauncherSettings$FavoritePos;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 540
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    new-instance v5, Lcom/android/launcher2/LauncherModel$6;

    invoke-direct {v5, v0, v4}, Lcom/android/launcher2/LauncherModel$6;-><init>(Lcom/android/launcher2/LauncherApplication;Ljava/util/ArrayList;)V

    .line 560
    .local v5, r:Ljava/lang/Runnable;
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 561
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 564
    :goto_1
    return-void

    .line 563
    :cond_1
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    .locals 2
    .parameter
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[B>;",
            "Lcom/android/launcher2/HomeShortcutItem;",
            "Landroid/database/Cursor;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Object;[B>;"
    const/4 v0, 0x0

    .line 2385
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v1, :cond_1

    .line 2398
    :cond_0
    :goto_0
    return v0

    .line 2394
    :cond_1
    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    if-nez v1, :cond_0

    .line 2395
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;IIII)V
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 571
    iput p4, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 572
    iput p5, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 573
    iput p2, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 574
    iput p3, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 576
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 577
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "container"

    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    const-string v1, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 579
    const-string v1, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v1, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    const-string v1, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    const-string v1, "resizeItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method private setLocaleLocked()V
    .locals 2

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 246
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMccWhenLoaded:I

    .line 247
    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/launcher2/LauncherModel;->mConfigMncWhenLoaded:I

    .line 248
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLocaleWhenLoaded:Ljava/lang/String;

    .line 249
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 632
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "title=? and intent=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 635
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 636
    .local v7, result:Z
    if-eqz v6, :cond_0

    .line 637
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 638
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 640
    :cond_0
    return v7
.end method

.method private stopLoaderLocked()Z
    .locals 3

    .prologue
    .line 1168
    const/4 v0, 0x0

    .line 1169
    .local v0, isLaunching:Z
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1170
    .local v1, oldTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1171
    if-eqz v1, :cond_1

    .line 1172
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    const/4 v0, 0x1

    .line 1175
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 1177
    :cond_1
    return v0
.end method

.method private toggleEasyMode(IZ)V
    .locals 3
    .parameter "easyModeSwitch"
    .parameter "fromSettings"

    .prologue
    .line 2006
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleEasyMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fromSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/LauncherModel$12;-><init>(Lcom/android/launcher2/LauncherModel;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2036
    return-void
.end method

.method private unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    .local v0, workspaceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 266
    return-object v0
.end method

.method static updateAppItems(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/LauncherSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v0

    .line 508
    .local v0, provider:Lcom/android/launcher2/LauncherProvider;
    new-instance v1, Lcom/android/launcher2/LauncherModel$5;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher2/LauncherModel$5;-><init>(Lcom/android/launcher2/LauncherProvider;Ljava/util/List;)V

    .line 514
    .local v1, r:Ljava/lang/Runnable;
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 515
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_0
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)V
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 595
    const-string v4, "container"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot change container field for item id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 597
    .local v1, msg:Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 599
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {p1, p2, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v3

    .line 600
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 602
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/launcher2/LauncherModel$7;

    invoke-direct {v2, v0, v3, p3}, Lcom/android/launcher2/LauncherModel$7;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 610
    .local v2, r:Ljava/lang/Runnable;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 611
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 614
    :goto_0
    return-void

    .line 613
    :cond_1
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V
    .locals 3
    .parameter "context"
    .parameter "item"

    .prologue
    .line 620
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 621
    .local v0, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 622
    iget v1, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/launcher2/HomeItem;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 623
    const-string v1, "updateItemInDatabase"

    invoke-static {p0, v0, p1, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method private static updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "values"
    .parameter "item"
    .parameter "callingFunction"

    .prologue
    .line 286
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 288
    .local v8, itemId:J
    const/4 v13, 0x0

    .line 289
    .local v13, hf:Lcom/android/launcher2/HomeFragment;
    sget-boolean v6, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    instance-of v6, v0, Lcom/android/launcher2/Launcher;

    if-eqz v6, :cond_4

    .line 290
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] updateItemInDatabaseHelper START : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v6, p0

    .line 292
    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v13, v6, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 293
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    .line 294
    .local v18, ws:Lcom/android/launcher2/Workspace;
    const/4 v12, 0x0

    .line 295
    .local v12, cl:Lcom/android/launcher2/CellLayout;
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 297
    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v16, v6, -0x1

    .line 299
    .local v16, normalPageCount:I
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-nez v6, :cond_0

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, -0x65

    cmp-long v6, v6, v19

    if-eqz v6, :cond_0

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, 0x0

    cmp-long v6, v6, v19

    if-lez v6, :cond_5

    .line 300
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 301
    .restart local v12       #cl:Lcom/android/launcher2/CellLayout;
    const-string v6, "Launcher.Model"

    const-string v7, "[CP] CASE 1 - isSwapItemHotseatAndCP or CONTAINER_HOTSEAT or Folder\'s Item"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", CLType : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] isContextualPageItem : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", Screen : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", container : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v6, "moveItemInDatabase"

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 320
    const/4 v15, 0x0

    .line 321
    .local v15, isFolderItem:Z
    const/4 v14, 0x0

    .line 323
    .local v14, isCloneToCP:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v17

    .line 325
    .local v17, provider:Lcom/android/launcher2/LauncherProvider;
    if-eqz v12, :cond_3

    .line 327
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_1

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_2

    :cond_1
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, -0x65

    cmp-long v6, v6, v19

    if-nez v6, :cond_b

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_b

    .line 330
    :cond_2
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 331
    const/4 v14, 0x0

    .line 332
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 335
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_9

    .line 336
    const/4 v15, 0x1

    .line 383
    :goto_1
    if-eqz v15, :cond_3

    .line 384
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v10, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v14, v6, v7, v10}, Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    .line 398
    .end local v14           #isCloneToCP:Z
    .end local v15           #isFolderItem:Z
    .end local v17           #provider:Lcom/android/launcher2/LauncherProvider;
    :cond_3
    :goto_2
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 399
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    .end local v16           #normalPageCount:I
    .end local v18           #ws:Lcom/android/launcher2/Workspace;
    :cond_4
    const/4 v6, 0x0

    sget-boolean v7, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    invoke-static {v8, v9, v6, v7}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v5

    .line 404
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 406
    .local v4, cr:Landroid/content/ContentResolver;
    move-object v11, v13

    .line 407
    .local v11, hf_cp:Lcom/android/launcher2/HomeFragment;
    new-instance v3, Lcom/android/launcher2/LauncherModel$3;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-direct/range {v3 .. v11}, Lcom/android/launcher2/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher2/HomeItem;JLjava/lang/String;Lcom/android/launcher2/HomeFragment;)V

    .line 445
    .local v3, r:Ljava/lang/Runnable;
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    if-ne v6, v7, :cond_14

    .line 446
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 450
    :goto_3
    return-void

    .line 303
    .end local v3           #r:Ljava/lang/Runnable;
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v11           #hf_cp:Lcom/android/launcher2/HomeFragment;
    .restart local v12       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v16       #normalPageCount:I
    .restart local v18       #ws:Lcom/android/launcher2/Workspace;
    :cond_5
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_6

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v16

    if-gt v6, v0, :cond_7

    :cond_6
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-nez v6, :cond_8

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_8

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, -0x64

    cmp-long v6, v6, v19

    if-nez v6, :cond_8

    .line 306
    :cond_7
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v6

    move-object/from16 v0, p2

    iput v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 307
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v6

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v12

    .line 308
    const-string v6, "Launcher.Model"

    const-string v7, "[CP] CASE 2 - isContextualPage and mScreen is more then normalPageCount"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 311
    :cond_8
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 312
    .restart local v12       #cl:Lcom/android/launcher2/CellLayout;
    const-string v6, "Launcher.Model"

    const-string v7, "[CP] CASE 3 - others"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 338
    .restart local v14       #isCloneToCP:Z
    .restart local v15       #isFolderItem:Z
    .restart local v17       #provider:Lcom/android/launcher2/LauncherProvider;
    :cond_9
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-static {v0, v6, v1, v2, v7}, Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    .line 340
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_a

    .line 341
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    .line 342
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from CP to Hotseat - item : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 344
    :cond_a
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from CP to normal - item : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 347
    :cond_b
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-nez v6, :cond_c

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-eqz v6, :cond_c

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v19, -0x65

    cmp-long v6, v6, v19

    if-nez v6, :cond_d

    :cond_c
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_11

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_11

    .line 350
    :cond_d
    const/4 v14, 0x1

    .line 351
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 352
    const/4 v6, 0x1

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 354
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-nez v6, :cond_e

    .line 355
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    move-object/from16 v0, p2

    iput v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 356
    :cond_e
    const-string v6, "screen"

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_f

    .line 359
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 361
    :cond_f
    const/4 v6, 0x1

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-static {v0, v6, v1, v2, v7}, Lcom/android/launcher2/LauncherModel;->moveItemInContextualPage(Lcom/android/launcher2/LauncherProvider;ZJZ)V

    .line 363
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v6, :cond_10

    .line 364
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    .line 365
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from Hotseat to CP - item : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 367
    :cond_10
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from normal to CP - item : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 371
    :cond_11
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_12

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-eqz v6, :cond_12

    .line 373
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    move-object/from16 v0, p2

    iput v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 374
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 375
    const-string v6, "screen"

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from CP to CP - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 380
    :cond_12
    const-string v6, "Launcher.Model"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[CP] item move : from normal to normal - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 391
    .end local v14           #isCloneToCP:Z
    .end local v15           #isFolderItem:Z
    .end local v17           #provider:Lcom/android/launcher2/LauncherProvider;
    :cond_13
    if-eqz v12, :cond_3

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v6, :cond_3

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    if-eqz v6, :cond_3

    .line 392
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v6

    move-object/from16 v0, p2

    iput v6, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 393
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/launcher2/LauncherModel;->sIsCPFavorite:Z

    .line 394
    const-string v6, "screen"

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 448
    .end local v12           #cl:Lcom/android/launcher2/CellLayout;
    .end local v16           #normalPageCount:I
    .end local v18           #ws:Lcom/android/launcher2/Workspace;
    .restart local v3       #r:Ljava/lang/Runnable;
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v11       #hf_cp:Lcom/android/launcher2/HomeFragment;
    :cond_14
    sget-object v6, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method private updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 2402
    const/4 v2, 0x0

    .line 2404
    .local v2, needSave:Z
    if-eqz p3, :cond_2

    .line 2405
    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    invoke-static {p3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2406
    .local v3, saved:Landroid/graphics/Bitmap;
    iget-object v1, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2407
    .local v1, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 2414
    .end local v1           #loaded:Landroid/graphics/Bitmap;
    .end local v3           #saved:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v2, :cond_0

    .line 2415
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "going to save icon bitmap for info="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2420
    :cond_0
    return-void

    .restart local v1       #loaded:Landroid/graphics/Bitmap;
    .restart local v3       #saved:Landroid/graphics/Bitmap;
    :cond_1
    move v2, v4

    .line 2407
    goto :goto_0

    .line 2409
    .end local v1           #loaded:Landroid/graphics/Bitmap;
    .end local v3           #saved:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .parameter "shortAxisCellCount"
    .parameter "longAxisCellCount"

    .prologue
    .line 870
    sput p0, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    .line 871
    sput p1, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    .line 872
    return-void
.end method


# virtual methods
.method public HomeFragmentCount()I
    .locals 2

    .prologue
    .line 1139
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public MenuFragmentCount()I
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 2320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .local v1, info:Lcom/android/launcher2/HomeShortcutItem;
    move-object v0, p1

    move-wide v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 2321
    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 2323
    return-object v1
.end method

.method public bindContextualPageItems(I)V
    .locals 3
    .parameter "CPType"

    .prologue
    .line 2494
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindContextualPageItems CPType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$14;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/LauncherModel$14;-><init>(Lcom/android/launcher2/LauncherModel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2521
    return-void
.end method

.method public dumpState()V
    .locals 4

    .prologue
    .line 2479
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.added"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2481
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.removed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2482
    const-string v1, "Launcher.Model"

    const-string v2, "mMainAppCache.modified"

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2485
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 2486
    .local v0, loader:Lcom/android/launcher2/LauncherModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 2487
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    .line 2491
    :goto_0
    return-void

    .line 2489
    :cond_0
    const-string v1, "Launcher.Model"

    const-string v2, "mLoaderTask=null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    .locals 17
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;J)",
            "Lcom/android/launcher2/HomeFolderItem;"
        }
    .end annotation

    .prologue
    .line 689
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 690
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=? and (itemType=? or itemType=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 696
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 697
    const-string v3, "itemType"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 698
    .local v13, itemTypeIndex:I
    const-string v3, "title"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 699
    .local v15, titleIndex:I
    const-string v3, "container"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 700
    .local v11, containerIndex:I
    const-string v3, "screen"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 701
    .local v14, screenIndex:I
    const-string v3, "cellX"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 702
    .local v9, cellXIndex:I
    const-string v3, "cellY"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 704
    .local v10, cellYIndex:I
    const/4 v12, 0x0

    .line 705
    .local v12, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 711
    :goto_0
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 712
    move-wide/from16 v0, p3

    iput-wide v0, v12, Lcom/android/launcher2/BaseItem;->mId:J

    .line 713
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, v12, Lcom/android/launcher2/HomeItem;->container:J

    .line 714
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 715
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 716
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v12, Lcom/android/launcher2/HomeItem;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 724
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :goto_1
    return-object v12

    .line 707
    .restart local v9       #cellXIndex:I
    .restart local v10       #cellYIndex:I
    .restart local v11       #containerIndex:I
    .restart local v12       #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .restart local v13       #itemTypeIndex:I
    .restart local v14       #screenIndex:I
    .restart local v15       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    .line 721
    .end local v9           #cellXIndex:I
    .end local v10           #cellYIndex:I
    .end local v11           #containerIndex:I
    .end local v12           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v13           #itemTypeIndex:I
    .end local v14           #screenIndex:I
    .end local v15           #titleIndex:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 724
    const/4 v12, 0x0

    goto :goto_1

    .line 721
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 7
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 2166
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method public hasLocaleChanged()Z
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 17
    .parameter "context"
    .parameter "data"
    .parameter "fallbackIcon"

    .prologue
    .line 2327
    const-string v14, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 2328
    .local v10, intent:Landroid/content/Intent;
    const-string v14, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2329
    .local v11, name:Ljava/lang/String;
    const-string v14, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 2331
    .local v1, bitmap:Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 2332
    .local v6, icon:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 2333
    .local v3, customIcon:Z
    const/4 v7, 0x0

    .line 2335
    .local v7, iconResource:Landroid/content/Intent$ShortcutIconResource;
    instance-of v14, v1, Landroid/graphics/Bitmap;

    if-eqz v14, :cond_4

    .line 2336
    check-cast v1, Landroid/graphics/Bitmap;

    .end local v1           #bitmap:Landroid/os/Parcelable;
    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2337
    const/4 v3, 0x1

    .line 2355
    :cond_0
    :goto_0
    new-instance v9, Lcom/android/launcher2/HomeShortcutItem;

    invoke-direct {v9}, Lcom/android/launcher2/HomeShortcutItem;-><init>()V

    .line 2357
    .local v9, info:Lcom/android/launcher2/HomeShortcutItem;
    if-nez v6, :cond_1

    .line 2358
    if-eqz p3, :cond_5

    .line 2359
    move-object/from16 v6, p3

    .line 2365
    :cond_1
    :goto_1
    invoke-virtual {v9, v6}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2367
    iput-object v11, v9, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 2368
    iput-object v10, v9, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2369
    iput-boolean v3, v9, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    .line 2370
    iput-object v7, v9, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2371
    sget-boolean v14, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v14, :cond_2

    .line 2372
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "title: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", intent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", customIcon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", iconResource: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_2
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2376
    .local v2, cn:Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    .line 2377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {v14, v2}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v14

    iput v14, v9, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 2379
    :cond_3
    return-object v9

    .line 2339
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v9           #info:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v1       #bitmap:Landroid/os/Parcelable;
    :cond_4
    const-string v14, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 2340
    .local v5, extra:Landroid/os/Parcelable;
    if-eqz v5, :cond_0

    instance-of v14, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v14, :cond_0

    .line 2342
    :try_start_0
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v7, v0

    .line 2343
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 2344
    .local v12, packageManager:Landroid/content/pm/PackageManager;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 2346
    .local v13, resources:Landroid/content/res/Resources;
    iget-object v14, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 2347
    .local v8, id:I
    if-eqz v8, :cond_0

    .line 2348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v15, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v13, v8, v15}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    .line 2349
    .end local v8           #id:I
    .end local v12           #packageManager:Landroid/content/pm/PackageManager;
    .end local v13           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 2350
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v14, "Launcher.Model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not load shortcut icon: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2361
    .end local v1           #bitmap:Landroid/os/Parcelable;
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #extra:Landroid/os/Parcelable;
    .restart local v9       #info:Lcom/android/launcher2/HomeShortcutItem;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2362
    const/4 v14, 0x1

    iput-boolean v14, v9, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z

    goto/16 :goto_1
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 3
    .parameter "callbacks"

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1029
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 1030
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->onLocaleChanged()V

    .line 1033
    const-string v0, "Launcher.Model"

    const-string v2, "MenuAppModel.onLocaleChanged called"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    monitor-exit v1

    .line 1036
    return-void

    .line 1035
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1044
    sget-boolean v8, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v8, :cond_0

    const-string v8, "Launcher.Model"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive intent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, action:Ljava/lang/String;
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1051
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 1052
    .local v5, packageName:Ljava/lang/String;
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1054
    .local v7, replacing:Z
    const/4 v4, 0x0

    .line 1056
    .local v4, op:I
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 1133
    .end local v4           #op:I
    .end local v5           #packageName:Ljava/lang/String;
    .end local v7           #replacing:Z
    :cond_2
    :goto_0
    return-void

    .line 1061
    .restart local v4       #op:I
    .restart local v5       #packageName:Ljava/lang/String;
    .restart local v7       #replacing:Z
    :cond_3
    const-string v8, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1062
    const/4 v4, 0x2

    .line 1077
    :cond_4
    :goto_1
    if-eqz v4, :cond_2

    .line 1078
    new-instance v8, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    new-array v9, v12, [Ljava/lang/String;

    aput-object v5, v9, v11

    invoke-direct {v8, p0, v4, v9}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1063
    :cond_5
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1064
    if-nez v7, :cond_4

    .line 1065
    const/4 v4, 0x3

    goto :goto_1

    .line 1069
    :cond_6
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1070
    if-nez v7, :cond_7

    .line 1071
    const/4 v4, 0x1

    goto :goto_1

    .line 1073
    :cond_7
    const/4 v4, 0x2

    goto :goto_1

    .line 1081
    .end local v4           #op:I
    .end local v5           #packageName:Ljava/lang/String;
    .end local v7           #replacing:Z
    :cond_8
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1082
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1083
    .local v6, packages:[Ljava/lang/String;
    new-instance v8, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    invoke-direct {v8, p0, v12, v6}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1084
    .end local v6           #packages:[Ljava/lang/String;
    :cond_9
    const-string v8, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1085
    const-string v8, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1086
    .restart local v6       #packages:[Ljava/lang/String;
    new-instance v8, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v9, 0x4

    invoke-direct {v8, p0, v9, v6}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 1088
    .end local v6           #packages:[Ljava/lang/String;
    :cond_a
    const-string v8, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1091
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->hasLocaleChanged()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1092
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 1094
    :cond_b
    const-string v8, "android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "android.search.action.SEARCHABLES_CHANGED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1096
    :cond_c
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_2

    .line 1097
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1098
    .local v2, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v2, :cond_2

    .line 1099
    invoke-interface {v2}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindSearchablesChanged()V

    goto/16 :goto_0

    .line 1102
    .end local v2           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_d
    const-string v8, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1110
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1112
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, fixedStkTitle:Ljava/lang/String;
    const-string v8, "gsm.STK_SETUP_MENU"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, StkTitlefromSIM:Ljava/lang/String;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_2

    .line 1119
    :cond_f
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 1123
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 1124
    .restart local v5       #packageName:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 1129
    const/4 v4, 0x2

    .line 1130
    .restart local v4       #op:I
    new-instance v8, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    new-array v9, v12, [Ljava/lang/String;

    aput-object v5, v9, v11

    invoke-direct {v8, p0, v4, v9}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto/16 :goto_0
.end method

.method public reloadBadges()V
    .locals 3

    .prologue
    .line 2445
    new-instance v0, Lcom/android/launcher2/LauncherModel$13;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$13;-><init>(Lcom/android/launcher2/LauncherModel;)V

    .line 2471
    .local v0, r:Ljava/lang/Runnable;
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2472
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2476
    :goto_0
    return-void

    .line 2474
    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startLoader(Z)V
    .locals 4
    .parameter "isLaunching"

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1183
    :try_start_0
    const-string v0, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startLoader. isLaunching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    .line 1191
    new-instance v0, Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;Z)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 1192
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1193
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1195
    :cond_0
    monitor-exit v1

    .line 1196
    return-void

    .line 1195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startLoaderFromBackground()V
    .locals 3

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1156
    .local v0, cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1157
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/LauncherModel;->startLoader(Z)V

    .line 1163
    :goto_1
    return-void

    .line 1155
    .end local v0           #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v0, v1

    goto :goto_0

    .line 1159
    .restart local v0       #cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1160
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel;->stopLoaderLocked()Z

    .line 1161
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unbindWorkspaceItems()V
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method
