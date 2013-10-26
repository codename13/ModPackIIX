.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;
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
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 2049
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2050
    iput p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 2051
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 2052
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2057
    iget-object v8, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 2058
    .local v8, packages:[Ljava/lang/String;
    array-length v0, v8

    .line 2059
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2060
    .local v3, homeRemoved:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2061
    .local v4, homeUpdated:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    packed-switch v11, :pswitch_data_0

    .line 2091
    :cond_0
    const/4 v1, 0x0

    .line 2092
    .local v1, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/4 v9, 0x0

    .line 2093
    .local v9, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    const/4 v6, 0x0

    .line 2095
    .local v6, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 2096
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    iget-object v1, v11, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 2097
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    .line 2099
    :cond_1
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 2100
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    iget-object v9, v11, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    .line 2101
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    .line 2103
    :cond_2
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    iget-object v11, v11, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 2104
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    iget-object v6, v11, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 2105
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    .line 2109
    :cond_3
    if-nez v1, :cond_4

    if-eqz v9, :cond_5

    .line 2110
    :cond_4
    move-object v2, v1

    .line 2111
    .local v2, addedFinal:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    move-object v10, v9

    .line 2112
    .local v10, removedFinal:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;

    invoke-direct {v12, p0, v2, v10}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2121
    .end local v2           #addedFinal:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v10           #removedFinal:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    :cond_5
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    .line 2122
    .local v7, origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_a

    .line 2123
    :cond_6
    const-string v11, "Launcher.Model"

    const-string v12, "Nobody to tell about the app changes. Launcher is not running."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :goto_0
    return-void

    .line 2063
    .end local v1           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v6           #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v7           #origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    .end local v9           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    :pswitch_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v0, :cond_0

    .line 2064
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2900()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMenuAppLoader.addPackage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_7
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$3000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/PkgResCache;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2069
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppLoader;->addPackage(Ljava/lang/String;)V

    .line 2063
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2073
    .end local v5           #i:I
    :pswitch_1
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    if-ge v5, v0, :cond_0

    .line 2074
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2900()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMenuAppLoader.updatePackage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_8
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$3000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/PkgResCache;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2076
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppLoader;->updatePackage(Ljava/lang/String;)V

    .line 2077
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$3100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v11, v12, v13, v3, v4}, Lcom/android/launcher2/HomeLoader;->updatePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 2073
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2082
    .end local v5           #i:I
    :pswitch_2
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v0, :cond_0

    .line 2083
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$2900()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v11, "Launcher.Model"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mMenuAppLoader.removePackage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    :cond_9
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$3000(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/PkgResCache;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PkgResCache;->removePackage(Ljava/lang/String;)V

    .line 2085
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v11

    aget-object v12, v8, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuAppLoader;->removePackage(Ljava/lang/String;)V

    .line 2086
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$3100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v12

    aget-object v13, v8, v5

    invoke-virtual {v11, v12, v13, v3}, Lcom/android/launcher2/HomeLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 2082
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2126
    .end local v5           #i:I
    .restart local v1       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v6       #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .restart local v7       #origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    .restart local v9       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 2127
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;

    invoke-direct {v12, p0, v7, v4}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2137
    :cond_b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    .line 2138
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;

    invoke-direct {v12, p0, v7, v3}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Ljava/util/List;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2149
    :cond_c
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v11}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    new-instance v12, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;

    invoke-direct {v12, p0, v7}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v11, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2061
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
