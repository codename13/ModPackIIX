.class public Lcom/android/launcher2/PageIndicator$Page;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mAnimationFrom:F

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationTo:F

.field private mDrawState:I

.field private mPrevDrawState:I

.field final synthetic this$0:Lcom/android/launcher2/PageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PageIndicator;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 471
    iput-object p1, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 463
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 465
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 466
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    .line 472
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 494
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PageIndicator$Page;->draw(Landroid/graphics/Canvas;I)Z

    move-result v0

    return v0
.end method

.method draw(Landroid/graphics/Canvas;I)Z
    .locals 10
    .parameter "canvas"
    .parameter "index"

    .prologue
    .line 499
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 500
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    .line 501
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 503
    :cond_0
    const/4 v5, 0x0

    .line 504
    .local v5, value:F
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 506
    .local v3, normalized:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_1

    .line 507
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 509
    :cond_1
    const/high16 v6, 0x3f80

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 511
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v8, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v5, v6, v7

    .line 516
    .end local v3           #normalized:F
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mGrowBy:F
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$100(Lcom/android/launcher2/PageIndicator;)F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v1, v6

    .line 517
    .local v1, grow:I
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 518
    .local v4, s:I
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    neg-int v7, v1

    const/4 v8, 0x0

    add-int v9, v4, v1

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 519
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$300(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    .line 520
    .local v2, modeFactor:F
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mIsHiding:Z
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v5

    .line 521
    .local v0, alpha:F
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/high16 v7, 0x437f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 523
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mPageDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$200(Lcom/android/launcher2/PageIndicator;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 525
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 512
    .end local v0           #alpha:F
    .end local v1           #grow:I
    .end local v2           #modeFactor:F
    .end local v4           #s:I
    :cond_3
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 513
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v5, v6, v7

    goto :goto_0

    .line 520
    .restart local v1       #grow:I
    .restart local v2       #modeFactor:F
    .restart local v4       #s:I
    :cond_4
    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v2

    mul-float v0, v6, v7

    goto :goto_1

    .line 525
    .restart local v0       #alpha:F
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method drawContextualPageIndicator(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;)Z
    .locals 10
    .parameter "canvas"
    .parameter "index"
    .parameter "pageDrawable"

    .prologue
    .line 530
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    .line 532
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 534
    :cond_0
    const/4 v5, 0x0

    .line 535
    .local v5, value:F
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 537
    .local v3, normalized:F
    const/high16 v6, 0x3f80

    cmpl-float v6, v3, v6

    if-ltz v6, :cond_1

    .line 538
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 540
    :cond_1
    const/high16 v6, 0x3f80

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 542
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v8, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v3

    add-float v5, v6, v7

    .line 547
    .end local v3           #normalized:F
    :cond_2
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mGrowBy:F
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$100(Lcom/android/launcher2/PageIndicator;)F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v1, v6

    .line 548
    .local v1, grow:I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 549
    .local v4, s:I
    neg-int v6, v1

    neg-int v7, v1

    add-int v8, v4, v1

    add-int v9, v4, v1

    invoke-virtual {p3, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 550
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mFastScrollFactor:Lcom/android/launcher2/ScalarAnimator;
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$300(Lcom/android/launcher2/PageIndicator;)Lcom/android/launcher2/ScalarAnimator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    .line 551
    .local v2, modeFactor:F
    iget-object v6, p0, Lcom/android/launcher2/PageIndicator$Page;->this$0:Lcom/android/launcher2/PageIndicator;

    #getter for: Lcom/android/launcher2/PageIndicator;->mIsHiding:Z
    invoke-static {v6}, Lcom/android/launcher2/PageIndicator;->access$400(Lcom/android/launcher2/PageIndicator;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v5

    .line 552
    .local v0, alpha:F
    :goto_1
    const/high16 v6, 0x437f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {p3, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 554
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 556
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 543
    .end local v0           #alpha:F
    .end local v1           #grow:I
    .end local v2           #modeFactor:F
    .end local v4           #s:I
    :cond_3
    iget v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 544
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v5, v6, v7

    goto :goto_0

    .line 551
    .restart local v1       #grow:I
    .restart local v2       #modeFactor:F
    .restart local v4       #s:I
    :cond_4
    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v7, v2

    mul-float v0, v6, v7

    goto :goto_1

    .line 556
    .restart local v0       #alpha:F
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method endAnimation()V
    .locals 1

    .prologue
    .line 490
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 491
    return-void
.end method

.method public getScale()F
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/high16 v5, 0x3f80

    .line 560
    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationDuration:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 562
    .local v0, normalized:F
    cmpl-float v1, v0, v5

    if-ltz v1, :cond_0

    .line 563
    iput v6, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 565
    :cond_0
    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 567
    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    iget v3, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 571
    .end local v0           #normalized:F
    :goto_0
    return v1

    .line 568
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    if-ne v1, v6, :cond_2

    .line 569
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v1, v1, v2

    goto :goto_0

    .line 571
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method initDrawState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 475
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 476
    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 477
    return-void
.end method

.method setDrawState(I)V
    .locals 2
    .parameter "drawState"

    .prologue
    .line 480
    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    .line 481
    iput p1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    .line 483
    iget v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    if-eq v0, v1, :cond_0

    .line 484
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationState:I

    .line 485
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationTo:F

    .line 486
    invoke-static {}, Lcom/android/launcher2/PageIndicator;->access$000()[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PageIndicator$Page;->mPrevDrawState:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/launcher2/PageIndicator$Page;->mAnimationFrom:F

    .line 488
    :cond_0
    return-void
.end method
