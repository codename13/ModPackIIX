.class public Lcom/android/launcher2/PageIndicatorManager;
.super Ljava/lang/Object;
.source "PageIndicatorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PageIndicatorManager$1;,
        Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;
    }
.end annotation


# static fields
.field private static final FAST_SCROLL_LONG_PRESS_TIMEOUT:I = 0xfa


# instance fields
.field private final mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

.field private final mHandler:Landroid/os/Handler;

.field private mIndicatorTotalWidth:I

.field private mIsLongPressPending:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaxVisiblePages:I

.field private mPageIndicator:Lcom/android/launcher2/PageIndicator;

.field private mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorTop:I

.field private mPagedView:Lcom/android/launcher2/PagedView;

.field private final mScroller:Lcom/android/launcher2/ScalarAnimator;

.field private mViewsTotalWidth:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PagedView;III)V
    .locals 6
    .parameter "view"
    .parameter "pageIndicatorTop"
    .parameter "pageIndicatorGap"
    .parameter "pageIndicatorMaxVisible"

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    .line 28
    iput v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    .line 33
    new-instance v1, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0x320

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher2/ScalarAnimator;-><init>(JLandroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    .line 44
    iput-boolean v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 66
    iput-object p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    .line 67
    invoke-virtual {p1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 69
    iput p2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    .line 70
    iput p3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    .line 71
    iput p4, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    .line 73
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const v3, 0x7f02007b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 74
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f020079

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const v3, 0x7f020075

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    const v3, 0x7f020077

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    instance-of v1, v1, Lcom/android/launcher2/Workspace;

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Lcom/android/launcher2/PageIndicator;

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v0, v2}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    .line 87
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v1, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;-><init>(Lcom/android/launcher2/PageIndicatorManager;Lcom/android/launcher2/PageIndicatorManager$1;)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    .line 89
    return-void

    .line 83
    :cond_0
    new-instance v1, Lcom/android/launcher2/PageIndicator;

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-direct {v1, v0, v2}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    goto :goto_0

    .line 85
    :cond_1
    new-instance v1, Lcom/android/launcher2/PageIndicator;

    iget v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-direct {v1, v0, v2}, Lcom/android/launcher2/PageIndicator;-><init>(Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PageIndicatorManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/PageIndicatorManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/PageIndicatorManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    return v0
.end method

.method private snapToScreen(I)V
    .locals 5
    .parameter "whichScreen"

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    .line 151
    .local v1, currentPage:I
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 153
    if-eq p1, v1, :cond_0

    const/4 v0, 0x1

    .line 157
    .local v0, changingScreens:Z
    :cond_0
    const/4 v2, 0x1

    .line 158
    .local v2, dir:I
    if-ge p1, v1, :cond_3

    .line 159
    const/4 v2, 0x2

    .line 163
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    .line 164
    .local v3, focusedChild:Landroid/view/View;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 165
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 167
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4, p1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 168
    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 169
    return-void

    .line 160
    .end local v3           #focusedChild:Landroid/view/View;
    :cond_3
    if-le p1, v1, :cond_1

    .line 161
    const/4 v2, 0x3

    goto :goto_0
.end method


# virtual methods
.method public cancelEnterFastScroll()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 250
    :cond_0
    return-void
.end method

.method protected cancelFastScroll()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->abort()Z

    .line 227
    iget-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->exitFastScroll()V

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 234
    :cond_1
    return-void
.end method

.method protected checkPageIndicatorLongPress(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PageIndicatorManager;->enterFastScoll(FF)V

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkPageIndicatorTouch(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v1

    float-to-int v2, p1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v2

    float-to-int v3, p2

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    .line 173
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 174
    invoke-direct {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->snapToScreen(I)V

    .line 176
    const/4 v1, 0x1

    .line 178
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 119
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    .line 121
    .local v0, currentPage:I
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v3, v0, v6}, Lcom/android/launcher2/PageIndicator;->setCurrentPage(IZ)V

    .line 122
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    iget-object v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v5}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/PageIndicator;->setOffset(II)V

    .line 125
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher2/PageIndicator;->draw(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView;)Z

    move-result v2

    .line 127
    .local v2, redraw:Z
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    .line 129
    .local v1, f:F
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    .line 130
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v6}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 131
    const/4 v2, 0x1

    .line 134
    .end local v1           #f:F
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    or-int/2addr v2, v3

    .line 135
    if-eqz v2, :cond_0

    .line 137
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-boolean v3, v3, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    if-nez v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected enterFastScoll(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 219
    .local v0, i:I
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    .line 220
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher2/PageIndicator;->enterFastScroll()V

    .line 221
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    .line 222
    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected getPageIndicatorArea(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 192
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public handleEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 274
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 275
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 276
    .local v2, y:F
    iput v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionX:F

    .line 277
    iput v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mLastMotionY:F

    .line 279
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_0
    move v3, v4

    .line 301
    :goto_0
    return v3

    .line 281
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    .line 282
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorTouch(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/launcher2/PageIndicatorManager;->handleMove(FFZ)Z

    move-result v3

    goto :goto_0

    .line 291
    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->scheduleEnterFastScroll()V

    goto :goto_0

    .line 298
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->cancelEnterFastScroll()V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method handleMove(FFZ)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "pan"

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    :goto_0
    return v2

    .line 201
    :cond_0
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    int-to-float v5, v5

    sub-float v5, p1, v5

    iget v6, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 203
    .local v0, f:F
    if-eqz p3, :cond_1

    .line 204
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 205
    .local v1, start:F
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 212
    .end local v1           #start:F
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 213
    const/4 v2, 0x1

    goto :goto_0

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/PageIndicator;->setScrollPosition(F)V

    .line 208
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mViewsTotalWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 209
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mScroller:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 210
    iget-object v2, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_1
.end method

.method public handleOrientationChange()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PageIndicator;->handleOrientationChange(Landroid/content/res/Resources;)V

    .line 319
    return-void
.end method

.method public hidePageIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicator;->hide(Z)V

    .line 315
    :cond_0
    return-void
.end method

.method isFastScrolling()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->isFastScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInPageIndicator(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v1

    float-to-int v2, p2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PageIndicatorManager;->getPageIndicatorArea(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layoutPageIndicator()V
    .locals 5

    .prologue
    .line 100
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    .line 101
    .local v2, pageCount:I
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 103
    .local v1, indicatorWidth:I
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    .line 105
    .local v0, indicator:Lcom/android/launcher2/PageIndicator;
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorCP:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PageIndicator;->setCPDrawable([Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v0, v2}, Lcom/android/launcher2/PageIndicator;->setPageCount(I)V

    .line 109
    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PageIndicator;->setGap(I)V

    .line 111
    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mMaxVisiblePages:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    add-int/2addr v4, v1

    mul-int/2addr v4, v3

    if-lez v2, :cond_0

    iget v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    :goto_0
    sub-int v3, v4, v3

    iput v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    .line 113
    iget-object v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPagedView:Lcom/android/launcher2/PagedView;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/PageIndicatorManager;->mIndicatorTotalWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorLeft:I

    .line 115
    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicator;->updatePositions()V

    .line 116
    return-void

    .line 111
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method scheduleEnterFastScroll()V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/PageIndicatorManager;->mConverter:Lcom/android/launcher2/PageIndicatorManager$FastScrollConverter;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mIsLongPressPending:Z

    .line 255
    return-void
.end method

.method public setGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorGap:I

    .line 97
    return-void
.end method

.method public setTop(I)V
    .locals 0
    .parameter "top"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicatorTop:I

    .line 93
    return-void
.end method

.method public showPageIndicator()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    .line 306
    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 2
    .parameter "animated"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/launcher2/PageIndicatorManager;->mPageIndicator:Lcom/android/launcher2/PageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/PageIndicator;->show(ZZ)V

    .line 310
    :cond_0
    return-void
.end method
