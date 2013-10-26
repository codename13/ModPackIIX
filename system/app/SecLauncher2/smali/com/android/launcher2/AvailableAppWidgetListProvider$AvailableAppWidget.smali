.class Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;
.super Ljava/lang/Object;
.source "AvailableAppWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableAppWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableAppWidget"
.end annotation


# instance fields
.field private mCachedPreview:Landroid/graphics/Bitmap;

.field private mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field final synthetic this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AvailableAppWidgetListProvider;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0
    .parameter
    .parameter "providerInfo"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 66
    return-void
.end method


# virtual methods
.method public canUninstall()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v3, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    #getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 80
    .local v1, pkgMgr:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 81
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x81

    if-nez v3, :cond_0

    .line 82
    const/4 v2, 0x1

    .line 86
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 84
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public cleanupCache()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 219
    sget-boolean v0, Lcom/android/launcher2/AvailableWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "AvailableAppWidgetListProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting to NULL, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->CACHED_PREVIEW:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_2
    return-void
.end method

.method public createHomePendingItem()Lcom/android/launcher2/HomePendingItem;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    new-instance v1, Lcom/android/launcher2/HomePendingWidget;

    iget-object v4, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v1, v4, v5, v5}, Lcom/android/launcher2/HomePendingWidget;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    .local v1, w:Lcom/android/launcher2/HomePendingWidget;
    const/4 v4, 0x2

    new-array v0, v4, [I

    .line 93
    .local v0, spanXY:[I
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->getCellSpan([I)V

    .line 94
    aget v4, v0, v3

    iput v4, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 95
    aget v4, v0, v2

    iput v4, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->canUninstall()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    .line 97
    return-object v1

    :cond_0
    move v2, v3

    .line 96
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 232
    .local v0, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   label=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" previewImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " configure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initialLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public getCellSpan([I)V
    .locals 2
    .parameter "out"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    #getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;
    invoke-static {v0}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    .line 74
    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPreview(II)Landroid/graphics/Bitmap;
    .locals 32
    .parameter "cellWidth"
    .parameter "cellHeight"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v22, v0

    .line 103
    .local v22, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v22

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_0

    .line 104
    sget-object v4, Lcom/android/launcher2/AvailableAppWidgetListProvider;->CACHED_PREVIEW:Ljava/util/Map;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :goto_0
    monitor-exit p0

    return-object v3

    .line 109
    :cond_1
    :try_start_1
    const-string v4, "AvailableAppWidgetListProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "widget: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", cellWidth: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", cellHeight: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", minX: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", minY: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", rMinX: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", rMinY: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    #getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 117
    .local v26, packageManager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 118
    .local v27, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 119
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 120
    .local v3, preview:Landroid/graphics/Bitmap;
    move-object/from16 v0, v22

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_2

    .line 121
    move-object/from16 v0, v22

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 122
    if-nez v2, :cond_9

    .line 123
    const-string v4, "AvailableAppWidgetListProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t load icon drawable 0x"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " for provider: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    :goto_1
    if-nez v2, :cond_7

    .line 149
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 150
    .local v17, cellSpans:[I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->getCellSpan([I)V

    .line 151
    const/4 v4, 0x0

    aget v16, v17, v4

    .line 152
    .local v16, cellHSpan:I
    const/4 v4, 0x1

    aget v18, v17, v4

    .line 154
    .local v18, cellVSpan:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->this$0:Lcom/android/launcher2/AvailableAppWidgetListProvider;

    #getter for: Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/launcher2/AvailableAppWidgetListProvider;->access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 155
    .local v28, resources:Landroid/content/res/Resources;
    const v4, 0x7f0c0002

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 156
    .local v15, appIconSize:I
    const v4, 0x7f0c0048

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 157
    .local v24, layoutCellWidth:I
    const v4, 0x7f0c0049

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 161
    .local v23, layoutCellHeight:I
    mul-int v31, v24, v16

    .line 162
    .local v31, targetWidth:I
    mul-int v30, v23, v18

    .line 163
    .local v30, targetHeight:I
    move/from16 v6, v31

    .line 164
    .local v6, bitmapWidth:I
    move/from16 v7, v30

    .line 165
    .local v7, bitmapHeight:I
    int-to-float v4, v15

    const/high16 v5, 0x3e80

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v25, v0

    .line 166
    .local v25, minOffset:I
    const/high16 v19, 0x3f80

    .line 169
    .local v19, iconScale:F
    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 171
    const/4 v4, 0x1

    move/from16 v0, v16

    if-gt v0, v4, :cond_11

    .line 172
    mul-int/lit8 v4, v25, 0x2

    add-int v7, v15, v4

    move v6, v7

    .line 188
    :goto_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 189
    const/4 v4, 0x1

    move/from16 v0, v16

    if-ne v0, v4, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v18

    if-eq v0, v4, :cond_4

    .line 190
    :cond_3
    const v4, 0x7f020022

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 191
    .local v8, defaultBackground:Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v3

    move v12, v6

    move v13, v7

    invoke-static/range {v8 .. v13}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v8           #defaultBackground:Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v9, 0x0

    .line 198
    .local v9, icon:Landroid/graphics/drawable/Drawable;
    :try_start_2
    div-int/lit8 v4, v6, 0x2

    int-to-float v4, v4

    int-to-float v5, v15

    mul-float v5, v5, v19

    const/high16 v10, 0x4000

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    float-to-int v11, v4

    .line 199
    .local v11, hoffset:I
    div-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    int-to-float v5, v15

    mul-float v5, v5, v19

    const/high16 v10, 0x4000

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    float-to-int v12, v4

    .line 200
    .local v12, yoffset:I
    move-object/from16 v0, v22

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-lez v4, :cond_5

    move-object/from16 v0, v22

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 201
    :cond_5
    if-nez v9, :cond_6

    const v4, 0x7f02006b

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 203
    :cond_6
    int-to-float v4, v15

    mul-float v4, v4, v19

    float-to-int v13, v4

    int-to-float v4, v15

    mul-float v4, v4, v19

    float-to-int v14, v4

    move-object v10, v3

    invoke-static/range {v9 .. v14}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 209
    .end local v6           #bitmapWidth:I
    .end local v7           #bitmapHeight:I
    .end local v9           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #hoffset:I
    .end local v12           #yoffset:I
    .end local v15           #appIconSize:I
    .end local v16           #cellHSpan:I
    .end local v17           #cellSpans:[I
    .end local v18           #cellVSpan:I
    .end local v19           #iconScale:F
    .end local v23           #layoutCellHeight:I
    .end local v24           #layoutCellWidth:I
    .end local v25           #minOffset:I
    .end local v28           #resources:Landroid/content/res/Resources;
    .end local v30           #targetHeight:I
    .end local v31           #targetWidth:I
    :cond_7
    :goto_3
    :try_start_3
    move-object/from16 v0, v22

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v4, :cond_8

    .line 210
    sget-object v4, Lcom/android/launcher2/AvailableAppWidgetListProvider;->CACHED_PREVIEW:Ljava/util/Map;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_8
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;->mCachedPreview:Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 102
    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #preview:Landroid/graphics/Bitmap;
    .end local v22           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v26           #packageManager:Landroid/content/pm/PackageManager;
    .end local v27           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 126
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #preview:Landroid/graphics/Bitmap;
    .restart local v22       #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v26       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v27       #packageName:Ljava/lang/String;
    :cond_9
    :try_start_4
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    .line 127
    .local v21, imageWidth:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    .line 128
    .local v20, imageHeight:I
    move/from16 v6, v21

    .line 129
    .restart local v6       #bitmapWidth:I
    move/from16 v7, v20

    .line 130
    .restart local v7       #bitmapHeight:I
    move-object/from16 v0, v22

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    move/from16 v0, v21

    if-lt v0, v4, :cond_a

    move-object/from16 v0, v22

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_d

    :cond_a
    const/16 v29, 0x1

    .line 131
    .local v29, scale_up:Z
    :goto_4
    if-nez v29, :cond_b

    move/from16 v0, v21

    move/from16 v1, p1

    if-gt v0, v1, :cond_b

    move/from16 v0, v20

    move/from16 v1, p2

    if-le v0, v1, :cond_c

    .line 133
    :cond_b
    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_f

    .line 134
    if-eqz v29, :cond_e

    move-object/from16 v0, v22

    iget v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 136
    :goto_5
    move/from16 v0, v20

    int-to-float v4, v0

    int-to-float v5, v6

    move/from16 v0, v21

    int-to-float v10, v0

    div-float/2addr v5, v10

    mul-float/2addr v4, v5

    float-to-int v7, v4

    .line 143
    :cond_c
    :goto_6
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 144
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    goto/16 :goto_1

    .line 130
    .end local v29           #scale_up:Z
    :cond_d
    const/16 v29, 0x0

    goto :goto_4

    .line 135
    .restart local v29       #scale_up:Z
    :cond_e
    add-int/lit8 v6, p1, -0x1

    goto :goto_5

    .line 138
    :cond_f
    if-eqz v29, :cond_10

    move-object/from16 v0, v22

    iget v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 140
    :goto_7
    move/from16 v0, v21

    int-to-float v4, v0

    int-to-float v5, v7

    move/from16 v0, v20

    int-to-float v10, v0

    div-float/2addr v5, v10

    mul-float/2addr v4, v5

    float-to-int v6, v4

    goto :goto_6

    .line 139
    :cond_10
    add-int/lit8 v7, p2, -0x1

    goto :goto_7

    .line 174
    .end local v20           #imageHeight:I
    .end local v21           #imageWidth:I
    .end local v29           #scale_up:Z
    .restart local v15       #appIconSize:I
    .restart local v16       #cellHSpan:I
    .restart local v17       #cellSpans:[I
    .restart local v18       #cellVSpan:I
    .restart local v19       #iconScale:F
    .restart local v23       #layoutCellHeight:I
    .restart local v24       #layoutCellWidth:I
    .restart local v25       #minOffset:I
    .restart local v28       #resources:Landroid/content/res/Resources;
    .restart local v30       #targetHeight:I
    .restart local v31       #targetWidth:I
    :cond_11
    mul-int/lit8 v4, v25, 0x4

    add-int v7, v15, v4

    move v6, v7

    goto/16 :goto_2

    .line 178
    :cond_12
    move/from16 v0, v31

    move/from16 v1, v30

    if-le v0, v1, :cond_13

    .line 179
    move/from16 v0, v31

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 180
    move/from16 v0, v30

    int-to-float v4, v0

    int-to-float v5, v6

    move/from16 v0, v31

    int-to-float v10, v0

    div-float/2addr v5, v10

    mul-float/2addr v4, v5

    float-to-int v7, v4

    .line 181
    int-to-float v4, v7

    mul-int/lit8 v5, v25, 0x2

    add-int/2addr v5, v15

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v19

    goto/16 :goto_2

    .line 183
    :cond_13
    move/from16 v0, v30

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 184
    move/from16 v0, v31

    int-to-float v4, v0

    int-to-float v5, v7

    move/from16 v0, v30

    int-to-float v10, v0

    div-float/2addr v5, v10

    mul-float/2addr v4, v5

    float-to-int v6, v4

    .line 185
    int-to-float v4, v6

    mul-int/lit8 v5, v25, 0x2

    add-int/2addr v5, v15

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v19

    goto/16 :goto_2

    .line 206
    .restart local v9       #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    goto/16 :goto_3

    .line 149
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
