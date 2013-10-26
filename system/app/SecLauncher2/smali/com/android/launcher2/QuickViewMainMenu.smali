.class public Lcom/android/launcher2/QuickViewMainMenu;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewMainMenu$1;,
        Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DEFAULT_NUM_COLS:I = 0x2

.field private static final SCROLL_DELAY:I = 0x258

.field private static final SCROLL_DOWN:I = 0x1

.field static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_UP:I = 0x0

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final SCROLL_ZONE:I = 0x50

.field private static final TAG:Ljava/lang/String; = "QuickViewMainMenu"


# instance fields
.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mChildLeft:I

.field private mChildTop:I

.field private mIsReadOnly:Z

.field private mIsSaved:Z

.field private mLastScroll:J

.field private mMaxDeltaY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNumCols:I

.field private mOrientation:I

.field private mReadOnlyToastResId:I

.field private mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

.field mScrollState:I

.field private mScrollTop:I

.field mScroller:Landroid/widget/Scroller;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewMainMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    .line 56
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    .line 71
    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    .line 72
    iput v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 78
    new-instance v2, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    invoke-direct {v2, p0, v4}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;-><init>(Lcom/android/launcher2/QuickViewMainMenu;Lcom/android/launcher2/QuickViewMainMenu$1;)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    .line 119
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->QuickViewMainMenu:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mNumCols:I

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1, v4, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 127
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 128
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    .line 129
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    .line 131
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewMainMenu;->setClipChildren(Z)V

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mOrientation:I

    .line 134
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickViewMainMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    return v0
.end method

.method private static calculateChildLeft(IIIIII)I
    .locals 10
    .parameter "halfQvWidth"
    .parameter "numCols"
    .parameter "childWidth"
    .parameter "childGapH"
    .parameter "minLeft"
    .parameter "rightLeftPadDif"

    .prologue
    .line 508
    if-gtz p1, :cond_0

    .line 537
    .end local p4
    :goto_0
    return p4

    .line 510
    .restart local p4
    :cond_0
    move v6, p0

    .line 512
    .local v6, calculatedLeft:I
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 513
    div-int/lit8 v0, p3, 0x2

    sub-int/2addr v6, v0

    .line 514
    sub-int/2addr v6, p2

    .line 515
    div-int/lit8 v9, p1, 0x2

    .line 522
    .local v9, numColsPerSide:I
    :goto_1
    add-int/2addr v6, p5

    .line 525
    add-int v7, p2, p3

    .line 526
    .local v7, childLeftDelta:I
    const/4 v8, 0x1

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_2

    .line 528
    sub-int/2addr v6, v7

    .line 526
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 517
    .end local v7           #childLeftDelta:I
    .end local v8           #i:I
    .end local v9           #numColsPerSide:I
    :cond_1
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr v6, v0

    .line 518
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v9, v0, 0x2

    .restart local v9       #numColsPerSide:I
    goto :goto_1

    .line 531
    .restart local v7       #childLeftDelta:I
    .restart local v8       #i:I
    :cond_2
    const/4 v0, 0x0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ge v6, v0, :cond_3

    .line 534
    add-int/lit8 v1, p1, -0x1

    move v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/QuickViewMainMenu;->calculateChildLeft(IIIIII)I

    move-result p4

    goto :goto_0

    :cond_3
    move p4, v6

    .line 537
    goto :goto_0
.end method

.method private drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V
    .locals 25
    .parameter "canvas"
    .parameter "view"
    .parameter "isAnimating"
    .parameter "progress"

    .prologue
    .line 818
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 819
    .local v9, pTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getBottom()I

    move-result v22

    add-int v8, v9, v22

    .line 821
    .local v8, pBottom:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-gt v0, v8, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    if-ge v0, v9, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v19

    .local v19, viewWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v18

    .line 828
    .local v18, viewHeight:I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v7, v22, v23

    .local v7, halfViewWidth:F
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v6, v22, v23

    .line 830
    .local v6, halfViewHeight:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v20, v22, v7

    .line 831
    .local v20, viewXCenter:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v22, v6

    .line 834
    .local v21, viewYCenter:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 835
    const v14, 0x3f933333

    .line 841
    .local v14, scaleFactor:F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 843
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 844
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 845
    neg-float v0, v7

    move/from16 v22, v0

    neg-float v0, v6

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 847
    if-eqz p3, :cond_5

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    :cond_2
    move/from16 v5, p4

    .line 853
    .local v5, bgAlpha:F
    :goto_2
    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    move/from16 v0, v23

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/high16 v23, 0x437f

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 858
    .end local v5           #bgAlpha:F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 866
    .local v17, tag:Ljava/lang/Object;
    if-eqz v17, :cond_0

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v22, v0

    check-cast v17, Ljava/lang/Integer;

    .end local v17           #tag:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getPage(I)Landroid/view/View;

    move-result-object v10

    .line 870
    .local v10, page:Landroid/view/View;
    if-eqz v10, :cond_0

    .line 872
    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v12

    .local v12, pageWidth:I
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 874
    .local v11, pageHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v22, v19, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v12

    move/from16 v23, v0

    div-float v15, v22, v23

    .line 875
    .local v15, scaleH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v11

    move/from16 v23, v0

    div-float v16, v22, v23

    .line 876
    .local v16, scaleV:F
    cmpl-float v22, v16, v15

    if-lez v22, :cond_6

    move v13, v15

    .line 877
    .local v13, scale:F
    :goto_4
    mul-float/2addr v13, v14

    .line 879
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v22, v22, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v23, v23, v21

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 885
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v13}, Landroid/graphics/Canvas;->scale(FF)V

    .line 886
    neg-int v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    neg-int v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 888
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 890
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 837
    .end local v10           #page:Landroid/view/View;
    .end local v11           #pageHeight:I
    .end local v12           #pageWidth:I
    .end local v13           #scale:F
    .end local v14           #scaleFactor:F
    .end local v15           #scaleH:F
    .end local v16           #scaleV:F
    :cond_3
    const/high16 v14, 0x3f80

    .restart local v14       #scaleFactor:F
    goto/16 :goto_1

    .line 848
    :cond_4
    const/high16 v22, 0x3f80

    sub-float v5, v22, p4

    goto/16 :goto_2

    .line 856
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/16 v23, 0xff

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_3

    .restart local v10       #page:Landroid/view/View;
    .restart local v11       #pageHeight:I
    .restart local v12       #pageWidth:I
    .restart local v15       #scaleH:F
    .restart local v16       #scaleV:F
    :cond_6
    move/from16 v13, v16

    .line 876
    goto/16 :goto_4
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 596
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 601
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 603
    :cond_0
    return-void
.end method

.method private savemenupage()V
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 610
    :cond_0
    return-void
.end method

.method private scroll(II)V
    .locals 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x0

    .line 482
    if-gez p2, :cond_3

    .line 483
    iget v1, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    if-lez v1, :cond_2

    .line 484
    iget v1, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    add-int/2addr v1, p2

    if-gez v1, :cond_1

    .line 485
    iget v1, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    neg-int v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-virtual {p0, v3, p2}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 490
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0

    .line 492
    :cond_3
    if-lez p2, :cond_0

    .line 493
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    iget v2, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    sub-int v0, v1, v2

    .line 494
    .local v0, availableToScroll:I
    if-lez v0, :cond_5

    .line 495
    if-le v0, p2, :cond_4

    .line 496
    invoke-virtual {p0, v3, p2}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 498
    :cond_4
    invoke-virtual {p0, v3, v0}, Lcom/android/launcher2/QuickViewMainMenu;->smoothScrollBy(II)V

    goto :goto_0

    .line 501
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public static zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V
    .locals 4
    .parameter "vg"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 90
    if-ne p1, p2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 94
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x1

    .line 98
    .local v0, bound:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 99
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 98
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 477
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    .line 478
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu;->savemenupage()V

    .line 479
    return-void
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-nez v8, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 618
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v2

    .line 619
    .local v2, index:I
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v2

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    .line 621
    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    if-nez v8, :cond_2

    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    if-le v8, v9, :cond_2

    .line 622
    iget v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 626
    .end local v2           #index:I
    :cond_2
    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 627
    iget v3, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    .line 628
    .local v3, oldX:I
    iget v4, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 629
    .local v4, oldY:I
    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 630
    .local v6, x:I
    iget-object v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 631
    .local v7, y:I
    iput v6, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    .line 632
    iput v7, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    .line 634
    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    if-ne v3, v8, :cond_3

    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    if-eq v4, v8, :cond_4

    .line 635
    :cond_3
    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    iget v9, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    invoke-virtual {p0, v8, v9, v3, v4}, Lcom/android/launcher2/QuickViewMainMenu;->onScrollChanged(IIII)V

    .line 638
    :cond_4
    iget v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 639
    iget v8, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    sub-int v1, v8, v4

    .line 640
    .local v1, deltaY:I
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 641
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_5

    .line 642
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 643
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 644
    iget v8, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 645
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v1

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 647
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 651
    .end local v0           #child:Landroid/view/View;
    .end local v1           #deltaY:I
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 698
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getWidth()I

    move-result v7

    .line 699
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v4

    .line 701
    .local v4, height:I
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 707
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_3

    .line 708
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 711
    .local v0, child:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eq v0, v8, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    .line 707
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 713
    .end local v0           #child:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, p1, v8, v9, v10}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    .line 714
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    goto :goto_0

    .line 718
    .end local v5           #i:I
    :cond_4
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    packed-switch v8, :pswitch_data_0

    .line 754
    :goto_2
    :pswitch_0
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    packed-switch v8, :pswitch_data_1

    .line 809
    :pswitch_1
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    if-ge v5, v1, :cond_0

    .line 810
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 811
    .restart local v0       #child:Landroid/view/View;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v0, v8, v9}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    .line 809
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 720
    .end local v0           #child:Landroid/view/View;
    .end local v5           #i:I
    :pswitch_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 721
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    .line 722
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 723
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 724
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->setOpenStartRect(I)V

    .line 725
    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 726
    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 727
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    if-ge v5, v1, :cond_6

    .line 728
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    .line 729
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 730
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ne v5, v8, :cond_5

    .line 731
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iput v8, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollTop:I

    .line 733
    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    .line 727
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 735
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    goto :goto_2

    .line 738
    .end local v5           #i:I
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    .line 739
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 740
    iget v8, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    iput v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 741
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->setCloseEndRect(I)V

    .line 742
    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 743
    new-array v8, v1, [Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 744
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    if-ge v5, v1, :cond_7

    .line 745
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    .line 746
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 747
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    aput-object v9, v8, v5

    .line 744
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 749
    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->requestLayout()V

    .line 750
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationStarted()V

    goto/16 :goto_2

    .line 757
    .end local v5           #i:I
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    sub-long v2, v8, v10

    .line 760
    .local v2, current:J
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-ltz v8, :cond_c

    .line 762
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 763
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v8}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->onQuickViewCloseAnimationCompleted()V

    .line 765
    :cond_8
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    const/4 v8, 0x7

    :goto_6
    iput v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 768
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    .line 769
    const/high16 v6, 0x3f80

    .line 774
    .local v6, progress:F
    :goto_7
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    invoke-virtual {v8, v9, v10, v11, v6}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 775
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    if-nez v8, :cond_d

    .line 776
    const-string v8, "QuickViewMainMenu"

    const-string v9, "Failed to get current rectangles from animation engine"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_9
    :goto_8
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 804
    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_a

    iget v8, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 805
    :cond_a
    const-string v8, "QuickViewMainMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ElapsedTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->referenceTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/launcher2/QuickView;->mTimeStore:J

    sub-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 765
    .end local v6           #progress:F
    :cond_b
    const/16 v8, 0x8

    goto :goto_6

    .line 771
    :cond_c
    long-to-float v8, v2

    iget v9, p0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .restart local v6       #progress:F
    goto :goto_7

    .line 779
    :cond_d
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_9
    if-ge v5, v1, :cond_10

    .line 780
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ne v5, v8, :cond_f

    .line 779
    :cond_e
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 781
    :cond_f
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 782
    .restart local v0       #child:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v11, v11, v5

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 788
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v9, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher2/QuickViewMainMenu;->isAvailableRect(Landroid/graphics/Rect;I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 789
    const/4 v8, 0x1

    invoke-direct {p0, p1, v0, v8, v6}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    goto :goto_a

    .line 792
    .end local v0           #child:Landroid/view/View;
    :cond_10
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ltz v8, :cond_9

    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    if-ge v8, v1, :cond_9

    .line 793
    iget v8, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 794
    .restart local v0       #child:Landroid/view/View;
    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v10, v10, v11

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    iget v12, p0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    aget-object v11, v11, v12

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 800
    const/4 v8, 0x1

    invoke-direct {p0, p1, v0, v8, v6}, Lcom/android/launcher2/QuickViewMainMenu;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;ZF)V

    goto/16 :goto_8

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 754
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method protected getYOffset()I
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    return v0
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 9
    .parameter "provider"

    .prologue
    .line 542
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 544
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v3

    .line 545
    .local v3, screenCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 548
    .local v0, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/Scroller;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v0, v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v5, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    .line 549
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 550
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 551
    .local v4, v:Landroid/view/View;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p0, v4, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 559
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 560
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v4           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 433
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadLayoutParameters()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 897
    iget-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 898
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 900
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v3

    .line 901
    .local v3, screenCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    .line 902
    .local v0, childCount:I
    sub-int v5, v3, v0

    .line 904
    .local v5, viewCountDelta:I
    if-lez v5, :cond_0

    .line 905
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 906
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 907
    .local v4, v:Landroid/view/View;
    invoke-virtual {p0, v4, v7}, Lcom/android/launcher2/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 908
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 909
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 905
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 911
    .end local v1           #i:I
    .end local v4           #v:Landroid/view/View;
    :cond_0
    if-gez v5, :cond_1

    .line 912
    move v1, v5

    .restart local v1       #i:I
    :goto_1
    if-gez v1, :cond_1

    .line 913
    invoke-virtual {p0, v7}, Lcom/android/launcher2/QuickViewMainMenu;->removeViewAt(I)V

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 917
    .end local v1           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    .line 919
    new-array v6, v0, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 920
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 921
    iget-object v6, p0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v7, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v7, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v7, v6, v1

    .line 922
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 923
    .restart local v4       #v:Landroid/view/View;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 924
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 930
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 932
    .end local v4           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 455
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 233
    const/4 v10, 0x1

    .line 312
    :goto_0
    return v10

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 237
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 239
    .local v6, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 312
    :cond_1
    :goto_1
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    goto :goto_0

    .line 241
    :sswitch_0
    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    if-eqz v10, :cond_3

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 243
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 245
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float v10, v6, v10

    float-to-int v1, v10

    .line 246
    .local v1, dy:I
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float v10, v4, v10

    float-to-int v0, v10

    .line 248
    .local v0, dx:I
    mul-int v10, v1, v1

    mul-int v11, v0, v0

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/QuickView;->mMovePinchStart:I

    sub-int v2, v10, v11

    .line 250
    .local v2, pinchDelta:I
    const/16 v10, 0x2710

    if-le v2, v10, :cond_1

    .line 251
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 252
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 253
    iget v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    iput v10, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 254
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->drawCloseAnimation()Z

    .line 255
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 256
    const/4 v10, 0x1

    goto :goto_0

    .line 259
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #pinchDelta:I
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 260
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    .line 263
    :cond_3
    iget v10, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    sub-float/2addr v10, v6

    float-to-int v8, v10

    .line 264
    .local v8, yDiff:I
    iget v3, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    .line 265
    .local v3, touchSlop:I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v3, :cond_5

    const/4 v9, 0x1

    .line 266
    .local v9, yMoved:Z
    :goto_2
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v10, :cond_4

    .line 267
    if-eqz v9, :cond_4

    .line 268
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 269
    const/4 v10, 0x0

    invoke-direct {p0, v10, v8}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(II)V

    .line 270
    iput v4, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 271
    iput v6, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    .line 275
    :cond_4
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    goto :goto_1

    .line 265
    .end local v9           #yMoved:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 280
    .end local v3           #touchSlop:I
    .end local v8           #yDiff:I
    :sswitch_1
    iput v4, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 281
    iput v6, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    .line 282
    iget-object v10, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    iput v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    goto/16 :goto_1

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 286
    :sswitch_2
    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v10, :cond_7

    .line 287
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 288
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto/16 :goto_1

    .line 290
    :cond_7
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    .line 296
    :sswitch_3
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v10, :cond_1

    .line 297
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 299
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 300
    .local v5, x1:F
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 302
    .local v7, y1:F
    float-to-int v10, v4

    float-to-int v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v10

    float-to-int v11, v5

    float-to-int v12, v7

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 303
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 304
    sub-float v10, v6, v7

    float-to-int v1, v10

    .line 305
    .restart local v1       #dy:I
    sub-float v10, v4, v5

    float-to-int v0, v10

    .line 306
    .restart local v0       #dx:I
    mul-int v10, v1, v1

    mul-int v11, v0, v0

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/launcher2/QuickView;->mMovePinchStart:I

    .line 307
    float-to-int v10, v4

    float-to-int v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    .line 312
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v5           #x1:F
    .end local v7           #y1:F
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/QuickViewMainMenu;->updateHitRectIfNeeded(Z)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingTop()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v19

    .line 142
    .local v19, qvWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v17

    .line 143
    .local v17, lp:Landroid/widget/FrameLayout$LayoutParams;
    div-int/lit8 v1, v19, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickViewMainMenu;->mNumCols:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingLeft()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v6, v6, v24

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/QuickViewMainMenu;->calculateChildLeft(IIIIII)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    .line 152
    .end local v17           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v19           #qvWidth:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    move/from16 v18, v0

    .line 154
    .local v18, oldMaxDeltaY:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v12

    .line 156
    .local v12, count:I
    const/4 v1, 0x1

    if-ge v12, v1, :cond_1

    .line 228
    :goto_0
    return-void

    .line 158
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-eq v1, v12, :cond_3

    .line 159
    :cond_2
    new-array v1, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 162
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v1, v1

    if-eq v1, v12, :cond_6

    .line 163
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    if-eqz v1, :cond_5

    .line 164
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    array-length v1, v1

    if-ge v15, v1, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v1, v1, v15

    invoke-virtual {v1}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    .line 164
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 167
    .end local v15           #i:I
    :cond_5
    new-array v1, v12, [Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 168
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_2
    if-ge v15, v12, :cond_6

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v2, Lcom/android/launcher2/QuickView$Animate;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v2, v1, v15

    .line 168
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 172
    .end local v15           #i:I
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 173
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 174
    .local v11, childWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 176
    .local v8, childHeight:I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int v20, v1, v2

    .line 178
    .local v20, rightLeftPadDif:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getMeasuredWidth()I

    move-result v19

    .line 180
    .restart local v19       #qvWidth:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    const/16 v22, 0x1

    .line 182
    .local v22, shouldAnimate:Z
    :goto_3
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 184
    .local v14, hitRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    .line 185
    .local v9, childLeft:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildTop:I

    .line 186
    .local v10, childTop:I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    if-ge v15, v12, :cond_d

    .line 187
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 188
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 186
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 180
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v14           #hitRect:Landroid/graphics/Rect;
    .end local v15           #i:I
    .end local v22           #shouldAnimate:Z
    :cond_7
    const/16 v22, 0x0

    goto :goto_3

    .line 190
    .restart local v9       #childLeft:I
    .restart local v10       #childTop:I
    .restart local v14       #hitRect:Landroid/graphics/Rect;
    .restart local v15       #i:I
    .restart local v22       #shouldAnimate:Z
    :cond_8
    add-int v1, v9, v11

    move/from16 v0, v19

    if-le v1, v0, :cond_9

    .line 191
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    add-int/2addr v1, v8

    add-int/2addr v10, v1

    .line 192
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildLeft:I

    .line 195
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v15

    .line 196
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    add-int v2, v9, v11

    add-int v3, v10, v8

    invoke-virtual {v1, v9, v10, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 198
    invoke-virtual {v7, v14}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 200
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v22, :cond_c

    .line 201
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v1, v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v15

    invoke-virtual {v1, v7, v2}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 208
    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    add-int/2addr v1, v11

    sub-int v1, v1, v20

    add-int/2addr v9, v1

    goto :goto_5

    .line 205
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v1, v1, v15

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v15

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v15

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v15

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_6

    .line 210
    :cond_d
    sub-int v13, p5, p3

    .line 211
    .local v13, height:I
    add-int v1, v10, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getPaddingBottom()I

    move-result v2

    add-int v16, v1, v2

    .line 212
    .local v16, lastChildPaddedBottom:I
    move/from16 v0, v16

    if-le v0, v13, :cond_e

    .line 219
    sub-int v1, v16, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    .line 225
    :goto_7
    if-nez v18, :cond_f

    const/16 v21, 0x0

    .line 226
    .local v21, scrollYProgress:F
    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    int-to-float v1, v1

    mul-float v23, v1, v21

    .line 227
    .local v23, topY:F
    const/4 v1, 0x0

    move/from16 v0, v23

    float-to-int v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->scrollTo(II)V

    goto/16 :goto_0

    .line 221
    .end local v21           #scrollYProgress:F
    .end local v23           #topY:F
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaxDeltaY:I

    goto :goto_7

    .line 225
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/QuickView;->mScrollY:I

    int-to-float v1, v1

    move/from16 v0, v18

    int-to-float v2, v0

    div-float v21, v1, v2

    goto :goto_8
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 438
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v2

    .line 441
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 442
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewMainMenu;->startDrag(Landroid/view/View;)V

    .line 443
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "ev"

    .prologue
    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 318
    const/16 v17, 0x0

    .line 428
    :goto_0
    return v17

    .line 321
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 322
    .local v4, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 323
    .local v14, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 326
    .local v15, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 327
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 329
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 331
    packed-switch v4, :pswitch_data_0

    .line 428
    :cond_2
    :goto_1
    const/16 v17, 0x1

    goto :goto_0

    .line 333
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->computeScroll()V

    .line 338
    :cond_3
    const/high16 v17, 0x42a0

    cmpg-float v17, v15, v17

    if-ltz v17, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_5

    .line 339
    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x258

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 342
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    goto :goto_1

    .line 346
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v6, v0

    .line 347
    .local v6, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v17, v15

    move/from16 v0, v17

    float-to-int v7, v0

    .line 349
    .local v7, deltaY:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    .line 350
    .local v11, touchSlop:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_7

    const/16 v16, 0x1

    .line 352
    .local v16, yMoved:Z
    :goto_2
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 353
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 356
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 357
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/QuickViewMainMenu;->scroll(II)V

    .line 358
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 359
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    goto/16 :goto_1

    .line 350
    .end local v16           #yMoved:Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 360
    .restart local v16       #yMoved:Z
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 361
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 362
    .local v5, child:Landroid/view/View;
    if-eqz v5, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/QuickView;->mTmpRect:Landroid/graphics/Rect;

    .line 364
    .local v10, r:Landroid/graphics/Rect;
    invoke-virtual {v5, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 365
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->left:I

    .line 366
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->top:I

    .line 367
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->right:I

    .line 368
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    sub-int v17, v17, v7

    move/from16 v0, v17

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 370
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 373
    .end local v10           #r:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 374
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    .line 376
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    .line 377
    .local v12, v:Landroid/view/View;
    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->getTouchedIndex(II)I

    move-result v8

    .line 378
    .local v8, index:I
    if-eqz v12, :cond_a

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v8, v0, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_a

    .line 380
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewMainMenu;->removeView(Landroid/view/View;)V

    .line 381
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v8}, Lcom/android/launcher2/QuickViewMainMenu;->addView(Landroid/view/View;I)V

    .line 382
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 383
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    .line 386
    :cond_a
    const/high16 v17, 0x42a0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_b

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 388
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 392
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getHeight()I

    move-result v17

    add-int/lit8 v17, v17, -0x50

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_2

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 394
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->setDirection(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mScrollRunnable:Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewMainMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 403
    .end local v5           #child:Landroid/view/View;
    .end local v6           #deltaX:I
    .end local v7           #deltaY:I
    .end local v8           #index:I
    .end local v11           #touchSlop:I
    .end local v12           #v:Landroid/view/View;
    .end local v16           #yMoved:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 404
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 405
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 406
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v9, v0

    .line 408
    .local v9, initialVelocity:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v17

    if-lez v17, :cond_c

    .line 409
    neg-int v0, v9

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->fling(I)V

    .line 412
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 414
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewMainMenu;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 416
    :cond_d
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 421
    .end local v9           #initialVelocity:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    .line 422
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->postInvalidate()V

    .line 425
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewMainMenu;->endDrag()V

    goto/16 :goto_1

    .line 417
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 418
    float-to-int v0, v14

    move/from16 v17, v0

    float-to-int v0, v15

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/QuickViewMainMenu;->drop(II)V

    goto :goto_3

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public open()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 469
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    .line 470
    iput-boolean v3, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsSaved:Z

    .line 472
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 474
    :cond_0
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .parameter "readOnly"

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    .line 462
    return-void
.end method

.method public setReadOnlyToastId(I)V
    .locals 0
    .parameter "aId"

    .prologue
    .line 465
    iput p1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    .line 466
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 6
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 662
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLastScroll:J

    sub-long v0, v2, v4

    .line 663
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 664
    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/android/launcher2/QuickView;->mScrollX:I

    iget v4, p0, Lcom/android/launcher2/QuickView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 666
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 673
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mLastScroll:J

    .line 674
    return-void

    .line 668
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 669
    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 671
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/QuickViewMainMenu;->scrollBy(II)V

    goto :goto_0
.end method

.method protected swapScreen(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 577
    iget v0, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 578
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewMainMenu;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/launcher2/QuickViewMainMenu;->zOrderTweakMoveChild(Landroid/view/ViewGroup;II)V

    .line 584
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-interface {v0, v1, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    .line 585
    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 586
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->updateTags()V

    goto :goto_0
.end method

.method protected updateTags()V
    .locals 4

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu;->getChildCount()I

    move-result v1

    .line 567
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 568
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewMainMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 569
    .local v0, child:Landroid/view/View;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 567
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method
