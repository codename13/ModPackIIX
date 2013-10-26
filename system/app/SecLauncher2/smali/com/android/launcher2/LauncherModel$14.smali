.class Lcom/android/launcher2/LauncherModel$14;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->bindContextualPageItems(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$CPType:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$14;->this$0:Lcom/android/launcher2/LauncherModel;

    iput p2, p0, Lcom/android/launcher2/LauncherModel$14;->val$CPType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2499
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$14;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 2500
    .local v0, origCallbacks:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/launcher2/LauncherModel$Callbacks;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2501
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$14;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$1100(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/LauncherModel$14$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$14$1;-><init>(Lcom/android/launcher2/LauncherModel$14;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2519
    :cond_0
    return-void
.end method
