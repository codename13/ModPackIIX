.class Lcom/android/launcher2/Workspace$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->initWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    #setter for: Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z
    invoke-static {v3, v4}, Lcom/android/launcher2/Workspace;->access$002(Lcom/android/launcher2/Workspace;Z)Z

    .line 297
    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 298
    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v4, 0x0

    #setter for: Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v3, v4}, Lcom/android/launcher2/Workspace;->access$202(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 299
    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 301
    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    #calls: Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$300(Lcom/android/launcher2/Workspace;)Ljava/util/ArrayList;

    move-result-object v2

    .line 302
    .local v2, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 303
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    iget-object v3, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->onStateAnimationEnd(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0

    .line 305
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    sget-object v1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 291
    iget-object v0, p0, Lcom/android/launcher2/Workspace$1;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    #setter for: Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$002(Lcom/android/launcher2/Workspace;Z)Z

    .line 292
    return-void
.end method
