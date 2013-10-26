.class Lcom/android/launcher2/HomeFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeFragment;

.field final synthetic val$l:Lcom/android/launcher2/AnimationLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeFragment;Lcom/android/launcher2/AnimationLayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2447
    iput-object p1, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    iput-object p2, p0, Lcom/android/launcher2/HomeFragment$9;->val$l:Lcom/android/launcher2/AnimationLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 2461
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->val$l:Lcom/android/launcher2/AnimationLayer;

    if-eqz v0, :cond_0

    .line 2462
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->val$l:Lcom/android/launcher2/AnimationLayer;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2464
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHotseat:Lcom/android/launcher2/Hotseat;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1100(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2465
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1200(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2466
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeTopBar:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1200(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2467
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1400(Lcom/android/launcher2/HomeFragment;)Lcom/android/launcher2/DeleteDropTarget;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mPaint:Landroid/graphics/Paint;
    invoke-static {v2}, Lcom/android/launcher2/HomeFragment;->access$1300(Lcom/android/launcher2/HomeFragment;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DeleteDropTarget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2468
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 2450
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->val$l:Lcom/android/launcher2/AnimationLayer;

    if-eqz v0, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->val$l:Lcom/android/launcher2/AnimationLayer;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2453
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$900(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2454
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mAllAppsIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$900(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2455
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1000(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2456
    iget-object v0, p0, Lcom/android/launcher2/HomeFragment$9;->this$0:Lcom/android/launcher2/HomeFragment;

    #getter for: Lcom/android/launcher2/HomeFragment;->mHomeSearchBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/launcher2/HomeFragment;->access$1000(Lcom/android/launcher2/HomeFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2458
    :cond_2
    return-void
.end method
