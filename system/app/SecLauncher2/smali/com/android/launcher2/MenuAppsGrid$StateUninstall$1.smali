.class Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->enter(Lcom/android/launcher2/MenuAppsGrid$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)V
    .locals 0
    .parameter

    .prologue
    .line 1513
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    #getter for: Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->access$4200(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    #getter for: Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->mPreviousState:Lcom/android/launcher2/MenuAppsGrid$State;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->access$4200(Lcom/android/launcher2/MenuAppsGrid$StateUninstall;)Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 1527
    :goto_0
    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->UNINSTALL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_1

    .line 1520
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    .line 1523
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall$1;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateUninstall;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateUninstall;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    #getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$2300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->DOWNLOADED_APPS:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0
.end method
