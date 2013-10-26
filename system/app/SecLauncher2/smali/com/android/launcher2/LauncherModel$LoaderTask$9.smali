.class Lcom/android/launcher2/LauncherModel$LoaderTask$9;
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

.field final synthetic val$widget:Lcom/android/launcher2/SamsungAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/SamsungAppWidgetInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$widget:Lcom/android/launcher2/SamsungAppWidgetInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1897
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    #calls: Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$2700(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1898
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$widget:Lcom/android/launcher2/SamsungAppWidgetInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 1901
    :cond_0
    return-void
.end method
