.class Lcom/android/launcher2/LauncherModel$13;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->reloadBadges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;)V
    .locals 0
    .parameter

    .prologue
    .line 2445
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2448
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mBadgeCache:Lcom/android/launcher2/BadgeCache;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$3200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/BadgeCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/BadgeCache;->updateBadgeCounts()Ljava/util/Map;

    move-result-object v1

    .line 2449
    .local v1, badges:Ljava/util/Map;,"Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/launcher2/BadgeCache$BadgeCount;>;"
    if-eqz v1, :cond_2

    .line 2450
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1900(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/MenuAppLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher2/MenuAppLoader;->updateBadgeCounts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 2451
    .local v0, appItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHomeLoader:Lcom/android/launcher2/HomeLoader;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$3100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/HomeLoader;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$100()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/launcher2/HomeLoader;->updateBadgeCounts(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 2452
    .local v2, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2453
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    .line 2454
    .local v3, origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 2455
    :cond_1
    const-string v4, "Launcher.Model"

    const-string v5, "Nobody to tell about new badge counts. Launcher is not running."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    .end local v0           #appItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .end local v2           #homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .end local v3           #origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    :cond_2
    :goto_0
    return-void

    .line 2458
    .restart local v0       #appItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    .restart local v2       #homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .restart local v3       #origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$13$1;

    invoke-direct {v5, p0, v3, v0, v2}, Lcom/android/launcher2/LauncherModel$13$1;-><init>(Lcom/android/launcher2/LauncherModel$13;Ljava/lang/ref/WeakReference;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
