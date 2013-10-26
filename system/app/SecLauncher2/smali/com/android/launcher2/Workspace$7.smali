.class Lcom/android/launcher2/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1363
    iput-object p1, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$7;->val$layout:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$7;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1366
    const-string v0, "Launcher.StuckInEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Runnable C Runnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$7;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v0, p0, Lcom/android/launcher2/Workspace$7;->val$layout:Lcom/android/launcher2/CellLayout;

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$7;->val$hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    new-instance v2, Lcom/android/launcher2/Workspace$7$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$7$1;-><init>(Lcom/android/launcher2/Workspace$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setResizeFrame(Lcom/android/launcher2/LauncherAppWidgetHostView;Ljava/lang/Runnable;)V

    .line 1383
    return-void
.end method
