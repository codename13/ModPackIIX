.class Lcom/android/launcher2/AnimationLayer$Anim$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AnimationLayer$Anim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/AnimationLayer$Anim;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .parameter

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->onDrop()V

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-boolean v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mFadeOutDrop:Z

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/AnimationLayer$Anim$3$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AnimationLayer$Anim$3$1;-><init>(Lcom/android/launcher2/AnimationLayer$Anim$3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 500
    :goto_0
    return-void

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v0, v0, Lcom/android/launcher2/AnimationLayer$Anim;->this$0:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer$Anim$3;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->markCompleted()V

    goto :goto_0
.end method
