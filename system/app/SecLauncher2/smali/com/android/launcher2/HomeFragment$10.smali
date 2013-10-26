.class Lcom/android/launcher2/HomeFragment$10;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->closeQuickViewWorkspace(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$immediate:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2558
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeFragment$10;->val$immediate:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 2561
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1200(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1200(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2563
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1200(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2564
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment$10;->val$immediate:Z

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1200(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2568
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$900(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2569
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment$10;->val$immediate:Z

    if-eqz v0, :cond_1

    .line 2570
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$900(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2573
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1000(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2574
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment$10;->val$immediate:Z

    if-eqz v0, :cond_2

    .line 2575
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1000(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2578
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2579
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2580
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    .line 2581
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2583
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1400(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/DeleteDropTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/launcher2/HomeFragment;->access$1300(Lcom/android/launcher2/HomeFragment;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/DeleteDropTarget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2584
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFragment$10;->val$immediate:Z

    if-eqz v0, :cond_4

    .line 2585
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$10;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2588
    :cond_4
    return-void
.end method
