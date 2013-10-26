.class Lcom/android/launcher2/AnimationLayer$Anim$4;
.super Ljava/lang/Object;
.source "AnimationLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 503
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .parameter "animation"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 506
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mTo:[I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_1

    .line 507
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v5

    .line 511
    .local v5, to:[I
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v3

    .line 512
    .local v3, from:[I
    aget v6, v5, v9

    aget v7, v3, v9

    sub-int/2addr v6, v7

    int-to-float v1, v6

    .line 513
    .local v1, dx:F
    aget v6, v5, v10

    aget v7, v3, v10

    sub-int/2addr v6, v7

    int-to-float v2, v6

    .line 514
    .local v2, dy:F
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 515
    .local v4, p:F
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v7, v3, v9

    int-to-float v7, v7

    mul-float v8, v1, v4

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 516
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v7, v3, v10

    int-to-float v7, v7

    mul-float v8, v2, v4

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 517
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 518
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v7, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 520
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    #getter for: Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z
    invoke-static {v6}, Lcom/android/launcher2/AnimationLayer$Anim;->access$200(Lcom/android/launcher2/AnimationLayer$Anim;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_0

    .line 521
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    const/high16 v7, 0x44c8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    const/high16 v0, 0x3f80

    .line 522
    .local v0, d:F
    :goto_1
    cmpl-float v6, v4, v0

    if-ltz v6, :cond_0

    .line 523
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    #setter for: Lcom/android/launcher2/AnimationLayer$Anim;->mShadowFadeStarted:Z
    invoke-static {v6, v10}, Lcom/android/launcher2/AnimationLayer$Anim;->access$202(Lcom/android/launcher2/AnimationLayer$Anim;Z)Z

    .line 524
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v6, p0, Lcom/android/launcher2/AnimationLayer$Anim$4;->this$1:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v6, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v6}, Lcom/android/launcher2/AppIconView;->startFadeShadow()V

    goto/16 :goto_0

    .line 521
    .end local v0           #d:F
    :cond_2
    const v0, 0x3f19999a

    goto :goto_1
.end method
