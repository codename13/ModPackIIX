.class public Lcom/android/launcher2/MenuAppLoader;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"


# static fields
.field private static final DEBUG_LOADER:Z = true

.field private static final DEFAULT_APP_COUNT:I = 0x32

.field private static final DEFAULT_FOLDER_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MenuAppLoader"


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAbortLoader:Z

.field private mAllItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private final mLauncherApp:Lcom/android/launcher2/LauncherApplication;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V
    .locals 2
    .parameter "context"
    .parameter "pkgResCache"
    .parameter "badgeCache"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v0}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    .line 85
    iput-object p1, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    .line 86
    iput-object p2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 87
    iput-object p3, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 88
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 89
    return-void
.end method

.method private createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;
    .locals 9
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 126
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 127
    .local v0, activity:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .line 128
    .local v4, item:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_2

    .line 129
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 130
    .local v5, pkgName:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v1, cn:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 132
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-eqz v7, :cond_0

    move v3, v6

    .line 135
    .local v3, isSystemApp:Z
    :cond_0
    const-string v7, "com.android.stk"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    .line 137
    :cond_1
    new-instance v4, Lcom/android/launcher2/AppItem;

    .end local v4           #item:Lcom/android/launcher2/AppItem;
    invoke-direct {v4, v1, v3}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .line 138
    .restart local v4       #item:Lcom/android/launcher2/AppItem;
    iput-boolean v6, v4, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 139
    invoke-direct {p0, v4, p1, v1}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    .line 140
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V

    .line 141
    iget-boolean v6, v4, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v6, :cond_2

    .line 142
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v6, v4, Lcom/android/launcher2/AppItem;->mCreateTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #isSystemApp:Z
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 149
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    iget-object v7, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_3
    return-object v4

    .line 143
    .restart local v1       #cn:Landroid/content/ComponentName;
    .restart local v3       #isSystemApp:Z
    .restart local v5       #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 144
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "MenuAppLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find PackageInfo for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .locals 3
    .parameter "item"

    .prologue
    .line 160
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 161
    .local v0, newApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    .line 162
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 169
    :goto_0
    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 170
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 171
    iget v1, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 172
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 173
    return-object v0

    .line 164
    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 165
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v1, v1, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_1
    iput-wide v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 166
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    .line 167
    iget-boolean v1, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_0

    .line 165
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_1
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 194
    :cond_0
    return-object v0
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 203
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 204
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    const/4 v4, 0x1

    .line 208
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;
    .locals 4
    .parameter "folderId"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 224
    .local v1, item:Lcom/android/launcher2/AppItem;
    if-nez v1, :cond_1

    .line 225
    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0           #folder:Lcom/android/launcher2/AppFolderItem;
    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    .line 226
    .restart local v0       #folder:Lcom/android/launcher2/AppFolderItem;
    iput-wide p1, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 227
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 228
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 229
    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_0

    move-object v0, v1

    .line 231
    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    goto :goto_0
.end method

.method private setBadgeCount(Lcom/android/launcher2/AppItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 464
    return-void
.end method

.method private setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V
    .locals 2
    .parameter "item"
    .parameter "info"
    .parameter "cn"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v0, v1, p2}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 479
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mIconResId:I

    .line 480
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    iput v0, p1, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    .line 482
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 484
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 486
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;)Lcom/android/launcher2/AppItem;
    .locals 14
    .parameter "cn"
    .parameter "id"
    .parameter "folderId"
    .parameter "screen"
    .parameter "cell"
    .parameter "hidden"
    .parameter "title"

    .prologue
    .line 527
    const/4 v6, 0x0

    .line 528
    .local v6, item:Lcom/android/launcher2/AppItem;
    if-eqz p1, :cond_3

    .line 529
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #item:Lcom/android/launcher2/AppItem;
    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 530
    .restart local v6       #item:Lcom/android/launcher2/AppItem;
    if-nez v6, :cond_1

    .line 534
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 538
    .local v9, pkgName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/16 v11, 0x2000

    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 540
    .local v8, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 541
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    iget v10, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x4

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    .line 545
    const/4 v5, 0x0

    .line 546
    .local v5, isSystemApp:Z
    const-string v10, "com.android.stk"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    .line 548
    :cond_0
    new-instance v7, Lcom/android/launcher2/AppItem;

    invoke-direct {v7, p1, v5}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    .end local v6           #item:Lcom/android/launcher2/AppItem;
    .local v7, item:Lcom/android/launcher2/AppItem;
    :try_start_1
    move-object/from16 v0, p9

    iput-object v0, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 550
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v10}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 551
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    .line 552
    iget-wide v10, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v10, v7, Lcom/android/launcher2/AppItem;->mCreateTime:J

    .line 553
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v10, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-direct {p0, v7}, Lcom/android/launcher2/MenuAppLoader;->setBadgeCount(Lcom/android/launcher2/AppItem;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 564
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v5           #isSystemApp:Z
    .end local v7           #item:Lcom/android/launcher2/AppItem;
    .end local v8           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v9           #pkgName:Ljava/lang/String;
    .restart local v6       #item:Lcom/android/launcher2/AppItem;
    :cond_1
    :goto_0
    if-eqz v6, :cond_3

    iget-wide v10, v6, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 565
    move-wide/from16 v0, p2

    iput-wide v0, v6, Lcom/android/launcher2/BaseItem;->mId:J

    .line 566
    move/from16 v0, p6

    iput v0, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 567
    move/from16 v0, p7

    iput v0, v6, Lcom/android/launcher2/AppItem;->mCell:I

    .line 568
    move/from16 v0, p8

    iput-boolean v0, v6, Lcom/android/launcher2/AppItem;->mHidden:Z

    .line 569
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 573
    const-wide/16 v10, -0x1

    cmp-long v10, p4, v10

    if-eqz v10, :cond_2

    .line 574
    move-wide/from16 v0, p4

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v4

    .line 575
    .local v4, folder:Lcom/android/launcher2/AppFolderItem;
    if-eqz v4, :cond_4

    .line 576
    invoke-virtual {v4, v6}, Lcom/android/launcher2/AppFolderItem;->loadItem(Lcom/android/launcher2/AppItem;)V

    .line 589
    .end local v4           #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 590
    .local v3, dupItem:Lcom/android/launcher2/AppItem;
    if-eqz v3, :cond_3

    iget-object v10, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v10, v11, :cond_3

    .line 591
    check-cast v3, Lcom/android/launcher2/AppFolderItem;

    .end local v3           #dupItem:Lcom/android/launcher2/AppItem;
    invoke-virtual {v3}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    .line 595
    :cond_3
    return-object v6

    .line 578
    .restart local v4       #folder:Lcom/android/launcher2/AppFolderItem;
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 579
    const/4 v10, -0x1

    iput v10, v6, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 580
    const/4 v10, -0x1

    iput v10, v6, Lcom/android/launcher2/AppItem;->mCell:I

    goto :goto_1

    .line 556
    .end local v4           #folder:Lcom/android/launcher2/AppFolderItem;
    :catch_0
    move-exception v10

    goto :goto_0

    .end local v6           #item:Lcom/android/launcher2/AppItem;
    .restart local v2       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #isSystemApp:Z
    .restart local v7       #item:Lcom/android/launcher2/AppItem;
    .restart local v8       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v9       #pkgName:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v6, v7

    .end local v7           #item:Lcom/android/launcher2/AppItem;
    .restart local v6       #item:Lcom/android/launcher2/AppItem;
    goto :goto_0
.end method

.method private updateOrCreateFolder(JIILjava/lang/String;)Lcom/android/launcher2/AppFolderItem;
    .locals 3
    .parameter "folderId"
    .parameter "screen"
    .parameter "cell"
    .parameter "title"

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, folder:Lcom/android/launcher2/AppFolderItem;
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuAppLoader;->getOrCreateFolder(J)Lcom/android/launcher2/AppFolderItem;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_0

    .line 615
    iput p3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 616
    iput p4, v0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 617
    iput-object p5, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 618
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 621
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abortLoader()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 97
    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 8
    .parameter "packageName"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 104
    .local v3, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v4, newApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    .line 106
    .local v5, provider:Lcom/android/launcher2/LauncherProvider;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 107
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v2

    .line 108
    .local v2, item:Lcom/android/launcher2/AppItem;
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 110
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 111
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 116
    iget-object v6, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v6, v4}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 117
    :cond_2
    return-void
.end method

.method public loadAllItems()Ljava/util/Map;
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 244
    .local v35, t0:J
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 246
    new-instance v3, Ljava/util/HashMap;

    const/16 v13, 0x3c

    invoke-direct {v3, v13}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 253
    new-instance v32, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v32, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 257
    .local v2, contentResolver:Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .line 258
    .local v20, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v13, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v0, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v37

    .line 260
    .local v37, t1:J
    if-nez v20, :cond_0

    .line 261
    const/16 v19, 0x0

    .line 387
    :goto_0
    return-object v19

    .line 263
    :cond_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    .line 264
    .local v30, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v3, :cond_3

    .line 268
    .end local v30           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v39

    .line 271
    .local v39, t2:J
    sget-object v3, Lcom/android/launcher2/LauncherSettings$AppOrder;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 273
    .local v21, c:Landroid/database/Cursor;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v41

    .line 276
    .local v41, t3:J
    :try_start_0
    const-string v3, "_id"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 277
    .local v29, idIndex:I
    const-string v3, "folderId"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 278
    .local v26, folderIdIndex:I
    const-string v3, "screen"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 279
    .local v34, screenIndex:I
    const-string v3, "cell"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 280
    .local v22, cellIndex:I
    const-string v3, "hidden"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 281
    .local v27, hiddenIndex:I
    const-string v3, "title"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 282
    .local v47, titleIndex:I
    const-string v3, "componentName"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 284
    .local v24, componentNameIndex:I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v3, :cond_6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 285
    const/16 v31, 0x0

    .line 286
    .local v31, item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 287
    .local v5, id:J
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 288
    .local v7, folderId:J
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 289
    .local v9, screen:I
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 290
    .local v10, cell:I
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v11, 0x1

    .line 291
    .local v11, hidden:Z
    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 292
    .local v12, title:Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 293
    .local v23, component:Ljava/lang/String;
    if-eqz v23, :cond_5

    .line 294
    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .local v4, cn:Landroid/content/ComponentName;
    move-object/from16 v3, p0

    .line 296
    invoke-direct/range {v3 .. v12}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateApp(Landroid/content/ComponentName;JJIIZLjava/lang/String;)Lcom/android/launcher2/AppItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v31

    .line 297
    if-nez v31, :cond_2

    goto :goto_2

    .line 266
    .end local v4           #cn:Landroid/content/ComponentName;
    .end local v5           #id:J
    .end local v7           #folderId:J
    .end local v9           #screen:I
    .end local v10           #cell:I
    .end local v11           #hidden:Z
    .end local v12           #title:Ljava/lang/String;
    .end local v21           #c:Landroid/database/Cursor;
    .end local v22           #cellIndex:I
    .end local v23           #component:Ljava/lang/String;
    .end local v24           #componentNameIndex:I
    .end local v26           #folderIdIndex:I
    .end local v27           #hiddenIndex:I
    .end local v29           #idIndex:I
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    .end local v34           #screenIndex:I
    .end local v39           #t2:J
    .end local v41           #t3:J
    .end local v47           #titleIndex:I
    .restart local v30       #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    goto/16 :goto_1

    .line 290
    .end local v30           #info:Landroid/content/pm/ResolveInfo;
    .restart local v5       #id:J
    .restart local v7       #folderId:J
    .restart local v9       #screen:I
    .restart local v10       #cell:I
    .restart local v21       #c:Landroid/database/Cursor;
    .restart local v22       #cellIndex:I
    .restart local v24       #componentNameIndex:I
    .restart local v26       #folderIdIndex:I
    .restart local v27       #hiddenIndex:I
    .restart local v29       #idIndex:I
    .restart local v31       #item:Lcom/android/launcher2/AppItem;
    .restart local v34       #screenIndex:I
    .restart local v39       #t2:J
    .restart local v41       #t3:J
    .restart local v47       #titleIndex:I
    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    .restart local v11       #hidden:Z
    .restart local v12       #title:Ljava/lang/String;
    .restart local v23       #component:Ljava/lang/String;
    :cond_5
    move-object/from16 v13, p0

    move-wide v14, v5

    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v12

    .line 303
    :try_start_1
    invoke-direct/range {v13 .. v18}, Lcom/android/launcher2/MenuAppLoader;->updateOrCreateFolder(JIILjava/lang/String;)Lcom/android/launcher2/AppFolderItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 307
    .end local v5           #id:J
    .end local v7           #folderId:J
    .end local v9           #screen:I
    .end local v10           #cell:I
    .end local v11           #hidden:Z
    .end local v12           #title:Ljava/lang/String;
    .end local v22           #cellIndex:I
    .end local v23           #component:Ljava/lang/String;
    .end local v24           #componentNameIndex:I
    .end local v26           #folderIdIndex:I
    .end local v27           #hiddenIndex:I
    .end local v29           #idIndex:I
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    .end local v34           #screenIndex:I
    .end local v47           #titleIndex:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v22       #cellIndex:I
    .restart local v24       #componentNameIndex:I
    .restart local v26       #folderIdIndex:I
    .restart local v27       #hiddenIndex:I
    .restart local v29       #idIndex:I
    .restart local v34       #screenIndex:I
    .restart local v47       #titleIndex:I
    :cond_6
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v43

    .line 311
    .local v43, t4:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    move-object/from16 v19, v0

    .line 312
    .local v19, allItems:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v3, :cond_8

    .line 313
    const/16 v19, 0x0

    .line 377
    :cond_7
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v45

    .line 379
    .local v45, t5:J
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "loadAllItems; aborted: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Query PkgMgr for all main intents: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v37, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Create AppItem for all main intents: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v39, v37

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v39, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Query AppOrder database table: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v41, v39

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v41, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Merge AppOrder and PkgMgr data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v43, v41

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v43, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v3, "MenuAppLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Normalize items and update DB: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v45, v43

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " / "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v45, v35

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mAllItems:Ljava/util/Map;

    goto/16 :goto_0

    .line 322
    .end local v45           #t5:J
    :cond_8
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 323
    .local v25, created:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/launcher2/AppItem;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_9
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/AppItem;

    .line 324
    .restart local v31       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v13, :cond_9

    .line 325
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 333
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v33

    .line 334
    .local v33, provider:Lcom/android/launcher2/LauncherProvider;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_b
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/AppItem;

    .line 335
    .restart local v31       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v31

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    const-wide/16 v15, -0x1

    cmp-long v3, v13, v15

    if-nez v3, :cond_b

    .line 336
    invoke-virtual/range {v33 .. v33}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v13

    move-object/from16 v0, v31

    iput-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 337
    const/4 v3, 0x1

    move-object/from16 v0, v31

    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 338
    move-object/from16 v0, v31

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 345
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    :cond_c
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    sget-object v13, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    const/4 v14, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v13, v14}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    .line 349
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 350
    .local v49, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_d
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/AppItem;

    .line 351
    .restart local v31       #item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    if-eqz v3, :cond_d

    .line 352
    new-instance v48, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct/range {v48 .. v48}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 353
    .local v48, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 354
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v13, :cond_e

    .line 355
    const/4 v3, 0x0

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 364
    :goto_8
    move-object/from16 v0, v31

    iget-wide v13, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move-object/from16 v0, v48

    iput-wide v13, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 365
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_11

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v13, v3, Lcom/android/launcher2/BaseItem;->mId:J

    :goto_9
    move-object/from16 v0, v48

    iput-wide v13, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    .line 366
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 367
    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/launcher2/AppItem;->mCell:I

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    .line 368
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    move-object/from16 v0, v48

    iput-boolean v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    .line 369
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 370
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iput-boolean v3, v0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 371
    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 357
    :cond_e
    const/4 v3, 0x3

    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 358
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v48

    iput-object v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    goto :goto_8

    .line 361
    :cond_f
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v13, :cond_10

    const/4 v3, 0x4

    :goto_a
    move-object/from16 v0, v48

    iput v3, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    goto :goto_8

    :cond_10
    const/4 v3, 0x1

    goto :goto_a

    .line 365
    :cond_11
    const-wide/16 v13, -0x1

    goto :goto_9

    .line 374
    .end local v31           #item:Lcom/android/launcher2/AppItem;
    .end local v48           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_12
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_4
.end method

.method refreshAllApps()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 396
    .local v4, t0:J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v9, updates:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iput-boolean v11, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    .line 398
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 399
    .local v2, item:Lcom/android/launcher2/AppItem;
    iget v12, v2, Lcom/android/launcher2/BaseItem;->mIconResId:I

    if-nez v12, :cond_1

    iget v12, v2, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    if-eqz v12, :cond_2

    .line 400
    :cond_1
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v13, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 401
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v13, v2, Lcom/android/launcher2/BaseItem;->mIconResId:I

    iput v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 402
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v3, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v3, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 403
    .local v3, prevTitle:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v13, v2, Lcom/android/launcher2/BaseItem;->mTitleResId:I

    iput v13, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 404
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v13, v2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v14, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v12, v13, v14}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 405
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v12, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 406
    const/4 v12, 0x0

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 407
    iget-object v12, p0, Lcom/android/launcher2/MenuAppLoader;->titleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v12, v12, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 409
    if-eqz v3, :cond_6

    .line 410
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    move v0, v10

    .line 414
    .local v0, changed:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 415
    new-instance v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v8}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 416
    .local v8, update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v12, 0x2

    iput v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 417
    iget-wide v12, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 418
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v12, v8, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 419
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    .end local v0           #changed:Z
    .end local v3           #prevTitle:Ljava/lang/String;
    .end local v8           #update:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_2
    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-eqz v12, :cond_0

    .line 425
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    iget-boolean v10, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    if-nez v10, :cond_4

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 426
    iget-object v10, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v10, v9}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 429
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 430
    .local v6, t1:J
    const-string v10, "MenuAppLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "refreshAllApps; aborted: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/launcher2/MenuAppLoader;->mAbortLoader:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", refresh time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v6, v4

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void

    .end local v6           #t1:J
    .restart local v2       #item:Lcom/android/launcher2/AppItem;
    .restart local v3       #prevTitle:Ljava/lang/String;
    :cond_5
    move v0, v11

    .line 410
    goto :goto_0

    .line 412
    :cond_6
    iget-object v12, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v12, :cond_7

    move v0, v10

    .restart local v0       #changed:Z
    :goto_1
    goto :goto_0

    .end local v0           #changed:Z
    :cond_7
    move v0, v11

    goto :goto_1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v2, delApps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    .line 443
    .local v4, item:Lcom/android/launcher2/AppItem;
    iget-object v0, v4, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 444
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 448
    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 449
    .local v1, delApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v5, 0x5

    iput v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 450
    iget-wide v5, v4, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v5, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 451
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #delApp:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v4           #item:Lcom/android/launcher2/AppItem;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 455
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5, v2}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    .line 456
    :cond_2
    return-void
.end method

.method updateBadgeCounts(Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/BadgeCache$BadgeCount;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, badgeCounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    .local v4, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 496
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    iget-object v5, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 497
    .local v0, appItem:Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BadgeCache$BadgeCount;

    iget v3, v5, Lcom/android/launcher2/BadgeCache$BadgeCount;->mCount:I

    .line 499
    .local v3, newCount:I
    iget v5, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-eq v5, v3, :cond_0

    .line 500
    iput v3, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 501
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    .end local v0           #appItem:Lcom/android/launcher2/AppItem;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    .end local v3           #newCount:I
    :cond_1
    return-object v4
.end method

.method public updatePackage(Ljava/lang/String;)V
    .locals 11
    .parameter "packageName"

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 629
    .local v7, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v1, appMods:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    .line 636
    .local v8, provider:Lcom/android/launcher2/LauncherProvider;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppItem;>;"
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 637
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 638
    .local v6, item:Lcom/android/launcher2/AppItem;
    iget-object v2, v6, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    .line 639
    .local v2, cn:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 640
    invoke-static {v7, v2}, Lcom/android/launcher2/MenuAppLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 641
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 644
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 645
    .local v0, appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    const/4 v9, 0x5

    iput v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 646
    iget-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 647
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 653
    .end local v0           #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v6           #item:Lcom/android/launcher2/AppItem;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 654
    .local v4, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .restart local v2       #cn:Landroid/content/ComponentName;
    new-instance v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 657
    .restart local v0       #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mApps:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AppItem;

    .line 658
    .restart local v6       #item:Lcom/android/launcher2/AppItem;
    if-nez v6, :cond_5

    .line 659
    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppLoader;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v6

    .line 660
    if-eqz v6, :cond_4

    .line 661
    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    .line 662
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 663
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-direct {p0, v6}, Lcom/android/launcher2/MenuAppLoader;->createDbAppItem(Lcom/android/launcher2/AppItem;)Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 671
    :cond_5
    invoke-direct {p0, v6, v4, v2}, Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;)V

    .line 672
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    const/4 v9, 0x2

    iput v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    .line 674
    iget-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 675
    iget-object v9, v6, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iput-object v9, v0, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    .line 676
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 679
    .end local v0           #appMod:Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    .end local v2           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #item:Lcom/android/launcher2/AppItem;
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 680
    iget-object v9, p0, Lcom/android/launcher2/MenuAppLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v9, v1}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    goto/16 :goto_0
.end method
