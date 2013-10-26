.class Lcom/android/launcher2/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mIsLaunching:Z

.field private mStep1Finished:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Z)V
    .locals 0
    .parameter
    .parameter "isLaunching"

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 1214
    return-void
.end method

.method static synthetic access$1002(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1207
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1207
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method private bindWorkspace()V
    .locals 12

    .prologue
    .line 1793
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1795
    .local v6, t:J
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1797
    const-string v10, "Launcher.Model"

    const-string v11, "LoaderTask running with no launcher"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :goto_0
    return-void

    .line 1803
    :cond_0
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$3;

    invoke-direct {v11, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1814
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #calls: Lcom/android/launcher2/LauncherModel;->unbindWorkspaceItemsOnMainThread()Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v9

    .line 1817
    .local v9, workspaceItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1818
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 1819
    move v5, v4

    .line 1820
    .local v5, start:I
    add-int/lit8 v10, v4, 0x6

    if-gt v10, v0, :cond_1

    const/4 v1, 0x6

    .line 1821
    .local v1, chunkSize:I
    :goto_2
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$4;

    invoke-direct {v11, p0, v9, v5, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/ArrayList;II)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1818
    add-int/lit8 v4, v4, 0x6

    goto :goto_1

    .line 1820
    .end local v1           #chunkSize:I
    :cond_1
    sub-int v1, v0, v4

    goto :goto_2

    .line 1832
    .end local v5           #start:I
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1833
    .local v3, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$5;

    invoke-direct {v11, p0, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/HashMap;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1843
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$6;

    invoke-direct {v11, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1857
    const/4 v2, 0x0

    .line 1858
    .local v2, currentScreen:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1860
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_4

    .line 1861
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeWidgetItem;

    .line 1862
    .local v8, widget:Lcom/android/launcher2/HomeWidgetItem;
    iget v10, v8, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-nez v10, :cond_3

    .line 1863
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$7;

    invoke-direct {v11, p0, v8}, Lcom/android/launcher2/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1860
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1875
    .end local v8           #widget:Lcom/android/launcher2/HomeWidgetItem;
    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_6

    .line 1876
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeWidgetItem;

    .line 1877
    .restart local v8       #widget:Lcom/android/launcher2/HomeWidgetItem;
    iget v10, v8, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eqz v10, :cond_5

    .line 1878
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$8;

    invoke-direct {v11, p0, v8}, Lcom/android/launcher2/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1875
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1891
    .end local v8           #widget:Lcom/android/launcher2/HomeWidgetItem;
    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1892
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v0, :cond_7

    .line 1893
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .line 1894
    .local v8, widget:Lcom/android/launcher2/SamsungAppWidgetInfo;
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$9;

    invoke-direct {v11, p0, v8}, Lcom/android/launcher2/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1892
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1906
    .end local v8           #widget:Lcom/android/launcher2/SamsungAppWidgetInfo;
    :cond_7
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$10;

    invoke-direct {v11, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1916
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v10}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v10

    new-instance v11, Lcom/android/launcher2/LauncherModel$LoaderTask$11;

    invoke-direct {v11, p0, v6, v7}, Lcom/android/launcher2/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;J)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z
    .locals 10
    .parameter "occupied"
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1411
    iget v0, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1412
    .local v0, containerIndex:I
    iget-wide v6, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1415
    iget v6, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-static {v6}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1452
    :goto_0
    return v4

    .line 1418
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    .line 1419
    .local v1, maxScreenCount:I
    aget-object v6, p1, v1

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v6, v6, v7

    aget-object v6, v6, v4

    if-eqz v6, :cond_1

    .line 1420
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut into hotseat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into position ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") occupied by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    iget v8, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v7, v7, v8

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1425
    :cond_1
    aget-object v6, p1, v1

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v6, v6, v7

    aput-object p2, v6, v4

    move v4, v5

    .line 1426
    goto :goto_0

    .line 1428
    .end local v1           #maxScreenCount:I
    :cond_2
    iget-wide v6, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    move v4, v5

    .line 1430
    goto :goto_0

    .line 1434
    :cond_3
    iget v2, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    .local v2, x:I
    :goto_1
    iget v6, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, p2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_6

    .line 1435
    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    .local v3, y:I
    :goto_2
    iget v6, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, p2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_5

    .line 1436
    aget-object v6, p1, v0

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    if-eqz v6, :cond_4

    .line 1437
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into cell ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") occupied by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1435
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1434
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1446
    .end local v3           #y:I
    :cond_6
    iget v2, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_3
    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v4, v6

    if-ge v2, v4, :cond_8

    .line 1447
    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    .restart local v3       #y:I
    :goto_4
    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v4, v6

    if-ge v3, v4, :cond_7

    .line 1448
    aget-object v4, p1, v0

    aget-object v4, v4, v2

    aput-object p2, v4, v3

    .line 1447
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1446
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v3           #y:I
    :cond_8
    move v4, v5

    .line 1452
    goto/16 :goto_0
.end method

.method private getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 4

    .prologue
    .line 1781
    const/4 v1, 0x0

    .line 1782
    .local v1, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1783
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    .line 1784
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v0

    .line 1785
    :cond_0
    monitor-exit v3

    .line 1786
    return-object v1

    .line 1785
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadAllApps()V
    .locals 3

    .prologue
    .line 1977
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems()Ljava/util/Map;

    move-result-object v0

    .line 1978
    .local v0, allApps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1981
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    #setter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$1502(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 1982
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/LauncherModel$LoaderTask$14;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$14;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1991
    :cond_0
    return-void
.end method

.method private loadAndBindAllApps()V
    .locals 3

    .prologue
    .line 1929
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindAllApps mAllAppsLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1932
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllApps()V

    .line 1933
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1935
    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask aborted or running with no launcher (bindAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$12;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$12;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1948
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps()V

    .line 1950
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    .line 1952
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1223
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$800(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1227
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace(Z)V

    .line 1229
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_1

    .line 1230
    invoke-direct {p0, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace(Z)V

    .line 1235
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_4

    .line 1236
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1242
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_3

    .line 1243
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V

    .line 1244
    :cond_3
    return-void

    .line 1238
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #setter for: Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z
    invoke-static {v0, v3}, Lcom/android/launcher2/LauncherModel;->access$802(Lcom/android/launcher2/LauncherModel;Z)Z

    goto :goto_0
.end method

.method private loadWorkspace(Z)V
    .locals 63
    .parameter "isCP"

    .prologue
    .line 1456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v57

    .line 1458
    .local v57, t:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1459
    .local v3, contentResolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 1460
    .local v19, manager:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v60

    .line 1461
    .local v60, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v41

    .line 1463
    .local v41, isSafeMode:Z
    if-nez p1, :cond_0

    .line 1464
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1465
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1466
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1467
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1468
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1469
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1472
    :cond_0
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    .local v44, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI(Z)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1480
    .local v8, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v47

    .line 1481
    .local v47, maxScreenCount:I
    add-int/lit8 v4, v47, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2000()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2100()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    filled-new-array {v4, v5, v7}, [I

    move-result-object v4

    const-class v5, Lcom/android/launcher2/HomeItem;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, [[[Lcom/android/launcher2/HomeItem;

    .line 1485
    .local v48, occupied:[[[Lcom/android/launcher2/HomeItem;
    :try_start_0
    const-string v4, "_id"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 1486
    .local v37, idIndex:I
    const-string v4, "intent"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 1488
    .local v40, intentIndex:I
    const-string v4, "title"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1490
    .local v10, titleIndex:I
    const-string v4, "iconType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1492
    .local v14, iconTypeIndex:I
    const-string v4, "icon"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1493
    .local v9, iconIndex:I
    const-string v4, "iconPackage"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1495
    .local v15, iconPackageIndex:I
    const-string v4, "iconResource"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1497
    .local v16, iconResourceIndex:I
    const-string v4, "container"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 1499
    .local v30, containerIndex:I
    const-string v4, "itemType"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 1501
    .local v43, itemTypeIndex:I
    const-string v4, "appWidgetId"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 1503
    .local v23, appWidgetIdIndex:I
    const-string v4, "screen"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 1505
    .local v54, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 1507
    .local v25, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1509
    .local v26, cellYIndex:I
    const-string v4, "spanX"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v55

    .line 1511
    .local v55, spanXIndex:I
    const-string v4, "spanY"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v56

    .line 1521
    .local v56, spanYIndex:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v4, :cond_f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_f

    .line 1523
    :try_start_1
    move/from16 v0, v43

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 1525
    .local v42, itemType:I
    sparse-switch v42, :sswitch_data_0

    goto :goto_0

    .line 1528
    :sswitch_0
    move/from16 v0, v40

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v39

    .line 1530
    .local v39, intentDescription:Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v39

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 1535
    .local v6, intent:Landroid/content/Intent;
    if-eqz v41, :cond_3

    .line 1537
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v50

    .line 1538
    .local v50, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v50

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    .line 1540
    .local v21, activity:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    .line 1728
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1769
    .end local v6           #intent:Landroid/content/Intent;
    .end local v21           #activity:Landroid/content/pm/ActivityInfo;
    .end local v39           #intentDescription:Ljava/lang/String;
    .end local v42           #itemType:I
    .end local v50           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void

    .line 1531
    .restart local v39       #intentDescription:Ljava/lang/String;
    .restart local v42       #itemType:I
    :catch_0
    move-exception v31

    .local v31, e:Ljava/net/URISyntaxException;
    goto :goto_0

    .line 1545
    .end local v31           #e:Ljava/net/URISyntaxException;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_3
    if-nez v42, :cond_5

    .line 1546
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v5}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    move-object/from16 v5, v19

    #calls: Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;
    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel;->access$2200(Lcom/android/launcher2/LauncherModel;Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v38

    .line 1554
    .local v38, info:Lcom/android/launcher2/HomeShortcutItem;
    :goto_1
    if-eqz v38, :cond_7

    .line 1555
    move-object/from16 v0, v38

    iput-object v6, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 1556
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v38

    iput-wide v4, v0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 1557
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1558
    .local v28, container:J
    move-wide/from16 v0, v28

    move-object/from16 v2, v38

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    .line 1559
    move/from16 v0, v54

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1560
    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1561
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1563
    move/from16 v0, p1

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 1566
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1570
    const-wide/16 v4, -0x64

    cmp-long v4, v28, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x65

    cmp-long v4, v28, v4

    if-nez v4, :cond_6

    .line 1572
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v38

    iget-wide v11, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v38

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v5

    move-object/from16 v0, v38

    #calls: Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    invoke-static {v4, v5, v0, v8, v9}, Lcom/android/launcher2/LauncherModel;->access$2500(Lcom/android/launcher2/LauncherModel;Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 1723
    .end local v6           #intent:Landroid/content/Intent;
    .end local v28           #container:J
    .end local v38           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v39           #intentDescription:Ljava/lang/String;
    .end local v42           #itemType:I
    :catch_1
    move-exception v31

    .line 1724
    .local v31, e:Ljava/lang/Exception;
    :try_start_5
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    move-object/from16 v0, v31

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1728
    .end local v9           #iconIndex:I
    .end local v10           #titleIndex:I
    .end local v14           #iconTypeIndex:I
    .end local v15           #iconPackageIndex:I
    .end local v16           #iconResourceIndex:I
    .end local v23           #appWidgetIdIndex:I
    .end local v25           #cellXIndex:I
    .end local v26           #cellYIndex:I
    .end local v30           #containerIndex:I
    .end local v31           #e:Ljava/lang/Exception;
    .end local v37           #idIndex:I
    .end local v40           #intentIndex:I
    .end local v43           #itemTypeIndex:I
    .end local v54           #screenIndex:I
    .end local v55           #spanXIndex:I
    .end local v56           #spanYIndex:I
    :catchall_0
    move-exception v4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1549
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v9       #iconIndex:I
    .restart local v10       #titleIndex:I
    .restart local v14       #iconTypeIndex:I
    .restart local v15       #iconPackageIndex:I
    .restart local v16       #iconResourceIndex:I
    .restart local v23       #appWidgetIdIndex:I
    .restart local v25       #cellXIndex:I
    .restart local v26       #cellYIndex:I
    .restart local v30       #containerIndex:I
    .restart local v37       #idIndex:I
    .restart local v39       #intentDescription:Ljava/lang/String;
    .restart local v40       #intentIndex:I
    .restart local v42       #itemType:I
    .restart local v43       #itemTypeIndex:I
    .restart local v54       #screenIndex:I
    .restart local v55       #spanXIndex:I
    .restart local v56       #spanYIndex:I
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v13

    move-object v12, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move-object/from16 v20, v6

    #calls: Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;
    invoke-static/range {v11 .. v20}, Lcom/android/launcher2/LauncherModel;->access$2300(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v38

    .restart local v38       #info:Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 1576
    .restart local v28       #container:J
    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v4

    move-wide/from16 v0, v28

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->access$2400(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v33

    .line 1578
    .local v33, folderInfo:Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->loadItem(Lcom/android/launcher2/HomeItem;)V

    goto :goto_2

    .line 1590
    .end local v28           #container:J
    .end local v33           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    :cond_7
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 1591
    .local v35, id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", removing it"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Z

    move-result v5

    move-wide/from16 v0, v35

    invoke-static {v0, v1, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1598
    .end local v6           #intent:Landroid/content/Intent;
    .end local v35           #id:J
    .end local v38           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v39           #intentDescription:Ljava/lang/String;
    :sswitch_1
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 1599
    .restart local v35       #id:J
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v4

    move-wide/from16 v0, v35

    #calls: Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;
    invoke-static {v4, v0, v1}, Lcom/android/launcher2/LauncherModel;->access$2400(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v33

    .line 1601
    .restart local v33       #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    iput-object v4, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 1602
    move-wide/from16 v0, v35

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 1603
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 1604
    .restart local v28       #container:J
    move-wide/from16 v0, v28

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    .line 1605
    move/from16 v0, v54

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1606
    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1607
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v33

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1609
    move/from16 v0, p1

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 1612
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1615
    const-wide/16 v4, -0x64

    cmp-long v4, v28, v4

    if-eqz v4, :cond_8

    const-wide/16 v4, -0x65

    cmp-long v4, v28, v4

    if-nez v4, :cond_9

    .line 1617
    :cond_8
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1619
    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v33

    iget-wide v11, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v33

    iget-wide v11, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1625
    .end local v28           #container:J
    .end local v33           #folderInfo:Lcom/android/launcher2/HomeFolderItem;
    .end local v35           #id:J
    :sswitch_2
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1626
    .local v22, appWidgetId:I
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 1628
    .restart local v35       #id:J
    move-object/from16 v0, v60

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v49

    .line 1631
    .local v49, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v41, :cond_b

    if-eqz v49, :cond_a

    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v4, :cond_a

    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 1633
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v35

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appWidgetId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 1635
    .local v46, log:Ljava/lang/String;
    const-string v4, "Launcher.Model"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    sget-object v4, Lcom/android/launcher2/HomeFragment;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1637
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1639
    .end local v46           #log:Ljava/lang/String;
    :cond_b
    new-instance v24, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v49

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    .line 1640
    .local v24, appWidgetInfo:Lcom/android/launcher2/HomeWidgetItem;
    move-wide/from16 v0, v35

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 1641
    move/from16 v0, v54

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1642
    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1643
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1644
    move/from16 v0, v55

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1645
    move/from16 v0, v56

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1647
    move/from16 v0, p1

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 1649
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v28, v0

    .line 1650
    .restart local v28       #container:J
    const-wide/16 v4, -0x64

    cmp-long v4, v28, v4

    if-eqz v4, :cond_c

    const-wide/16 v4, -0x65

    cmp-long v4, v28, v4

    if-eqz v4, :cond_c

    .line 1652
    const-string v4, "Launcher.Model"

    const-string v5, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1656
    :cond_c
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 1659
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1662
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v24

    iget-wide v11, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1663
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1668
    .end local v22           #appWidgetId:I
    .end local v24           #appWidgetInfo:Lcom/android/launcher2/HomeWidgetItem;
    .end local v28           #container:J
    .end local v35           #id:J
    .end local v49           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_3
    new-instance v53, Lcom/android/launcher2/SamsungAppWidgetInfo;

    invoke-direct/range {v53 .. v53}, Lcom/android/launcher2/SamsungAppWidgetInfo;-><init>()V

    .line 1669
    .local v53, sappWidgetInfo:Lcom/android/launcher2/SamsungAppWidgetInfo;
    move/from16 v0, v37

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 1670
    .restart local v35       #id:J
    move-wide/from16 v0, v35

    move-object/from16 v2, v53

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    .line 1671
    move/from16 v0, v54

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v53

    iput v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 1672
    move/from16 v0, v25

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v53

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1673
    move/from16 v0, v26

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v53

    iput v4, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1674
    move/from16 v0, v55

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v53

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 1675
    move/from16 v0, v56

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, v53

    iput v4, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 1676
    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v53

    iput-wide v4, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    .line 1678
    move/from16 v0, p1

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 1680
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v28, v0

    .line 1681
    .restart local v28       #container:J
    const-wide/16 v4, -0x64

    cmp-long v4, v28, v4

    if-eqz v4, :cond_d

    const-wide/16 v4, -0x65

    cmp-long v4, v28, v4

    if-eqz v4, :cond_d

    .line 1683
    const-string v4, "Launcher.Model"

    const-string v5, "Samsung Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1687
    :cond_d
    move/from16 v0, v30

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v53

    iput-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    .line 1689
    move/from16 v0, v40

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v59

    .line 1690
    .local v59, uri:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1692
    .restart local v6       #intent:Landroid/content/Intent;
    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, v59

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v6

    .line 1696
    :try_start_8
    move-object/from16 v0, v53

    iput-object v6, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 1699
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v51

    .line 1700
    .local v51, ri:Landroid/content/pm/ResolveInfo;
    if-nez v51, :cond_e

    .line 1701
    const-string v4, "Launcher.Model"

    const-string v5, "Can\'t resolve SamsungWidget\'s activity. Deleting it."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    .line 1693
    .end local v51           #ri:Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v31

    .local v31, e:Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1706
    .end local v31           #e:Ljava/net/URISyntaxException;
    .restart local v51       #ri:Landroid/content/pm/ResolveInfo;
    :cond_e
    :try_start_9
    move-object/from16 v0, v51

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1715
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1718
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v53

    iget-wide v11, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1707
    :catch_3
    move-exception v31

    .line 1708
    .local v31, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Launcher.Model"

    const-string v5, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 1728
    .end local v6           #intent:Landroid/content/Intent;
    .end local v28           #container:J
    .end local v31           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v35           #id:J
    .end local v42           #itemType:I
    .end local v51           #ri:Landroid/content/pm/ResolveInfo;
    .end local v53           #sappWidgetInfo:Lcom/android/launcher2/SamsungAppWidgetInfo;
    .end local v59           #uri:Ljava/lang/String;
    :cond_f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1731
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$400()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/HomeFolderItem;

    .line 1732
    .local v32, folder:Lcom/android/launcher2/HomeFolderItem;
    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    goto :goto_3

    .line 1735
    .end local v32           #folder:Lcom/android/launcher2/HomeFolderItem;
    :cond_10
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 1736
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI(Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v27

    .line 1739
    .local v27, client:Landroid/content/ContentProviderClient;
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_4
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    .line 1741
    .restart local v35       #id:J
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/4 v4, 0x0

    :try_start_b
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$300()Z

    move-result v5

    move-wide/from16 v0, v35

    invoke-static {v0, v1, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZZ)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v5, v7}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_4

    .line 1747
    :catch_4
    move-exception v31

    .line 1748
    .local v31, e:Landroid/os/RemoteException;
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not remove id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1754
    .end local v27           #client:Landroid/content/ContentProviderClient;
    .end local v31           #e:Landroid/os/RemoteException;
    .end local v35           #id:J
    :cond_11
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loaded workspace in "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long v11, v11, v57

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const-string v4, "Launcher.Model"

    const-string v5, "workspace layout: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/16 v62, 0x0

    .local v62, y:I
    :goto_5
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2100()I

    move-result v4

    move/from16 v0, v62

    if-ge v0, v4, :cond_2

    .line 1757
    const-string v45, ""

    .line 1758
    .local v45, line:Ljava/lang/String;
    const/16 v52, 0x0

    .local v52, s:I
    :goto_6
    move/from16 v0, v52

    move/from16 v1, v47

    if-ge v0, v1, :cond_15

    .line 1759
    if-lez v52, :cond_12

    .line 1760
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 1762
    :cond_12
    const/16 v61, 0x0

    .local v61, x:I
    :goto_7
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2000()I

    move-result v4

    move/from16 v0, v61

    if-ge v0, v4, :cond_14

    .line 1763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, v48, v52

    aget-object v4, v4, v61

    aget-object v4, v4, v62

    if-eqz v4, :cond_13

    const-string v4, "#"

    :goto_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 1762
    add-int/lit8 v61, v61, 0x1

    goto :goto_7

    .line 1763
    :cond_13
    const-string v4, "."

    goto :goto_8

    .line 1758
    :cond_14
    add-int/lit8 v52, v52, 0x1

    goto :goto_6

    .line 1766
    .end local v61           #x:I
    :cond_15
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    add-int/lit8 v62, v62, 0x1

    goto :goto_5

    .line 1525
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch
.end method

.method private postModelRefreshed()V
    .locals 2

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$13;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$13;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1974
    return-void
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 1250
    monitor-enter p0

    .line 1251
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1253
    .local v0, workspaceWaitTime:J
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1266
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1268
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1269
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1274
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    monitor-exit p0

    .line 1279
    return-void

    .line 1278
    .end local v0           #workspaceWaitTime:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1994
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStep1Finished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 1217
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 1289
    const-string v3, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin LoaderTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const/4 v2, 0x1

    .line 1293
    .local v2, loadWorkspaceFirst:Z
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_1

    .line 1373
    :cond_0
    :goto_0
    const-string v3, "Launcher.Model"

    const-string v4, "Comparing loaded icons to database icons"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1375
    .local v1, key:Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1600(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    #calls: Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V
    invoke-static {v6, v7, v3, v4}, Lcom/android/launcher2/LauncherModel;->access$1700(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    goto :goto_1

    .line 1301
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Object;
    :cond_1
    const-string v6, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting thread priority to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_4

    const-string v3, "DEFAULT"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1304
    :try_start_0
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_5

    .line 1305
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1311
    :goto_3
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #calls: Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1312
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #calls: Lcom/android/launcher2/LauncherModel;->setLocaleLocked()V
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1400(Lcom/android/launcher2/LauncherModel;)V

    .line 1313
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v4, 0x1

    #setter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->access$902(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 1328
    :cond_2
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1331
    const-string v3, "Launcher.Model"

    const-string v4, "step 1: loading workspace"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 1338
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_0

    .line 1344
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_3

    .line 1345
    const-string v3, "Launcher.Model"

    const-string v4, "Setting thread priority to BACKGROUND"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1347
    :try_start_1
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_8

    .line 1348
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1353
    :goto_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1355
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V

    .line 1359
    const-string v3, "Launcher.Model"

    const-string v4, "step 2: loading all apps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 1367
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1368
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1369
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1301
    :cond_4
    const-string v3, "BACKGROUND"

    goto :goto_2

    .line 1308
    :cond_5
    :try_start_3
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_6

    move v3, v5

    :goto_6
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_3

    .line 1328
    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_6
    move v3, v4

    .line 1308
    goto :goto_6

    .line 1314
    :cond_7
    :try_start_4
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$900(Lcom/android/launcher2/LauncherModel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1326
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 1351
    :cond_8
    const/16 v3, 0xa

    :try_start_5
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_5

    .line 1353
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 1377
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$700()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1379
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_a

    .line 1381
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #setter for: Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherModel;->access$902(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 1382
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v3}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/LauncherModel$LoaderTask$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1397
    :cond_a
    return-void
.end method

.method public stopLocked()V
    .locals 3

    .prologue
    .line 1400
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping LoaderTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    .line 1402
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->abortLoader()V

    .line 1404
    monitor-enter p0

    .line 1405
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1406
    monitor-exit p0

    .line 1407
    return-void

    .line 1406
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
