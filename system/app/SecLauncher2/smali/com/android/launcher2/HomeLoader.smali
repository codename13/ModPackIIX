.class public Lcom/android/launcher2/HomeLoader;
.super Ljava/lang/Object;
.source "HomeLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeLoader$1;
    }
.end annotation


# static fields
.field private static final DEBUG_LOADER:Z = true

.field private static final TAG:Ljava/lang/String; = "HomeLoader"


# instance fields
.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private final mIsSafeMode:Z

.field private final mLauncherApp:Lcom/android/launcher2/LauncherApplication;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V
    .locals 1
    .parameter "context"
    .parameter "pkgResCache"
    .parameter "badgeCache"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    .line 58
    iput-object p2, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 59
    iput-object p3, p0, Lcom/android/launcher2/HomeLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    .line 60
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeLoader;->mIsSafeMode:Z

    .line 62
    return-void
.end method

.method private findActiveActivity(Landroid/content/ComponentName;[Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .locals 7
    .parameter "cn"
    .parameter "activities"

    .prologue
    .line 74
    const/4 v5, 0x0

    .line 75
    .local v5, match:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, className:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 77
    move-object v1, p2

    .local v1, arr$:[Landroid/content/pm/ActivityInfo;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 78
    .local v0, activity:Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    iget-boolean v6, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_0

    .line 80
    move-object v5, v0

    .line 86
    .end local v0           #activity:Landroid/content/pm/ActivityInfo;
    .end local v1           #arr$:[Landroid/content/pm/ActivityInfo;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-object v5

    .line 77
    .restart local v0       #activity:Landroid/content/pm/ActivityInfo;
    .restart local v1       #arr$:[Landroid/content/pm/ActivityInfo;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private loadBitmapFromIconResource(Landroid/content/Intent$ShortcutIconResource;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "resource"

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, icon:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 99
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, id:I
    if-eqz v1, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v4, p1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    .end local v1           #id:I
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private refreshShortcut(Lcom/android/launcher2/HomeItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    .line 117
    move-object v7, p1

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    .line 118
    .local v7, shortcut:Lcom/android/launcher2/HomeShortcutItem;
    const/4 v2, 0x0

    .line 119
    .local v2, changed:Z
    iget-object v5, v7, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 120
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_1

    .line 121
    iget-object v9, v7, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v10, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v9, v10, :cond_2

    .line 122
    new-instance v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v8}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 123
    .local v8, titleIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget-object v9, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v9, v8, v5}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V

    .line 124
    iget-object v9, v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v10, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v9, v10, :cond_0

    .line 125
    iget-object v9, v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v9}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 126
    const/4 v2, 0x1

    .line 128
    :cond_0
    iget-object v9, v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iget-object v10, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 129
    iget-object v9, v8, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v9, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 130
    const/4 v2, 0x1

    .line 159
    .end local v8           #titleIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :cond_1
    :goto_0
    return v2

    .line 135
    :cond_2
    iget-object v9, v7, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 136
    .local v1, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_5

    .line 137
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    .local v0, cat:Ljava/lang/String;
    const-string v9, "com.android.settings.SHORTCUT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.email"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 141
    :cond_4
    iget-object v9, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v9, v5}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, newTitle:Ljava/lang/String;
    if-eqz v6, :cond_5

    iget-object v9, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 143
    iput-object v6, v7, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 144
    const/4 v2, 0x1

    .line 150
    .end local v0           #cat:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #newTitle:Ljava/lang/String;
    :cond_5
    iget-boolean v9, v7, Lcom/android/launcher2/HomeShortcutItem;->customIcon:Z

    if-nez v9, :cond_1

    iget-object v9, v7, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v9, :cond_1

    .line 151
    iget-object v9, v7, Lcom/android/launcher2/HomeShortcutItem;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {p0, v9}, Lcom/android/launcher2/HomeLoader;->loadBitmapFromIconResource(Landroid/content/Intent$ShortcutIconResource;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 152
    .local v4, icon:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 153
    invoke-virtual {v7, v4}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 154
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, sHomeItemIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeItem;>;"
    .local p3, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 176
    .local v1, homeItem:Lcom/android/launcher2/HomeItem;
    const/4 v4, 0x0

    .line 177
    .local v4, itemPkg:Ljava/lang/String;
    sget-object v5, Lcom/android/launcher2/HomeLoader$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v6, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 208
    :cond_1
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    move-object v5, v1

    .line 180
    check-cast v5, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 181
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 183
    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    .line 184
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    move-object v5, v1

    .line 194
    check-cast v5, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v0, v5, Lcom/android/launcher2/HomeWidgetItem;->mComponentName:Landroid/content/ComponentName;

    .line 195
    .restart local v0       #cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 212
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #homeItem:Lcom/android/launcher2/HomeItem;
    .end local v4           #itemPkg:Ljava/lang/String;
    :cond_3
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method updateBadgeCounts(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/BadgeCache$BadgeCount;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, sHomeItemIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeItem;>;"
    .local p2, badgeCounts:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v5, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    .line 224
    .local v3, item:Lcom/android/launcher2/HomeItem;
    iget-object v6, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_0

    move-object v4, v3

    .line 225
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    .line 226
    .local v4, shortcut:Lcom/android/launcher2/HomeShortcutItem;
    iget-object v6, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 227
    iget-object v6, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 228
    .local v1, cn:Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 229
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BadgeCache$BadgeCount;

    .line 230
    .local v0, badgeCache:Lcom/android/launcher2/BadgeCache$BadgeCount;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/android/launcher2/BadgeCache$BadgeCount;->mCount:I

    iget v7, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-eq v6, v7, :cond_0

    .line 231
    iget v6, v0, Lcom/android/launcher2/BadgeCache$BadgeCount;->mCount:I

    iput v6, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    .line 232
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v0           #badgeCache:Lcom/android/launcher2/BadgeCache$BadgeCount;
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #item:Lcom/android/launcher2/HomeItem;
    .end local v4           #shortcut:Lcom/android/launcher2/HomeShortcutItem;
    :cond_1
    return-object v5
.end method

.method public updatePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter "packageName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, sHomeItemIdMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/HomeItem;>;"
    .local p3, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .local p4, updated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v8, 0x3

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 262
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v6, :cond_0

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_2

    .line 263
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/HomeLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 303
    :cond_1
    return-void

    .line 259
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x0

    .restart local v6       #pkgInfo:Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 267
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 270
    .local v2, homeItem:Lcom/android/launcher2/HomeItem;
    sget-object v7, Lcom/android/launcher2/HomeLoader$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v8, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v8}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move-object v7, v2

    .line 278
    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v7}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 279
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 282
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v7}, Lcom/android/launcher2/HomeLoader;->findActiveActivity(Landroid/content/ComponentName;[Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 283
    .local v4, info:Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_4

    .line 284
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 285
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/launcher2/HomeLoader;->refreshShortcut(Lcom/android/launcher2/HomeItem;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 286
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v4           #info:Landroid/content/pm/ActivityInfo;
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_1
    move-object v7, v2

    .line 292
    check-cast v7, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v0, v7, Lcom/android/launcher2/HomeWidgetItem;->mComponentName:Landroid/content/ComponentName;

    .line 293
    .restart local v0       #cn:Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 295
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v7}, Lcom/android/launcher2/HomeLoader;->findActiveActivity(Landroid/content/ComponentName;[Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 296
    .restart local v4       #info:Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_3

    .line 297
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
