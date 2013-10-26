.class public Lcom/android/launcher2/PkgResCache;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PkgResCache$1;,
        Lcom/android/launcher2/PkgResCache$PkgEntry;,
        Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    }
.end annotation


# static fields
.field private static final INITIAL_ICON_CAPACITY:I = 0x3

.field private static final INITIAL_LABEL_CAPACITY:I = 0x3

.field private static final INITIAL_PACKAGE_CAPACITY:I = 0x50

.field private static final TAG:Ljava/lang/String; = "PkgResCache"


# instance fields
.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mFolderIcon:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private final mPkgCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/PkgResCache$PkgEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mUnavailableIcon:Landroid/graphics/Bitmap;

.field private final nullIcon:Landroid/graphics/Bitmap;

.field private final nullString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 4
    .parameter "app"

    .prologue
    const/4 v3, 0x1

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    .line 90
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    .line 93
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    .line 102
    iput-object p1, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 103
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 104
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 105
    .local v0, appRes:Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    .line 106
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    sparse-switch v2, :sswitch_data_0

    .line 127
    :cond_0
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 129
    .local v1, sysRes:Landroid/content/res/Resources;
    const/high16 v2, 0x10d

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 131
    const v2, 0x10d0001

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    .line 133
    const v2, 0x7f020068

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PkgResCache;->mFolderIcon:Landroid/graphics/Bitmap;

    .line 134
    return-void

    .line 109
    .end local v1           #sysRes:Landroid/content/res/Resources;
    :sswitch_0
    const/16 v2, 0xa0

    iput v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    .line 112
    :sswitch_1
    const/16 v2, 0xf0

    iput v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    .line 115
    :sswitch_2
    const/16 v2, 0x140

    iput v2, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    .line 107
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
    .end sparse-switch
.end method

.method private createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "res"
    .parameter "resId"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 153
    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 154
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    return-object v0
.end method

.method private loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V
    .locals 12
    .parameter "pkgName"
    .parameter "item"
    .parameter "ci"

    .prologue
    .line 481
    iget v3, p2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 482
    .local v3, iconId:I
    iget v4, p2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 483
    .local v4, labelId:I
    iget-object v1, p3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 484
    .local v1, ai:Landroid/content/pm/ApplicationInfo;
    if-nez v3, :cond_0

    if-eqz v4, :cond_7

    .line 485
    :cond_0
    const/4 v5, 0x0

    .line 486
    .local v5, newIcon:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 487
    .local v6, newLabel:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v10

    .line 490
    :try_start_0
    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .line 491
    .local v7, pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    if-nez v7, :cond_8

    .line 492
    new-instance v7, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .end local v7           #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    const/4 v9, 0x0

    invoke-direct {v7, v9}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    .line 493
    .restart local v7       #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    if-eqz v4, :cond_5

    if-nez v6, :cond_5

    .line 510
    :cond_3
    if-nez v1, :cond_a

    .line 511
    :try_start_1
    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 515
    .local v8, res:Landroid/content/res/Resources;
    :goto_1
    if-eqz v3, :cond_4

    if-nez v5, :cond_4

    .line 516
    iget v9, p3, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v9, :cond_b

    iget-object v9, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v8, v3, v9}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 517
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v11

    if-nez v5, :cond_c

    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    :goto_3
    invoke-virtual {v11, v3, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 519
    :cond_4
    if-eqz v4, :cond_5

    if-nez v6, :cond_5

    .line 520
    iget v9, p3, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v9, :cond_d

    iget-object v9, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v8, v4, v9}, Lcom/android/launcher2/PkgResCache;->loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 521
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v11

    if-nez v6, :cond_e

    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    :goto_5
    invoke-virtual {v11, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 534
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_5
    :goto_6
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    if-eqz v5, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    if-eq v5, v9, :cond_6

    .line 536
    iput-object v5, p2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 537
    :cond_6
    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    if-eq v6, v9, :cond_7

    .line 538
    iput-object v6, p2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 540
    .end local v5           #newIcon:Landroid/graphics/Bitmap;
    .end local v6           #newLabel:Ljava/lang/String;
    .end local v7           #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_7
    return-void

    .line 495
    .restart local v5       #newIcon:Landroid/graphics/Bitmap;
    .restart local v6       #newLabel:Ljava/lang/String;
    .restart local v7       #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_8
    if-eqz v3, :cond_9

    .line 496
    :try_start_3
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 498
    :cond_9
    if-eqz v4, :cond_1

    .line 499
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 513
    :cond_a
    :try_start_4
    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v8

    .restart local v8       #res:Landroid/content/res/Resources;
    goto :goto_1

    .line 516
    :cond_b
    iget-object v9, p3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_c
    move-object v9, v5

    .line 517
    goto :goto_3

    .line 520
    :cond_d
    iget-object v9, p3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :cond_e
    move-object v9, v6

    .line 521
    goto :goto_5

    .line 523
    .end local v8           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 528
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    if-eqz v3, :cond_f

    if-nez v5, :cond_f

    .line 529
    :try_start_5
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v3, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 530
    :cond_f
    if-eqz v4, :cond_5

    if-nez v6, :cond_5

    .line 531
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 534
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFolderIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mFolderIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "intent"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, icon:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 205
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PkgResCache;->getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    :cond_0
    return-object v0
.end method

.method public getIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "info"

    .prologue
    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, icon:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v4

    .line 225
    .local v4, iconId:I
    if-eqz v4, :cond_1

    .line 226
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 227
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 229
    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .line 230
    .local v5, pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    if-eqz v5, :cond_3

    .line 231
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    .line 236
    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    if-ne v3, v7, :cond_4

    .line 237
    const/4 v3, 0x0

    .line 250
    :cond_0
    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    .end local v5           #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_1
    return-object v3

    .line 226
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 233
    .restart local v1       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v5       #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_3
    :try_start_1
    new-instance v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .end local v5           #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    .line 234
    .restart local v5       #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 250
    .end local v5           #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 239
    .restart local v5       #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_4
    if-nez v3, :cond_0

    .line 241
    :try_start_2
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v9, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 242
    .local v6, res:Landroid/content/res/Resources;
    iget v7, v1, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v7, :cond_5

    iget-object v7, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v6, v4, v7}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 243
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v9

    if-nez v3, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    :goto_4
    invoke-virtual {v9, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 244
    .end local v6           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 247
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mBitmaps:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$000(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v7

    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->nullIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 242
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_5
    :try_start_4
    iget-object v7, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :cond_6
    move-object v7, v3

    .line 243
    goto :goto_4
.end method

.method public getTitle(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "intent"

    .prologue
    .line 265
    const/4 v1, 0x0

    .line 267
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 268
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PkgResCache;->getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    .line 271
    :cond_0
    return-object v1
.end method

.method public getTitle(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 11
    .parameter "info"

    .prologue
    .line 285
    const/4 v7, 0x0

    .line 286
    .local v7, title:Ljava/lang/String;
    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v8, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 288
    .local v1, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    const/4 v4, 0x0

    .line 289
    .local v4, labelId:I
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 290
    .local v3, label:Ljava/lang/CharSequence;
    if-nez v3, :cond_0

    .line 291
    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 292
    if-nez v4, :cond_0

    .line 293
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 294
    if-nez v3, :cond_0

    .line 295
    iget v4, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    .line 296
    if-nez v4, :cond_0

    .line 297
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 298
    if-nez v3, :cond_0

    .line 299
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v8, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 304
    :cond_0
    if-eqz v3, :cond_3

    .line 305
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 332
    :cond_1
    :goto_1
    return-object v7

    .line 286
    .end local v1           #ci:Landroid/content/pm/ComponentInfo;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v4           #labelId:I
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 306
    .restart local v1       #ci:Landroid/content/pm/ComponentInfo;
    .restart local v3       #label:Ljava/lang/CharSequence;
    .restart local v4       #labelId:I
    :cond_3
    if-eqz v4, :cond_1

    .line 307
    iget-object v9, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v9

    .line 309
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .line 310
    .local v5, pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    if-eqz v5, :cond_5

    .line 311
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 316
    :goto_2
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    if-ne v7, v8, :cond_6

    .line 317
    const/4 v7, 0x0

    .line 330
    :cond_4
    :goto_3
    monitor-exit v9

    goto :goto_1

    .end local v5           #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 313
    .restart local v5       #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    :cond_5
    :try_start_1
    new-instance v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    .end local v5           #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    .line 314
    .restart local v5       #pkgEntry:Lcom/android/launcher2/PkgResCache$PkgEntry;
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 319
    :cond_6
    if-nez v7, :cond_4

    .line 321
    :try_start_2
    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v10, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v6

    .line 322
    .local v6, res:Landroid/content/res/Resources;
    iget v8, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v8, :cond_7

    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v6, v4, v8}, Lcom/android/launcher2/PkgResCache;->loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 323
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v10

    if-nez v7, :cond_8

    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    :goto_5
    invoke-virtual {v10, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 324
    .end local v6           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 327
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    #getter for: Lcom/android/launcher2/PkgResCache$PkgEntry;->mStrings:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/launcher2/PkgResCache$PkgEntry;->access$200(Lcom/android/launcher2/PkgResCache$PkgEntry;)Landroid/util/SparseArray;

    move-result-object v8

    iget-object v10, p0, Lcom/android/launcher2/PkgResCache;->nullString:Ljava/lang/String;

    invoke-virtual {v8, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 322
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #res:Landroid/content/res/Resources;
    :cond_7
    :try_start_4
    iget-object v8, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :cond_8
    move-object v8, v7

    .line 323
    goto :goto_5
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;)V
    .locals 4
    .parameter "item"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 350
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 351
    .local v0, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 359
    :goto_0
    return-void

    .line 354
    :cond_0
    iput v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 355
    iput-object v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 356
    iput v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 357
    iput-object v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 6
    .parameter "item"
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    .line 376
    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_4

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 378
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_0
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 379
    .local v1, iconId:I
    iput-object v4, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 381
    const/4 v3, 0x0

    .line 382
    .local v3, labelId:I
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 383
    .local v2, label:Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    .line 384
    iget v3, p2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 385
    if-nez v3, :cond_0

    .line 386
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 387
    if-nez v2, :cond_0

    .line 388
    iget v3, v0, Landroid/content/pm/ComponentInfo;->labelRes:I

    .line 389
    if-nez v3, :cond_0

    .line 390
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 391
    if-nez v2, :cond_0

    .line 392
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v5, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 397
    :cond_0
    iput v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    .line 398
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_1
    iput-object v4, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 400
    if-nez v1, :cond_2

    if-eqz v3, :cond_3

    .line 401
    :cond_2
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, p1, v0}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V

    .line 403
    :cond_3
    return-void

    .line 376
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    .end local v1           #iconId:I
    .end local v2           #label:Ljava/lang/CharSequence;
    .end local v3           #labelId:I
    :cond_4
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getUnavailableIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "res"
    .parameter "resId"
    .parameter "pkgName"

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 420
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 427
    :goto_0
    if-nez v1, :cond_0

    .line 428
    :try_start_1
    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 430
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 434
    .local v2, newIcon:Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 421
    .end local v2           #newIcon:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v3, "PkgResCache"

    const-string v4, "Cound not call getCSCPackageItemIcon. This should only happen when running on a device without CSC related features"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 432
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    .restart local v2       #newIcon:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method public loadString(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "res"
    .parameter "resId"
    .parameter "pkgName"

    .prologue
    .line 448
    const/4 v2, 0x0

    .line 451
    .local v2, text:Ljava/lang/CharSequence;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 458
    :goto_0
    if-nez v2, :cond_0

    .line 459
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 461
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 465
    .local v1, newString:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 452
    .end local v1           #newString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v3, "PkgResCache"

    const-string v4, "Could not call getCSCPackageItemText. This should only happen when running on a device without CSC related features"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 463
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1       #newString:Ljava/lang/String;
    goto :goto_1
.end method

.method public refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V
    .locals 4
    .parameter "cn"
    .parameter "item"

    .prologue
    .line 554
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 558
    .local v0, ci:Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, v0}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Ljava/lang/String;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ComponentInfo;)V

    .line 561
    :cond_0
    return-void

    .line 555
    .end local v0           #ci:Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 556
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #ci:Landroid/content/pm/ActivityInfo;
    goto :goto_0
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
