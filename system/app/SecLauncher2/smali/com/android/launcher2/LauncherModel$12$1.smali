.class Lcom/android/launcher2/LauncherModel$12$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$12;

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$12;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2014
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$12$1;->this$1:Lcom/android/launcher2/LauncherModel$12;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$12$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$12$1;->this$1:Lcom/android/launcher2/LauncherModel$12;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$12;->this$0:Lcom/android/launcher2/LauncherModel;

    #getter for: Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$2600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 2018
    .local v0, cb:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$12$1;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2019
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindModeChange()V

    .line 2020
    const-string v1, "Launcher.Model"

    const-string v2, "called bindModeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_0
    return-void
.end method