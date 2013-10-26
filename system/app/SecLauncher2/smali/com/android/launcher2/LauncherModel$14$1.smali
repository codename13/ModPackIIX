.class Lcom/android/launcher2/LauncherModel$14$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$14;

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$14;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2501
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$14$1;->this$1:Lcom/android/launcher2/LauncherModel$14;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$14$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2504
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$14$1;->this$1:Lcom/android/launcher2/LauncherModel$14;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$14;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 2505
    .local v1, cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$14$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 2507
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2508
    .local v2, homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$500()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2509
    .local v0, appWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2511
    .local v3, samsungWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungAppWidgetInfo;>;"
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$14$1;->this$1:Lcom/android/launcher2/LauncherModel$14;

    iget v4, v4, Lcom/android/launcher2/LauncherModel$14;->val$CPType:I

    invoke-interface {v1, v2, v4}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeShortcuts_CP(Ljava/util/List;I)V

    .line 2512
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$14$1;->this$1:Lcom/android/launcher2/LauncherModel$14;

    iget v4, v4, Lcom/android/launcher2/LauncherModel$14;->val$CPType:I

    invoke-interface {v1, v0, v4}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeAppWidget_CP(Ljava/util/List;I)V

    .line 2513
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$14$1;->this$1:Lcom/android/launcher2/LauncherModel$14;

    iget v4, v4, Lcom/android/launcher2/LauncherModel$14;->val$CPType:I

    invoke-interface {v1, v3, v4}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeSamsungAppWidget_CP(Ljava/util/List;I)V

    .line 2515
    .end local v0           #appWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    .end local v2           #homeItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .end local v3           #samsungWidgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/SamsungAppWidgetInfo;>;"
    :cond_0
    return-void
.end method
