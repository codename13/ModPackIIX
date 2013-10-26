.class Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SamsungWidgetPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungWidgetsLoader"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/SamsungWidgetPackageManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SamsungWidgetPackageManager;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 850
    iput-object p1, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 851
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    .line 852
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mContext:Ljava/lang/ref/WeakReference;

    .line 853
    return-void
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 866
    const-string v6, "Launcher.SWidgetPkgMgr"

    const-string v7, "  ----> running samsung widgets loader"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 869
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 870
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 872
    const-string v6, "Launcher.SWidgetPkgMgr"

    const-string v7, "context is a null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iput-boolean v8, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    .line 915
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/android/launcher2/SamsungWidgetPackageManager;

    #calls: Lcom/android/launcher2/SamsungWidgetPackageManager;->loadWidgets(Landroid/content/Context;)Ljava/util/List;
    invoke-static {v6, v0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->access$000(Lcom/android/launcher2/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 878
    .local v5, loadWidgets:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_1

    .line 879
    iput-boolean v8, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    goto :goto_0

    .line 883
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/android/launcher2/SamsungWidgetPackageManager;

    #getter for: Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->access$100(Lcom/android/launcher2/SamsungWidgetPackageManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 885
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 886
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-boolean v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    if-eqz v6, :cond_4

    .line 905
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-boolean v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    if-nez v6, :cond_7

    .line 906
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/android/launcher2/SamsungWidgetPackageManager;

    const/4 v7, 0x1

    #setter for: Lcom/android/launcher2/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z
    invoke-static {v6, v7}, Lcom/android/launcher2/SamsungWidgetPackageManager;->access$402(Lcom/android/launcher2/SamsungWidgetPackageManager;Z)Z

    .line 908
    const-string v6, "Launcher.SWidgetPkgMgr"

    const-string v7, "  ----> samsungwidgets loader completed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :goto_1
    iput-boolean v8, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mRunning:Z

    goto :goto_0

    .line 888
    .restart local v3       #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/android/launcher2/SamsungWidgetPackageManager;

    #calls: Lcom/android/launcher2/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/android/launcher2/SamsungAppWidgetItem;
    invoke-static {v6, v0, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->access$200(Lcom/android/launcher2/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/android/launcher2/SamsungAppWidgetItem;

    move-result-object v4

    .line 889
    .local v4, item:[Lcom/android/launcher2/SamsungAppWidgetItem;
    if-eqz v4, :cond_2

    .line 890
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 891
    aget-object v6, v4, v1

    if-eqz v6, :cond_5

    .line 893
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.sec.android.widgetapp.stockclock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 895
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/android/launcher2/SamsungWidgetPackageManager;

    #calls: Lcom/android/launcher2/SamsungWidgetPackageManager;->loadYahooWidgetForCsc()Z
    invoke-static {v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->access$300(Lcom/android/launcher2/SamsungWidgetPackageManager;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 890
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 898
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->this$0:Lcom/android/launcher2/SamsungWidgetPackageManager;

    #getter for: Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/launcher2/SamsungWidgetPackageManager;->access$100(Lcom/android/launcher2/SamsungWidgetPackageManager;)Ljava/util/ArrayList;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 911
    .end local v1           #i:I
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #item:[Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_7
    const-string v6, "Launcher.SWidgetPkgMgr"

    const-string v7, "  ----> samsungwidgets loader stopped"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method stop()V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->mStopped:Z

    .line 857
    return-void
.end method
