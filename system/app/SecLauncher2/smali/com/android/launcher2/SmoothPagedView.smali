.class public abstract Lcom/android/launcher2/SmoothPagedView;
.super Lcom/android/launcher2/PagedView;
.source "SmoothPagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;,
        Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;
    }
.end annotation


# static fields
.field static final DEFAULT_MODE:I = 0x0

.field private static final INSIDE_LEFT_SCROLL_ZONE:I = 0x1

.field private static final INSIDE_RIGHT_SCROLL_ZONE:I = 0x2

.field private static final OUTSIDE_SCROLL_ZONE:I = 0x0

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field static final SCROLL_RIGHT:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SMOOTHING_CONSTANT:F = 0.0f

.field private static final SMOOTHING_SPEED:F = 0.75f

.field static final X_LARGE_MODE:I = 0x1


# instance fields
.field private mBaseLineFlingVelocity:F

.field private mFlingVelocityInfluence:F

.field private mHandler:Landroid/os/Handler;

.field private mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mScrollDelay:I

.field private mScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mScrollMode:I

.field private mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

.field private mScrollState:I

.field private mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    const-wide v0, 0x3f90624dd2f1a9fcL

    const-wide/high16 v2, 0x3fe8

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    .line 208
    iput v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 209
    new-instance v2, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;-><init>(Lcom/android/launcher2/SmoothPagedView;)V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    .line 210
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollMode()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    .line 99
    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-nez v2, :cond_0

    .line 100
    const v2, 0x451c4000

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    .line 101
    const v2, 0x3ecccccd

    iput v2, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    .line 102
    new-instance v2, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-direct {v2}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 103
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 106
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 110
    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-eq v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 112
    return-void

    :cond_1
    move v0, v1

    .line 110
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/SmoothPagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SmoothPagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollDelay:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkEdgeScroll(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getCurrentPage()I

    move-result v0

    .line 275
    .local v0, currentPage:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCount()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getRootView()Landroid/view/View;

    move-result-object v4

    .line 279
    .local v4, scrollView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollZoneLeftWidth()I

    move-result v1

    .line 280
    .local v1, leftWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollZoneRightWidth()I

    move-result v3

    .line 281
    .local v3, rightWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 283
    .local v2, rightEdge:I
    if-ge p1, v1, :cond_2

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollToLeft(II)V

    goto :goto_0

    .line 285
    :cond_2
    sub-int v5, v2, v3

    if-le p1, v5, :cond_3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->scrollToRight(II)V

    goto :goto_0

    .line 288
    :cond_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 289
    iget-object v5, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v5}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    .line 290
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    goto :goto_0
.end method

.method private isInsideScrollZone()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 245
    iget v1, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private scrollToLeft(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 261
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    .line 263
    :cond_0
    return-void
.end method

.method private scrollToRight(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 268
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    .line 270
    :cond_0
    return-void
.end method

.method private snapToPageWithVelocity(IIZ)V
    .locals 8
    .parameter "whichPage"
    .parameter "velocity"
    .parameter "settle"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getAdjustedPageIndex(I)I

    move-result p1

    .line 141
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 142
    .local v3, screenDelta:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v2

    .line 143
    .local v2, newX:I
    iget v4, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v2, v4

    .line 144
    .local v0, delta:I
    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v1, v4, 0x64

    .line 146
    .local v1, duration:I
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 150
    :cond_0
    if-eqz p3, :cond_1

    .line 151
    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->setDistance(I)V

    .line 156
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 157
    if-lez p2, :cond_2

    .line 158
    int-to-float v4, v1

    int-to-float v5, v1

    int-to-float v6, p2

    iget v7, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 163
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    .line 164
    return-void

    .line 153
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/SmoothPagedView$WorkspaceOvershootInterpolator;->disableSettle()V

    goto :goto_0

    .line 160
    :cond_2
    add-int/lit8 v1, v1, 0x64

    goto :goto_1
.end method


# virtual methods
.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 177
    iget v4, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-ne v4, v5, :cond_1

    .line 178
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->computeScroll()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScrollHelper()Z

    move-result v3

    .line 182
    .local v3, scrollComputed:Z
    if-nez v3, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v4, v5, :cond_0

    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28

    div-float v2, v4, v5

    .line 184
    .local v2, now:F
    iget v4, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    sub-float v4, v2, v4

    sget v5, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 186
    .local v1, e:F
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    iget v5, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 187
    .local v0, dx:F
    iget v4, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    int-to-float v4, v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/SmoothPagedView;->scrollTo(II)V

    .line 188
    iput v2, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 191
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    const/high16 v4, -0x4080

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 215
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 217
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 233
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    return v2

    .line 220
    :pswitch_0
    iput v3, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->checkEdgeScroll(II)V

    goto :goto_0

    .line 228
    :pswitch_2
    iput v3, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    .line 229
    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v2}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->removeSelf()V

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 1
    .parameter "aRect"

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method protected onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/android/launcher2/SmoothPagedView;->isInsideScrollZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SmoothPagedView;->getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollRunnable:Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->isWaitingtoScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 309
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 310
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 315
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mLeftHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher2/SmoothPagedView;->mUnEncumberedPagedViewBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mRightHoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEnterScrollArea(III)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method protected onExitScrollArea()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected onScrollComplete()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(II)V

    goto :goto_0
.end method

.method protected snapToPage(I)V
    .locals 3
    .parameter "whichPage"

    .prologue
    const/4 v2, 0x0

    .line 168
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-direct {p0, p1, v2, v2}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 2
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/4 v1, 0x1

    .line 129
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-ne v0, v1, :cond_0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method
