.class Lcom/android/launcher2/LauncherModel$LoaderTask$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$widget:Lcom/android/launcher2/HomeWidgetItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$7;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$7;->val$widget:Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1866
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$7;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2700(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1867
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1868
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$7;->val$widget:Lcom/android/launcher2/HomeWidgetItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    .line 1870
    :cond_0
    return-void
.end method
