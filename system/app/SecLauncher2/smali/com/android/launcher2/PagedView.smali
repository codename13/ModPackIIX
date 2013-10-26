.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$GrandchildIterator;,
        Lcom/android/launcher2/PagedView$LayerOptions;,
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;,
        Lcom/android/launcher2/PagedView$PageInfo;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field private static final DEBUG:Z = false

.field public static final DIR_LEFT:I = 0x2

.field public static final DIR_RIGHT:I = 0x3

.field public static final DIR_SHORTEST:I = 0x1

.field private static final HOVERSCROLL_SPEED:J = 0x12cL

.field protected static final INVALID_PAGE:I = -0x80000000

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MOTION_ENGINE_LOG:Ljava/lang/String; = "MotionEngine"

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field public static final PAGE_BG_ALPHA:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_HOVER_WIDTH:F = 60.0f

.field public static final PAGE_ZOOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/PagedView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANNING_THRESHOLD_MULTIPLIER:I = 0xf

.field private static final PANNING_THRESHOLD_SHIFTER:I = 0x28

.field private static final TAG:Ljava/lang/String; = "Launcher.PagedView"

.field protected static final TOUCH_STATE_DRIFTING:I = 0x4

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static sIsMotionEngineEnabled:Z


# instance fields
.field protected final ENABLE_DVFS_ONSCROLL:Z

.field protected final PAGE_SNAP_ANIMATION_DURATION:I

.field private mAccumulatedDelta:D

.field private mAccumulatedDx:I

.field private mAccumulatedDy:I

.field private mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mBlockHardwareLayers:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCellGapX:I

.field protected mCellGapY:I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mCurrentRotation:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field private mDir:I

.field private mDirtyPageAlpha:Z

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mDriftSlop:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field private mFromFocusHelper:Z

.field private mHardwarePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mHideItems:Z

.field private mInGesture:Z

.field protected mInvalidatedByTouch:Z

.field protected mIsDataReady:Z

.field protected mIsOverScrolled:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field protected mLastPageNotify:I

.field private mLastScreenCenter:I

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field private mMotionListenerRegistered:Z

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field protected mNextPage:I

.field protected mPageBackgroundAlpha:F

.field private mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

.field protected mPageIndicatorTop:I

.field protected mPagePaddingBottom:I

.field protected mPagePaddingLeft:I

.field protected mPagePaddingRight:I

.field protected mPagePaddingTop:I

.field private mPageScrollEndTime:J

.field protected mPageSpacing:I

.field protected mPageSpacingHint:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field protected mPageTransformsDirty:Z

.field protected mPageZoom:F

.field protected mPagesPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPagingTouchSlop:I

.field protected mPanningBasis:D

.field protected mPanningStopDelta:D

.field private mScrollByHover:Z

.field private mScrollByTouchMove:Z

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field private mSnapToPageAfterLayout:I

.field protected mSnapVelocity:I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mVisiblePages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private motionTrackingIsCurrent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const-class v0, Lcom/android/launcher2/PagedView;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageZoom"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_ZOOM:Landroid/util/Property;

    .line 94
    const-class v0, Lcom/android/launcher2/PagedView;

    const-class v1, Ljava/lang/Float;

    const-string v2, "pageBackgroundAlpha"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/PagedView;->PAGE_BG_ALPHA:Landroid/util/Property;

    .line 2817
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 260
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a002d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    .line 109
    const/16 v5, 0x1f4

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 114
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 115
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->ENABLE_DVFS_ONSCROLL:Z

    .line 118
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 119
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 130
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 140
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 144
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    .line 148
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 161
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 162
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 163
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 165
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    .line 166
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 171
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/launcher2/PagedView;->mDir:I

    .line 172
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFromFocusHelper:Z

    .line 173
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    .line 174
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    .line 198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    .line 205
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 209
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 212
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 216
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 220
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 222
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 223
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    .line 226
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 231
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 239
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 244
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 245
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mPageScrollEndTime:J

    .line 1984
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2763
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 2779
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    .line 2818
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 2819
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 2820
    const-wide/high16 v5, 0x404e

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    .line 2821
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 2822
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    .line 2823
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    .line 2824
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    .line 262
    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 264
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 265
    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 266
    const/16 v5, 0x8

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 267
    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    .line 269
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    .line 271
    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    .line 273
    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    .line 275
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 277
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 279
    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 280
    .local v4, pageIndicatorTop:I
    const/16 v5, 0xa

    const/16 v6, 0xa

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 281
    .local v2, pageIndicatorGap:I
    const/16 v5, 0xb

    const/16 v6, 0xb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 282
    .local v3, pageIndicatorMaxVisible:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    iput v4, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    .line 285
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 287
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 288
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 289
    new-instance v5, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v7}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v5, v6, v7}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 290
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 292
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 295
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 296
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    .line 297
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 298
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 300
    new-instance v5, Lcom/android/launcher2/PageIndicatorManager;

    invoke-direct {v5, p0, v4, v2, v3}, Lcom/android/launcher2/PageIndicatorManager;-><init>(Lcom/android/launcher2/PagedView;III)V

    iput-object v5, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    .line 302
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->setSaveEnabled(Z)V

    .line 303
    sget-boolean v5, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    if-eqz v5, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getMotionSensor()V

    .line 305
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PagedView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1968
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1970
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1971
    return-void
.end method

.method private canOverScroll()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .parameter "f"

    .prologue
    .line 2126
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 2127
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 2128
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V
    .locals 4
    .parameter "canvas"
    .parameter "pageInfo"
    .parameter "drawingTime"

    .prologue
    const/4 v3, 0x0

    .line 1242
    iget v2, p2, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1243
    .local v0, page:Landroid/view/View;
    if-nez v0, :cond_0

    .line 1248
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Draw page is NULL. Report this."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1250
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1251
    const-string v2, "Launcher.PagedView"

    const-string v3, "Page visibility not in sync with list of visible pages. This MUST be investigated"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :goto_0
    return-void

    .line 1254
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    if-eqz v2, :cond_2

    .line 1255
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v1

    .line 1259
    .local v1, scrollProgress:F
    invoke-virtual {v0, v3}, Landroid/view/View;->setFastTranslationX(F)V

    .line 1260
    invoke-virtual {v0, v3}, Landroid/view/View;->setFastTranslationY(F)V

    .line 1261
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->updatePageTransform(Landroid/view/View;F)V

    .line 1262
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1263
    iget v2, p2, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setFastTranslationX(F)V

    .line 1264
    iget v2, p2, Lcom/android/launcher2/PagedView$PageInfo;->mTransY:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setFastTranslationY(F)V

    .line 1267
    .end local v1           #scrollProgress:F
    :cond_2
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method private dumpScroller()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollerStartX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerCurrX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerFinalX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollerDur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scrollingFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpVisiblePages()V
    .locals 0

    .prologue
    .line 1239
    return-void
.end method

.method private getCenterOfViewRelative(Landroid/view/View;)I
    .locals 7
    .parameter "page"

    .prologue
    .line 2046
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2047
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 2048
    .local v3, scrollX:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2049
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2050
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 2053
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2055
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    const/16 v6, 0x320

    if-ne v5, v6, :cond_1

    .line 2056
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    div-int/lit8 v6, v4, 0xa

    add-int v1, v5, v6

    .line 2058
    :cond_1
    sub-int v5, v1, v3

    div-int/lit8 v6, v4, 0x2

    add-int v2, v5, v6

    .line 2062
    .local v2, res:I
    return v2
.end method

.method private getLowerBoundForScrollX(I)I
    .locals 5
    .parameter "scrollX"

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, adjustedScrollX:I
    const/4 v2, 0x0

    .line 802
    .local v2, res:I
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v1

    .line 804
    .local v1, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 805
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 806
    div-int v3, v0, v1

    mul-int v2, v3, v1

    .line 815
    :goto_0
    return v2

    .line 808
    :cond_0
    move v0, p1

    .line 809
    if-gez v0, :cond_1

    .line 810
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    neg-int v2, v3

    goto :goto_0

    .line 812
    :cond_1
    div-int v3, v0, v1

    mul-int v2, v3, v1

    goto :goto_0
.end method

.method private getMotionSensor()V
    .locals 2

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 2870
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 2873
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    .line 2874
    const-string v0, "MotionEngine"

    const-string v1, "Cannot get Motion Sensor Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    :cond_1
    return-void
.end method

.method private getNearestScrollXForPage(III)I
    .locals 9
    .parameter "pageIndex"
    .parameter "scrollX"
    .parameter "dir"

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v4

    .line 698
    .local v4, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 699
    mul-int v5, p1, v4

    .line 729
    :cond_0
    :goto_0
    return v5

    .line 701
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v6

    .line 702
    .local v6, startScrollX:I
    const/4 v1, 0x0

    .line 703
    .local v1, multiplier:I
    packed-switch p3, :pswitch_data_0

    .line 715
    add-int/2addr v6, v4

    .line 716
    const/4 v1, 0x1

    .line 719
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    .line 720
    .local v3, pageCount:I
    move v5, p2

    .line 721
    .local v5, res:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v3, :cond_0

    .line 722
    mul-int v8, v0, v4

    mul-int/2addr v8, v1

    add-int v7, v6, v8

    .line 723
    .local v7, temp:I
    invoke-direct {p0, v7}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    .line 724
    .local v2, pageAtSlot:I
    if-ne v2, p1, :cond_2

    .line 725
    move v5, v7

    .line 726
    goto :goto_0

    .line 705
    .end local v0           #i:I
    .end local v2           #pageAtSlot:I
    .end local v3           #pageCount:I
    .end local v5           #res:I
    .end local v7           #temp:I
    :pswitch_0
    const/4 v1, -0x1

    .line 706
    goto :goto_1

    .line 721
    .restart local v0       #i:I
    .restart local v2       #pageAtSlot:I
    .restart local v3       #pageCount:I
    .restart local v5       #res:I
    .restart local v7       #temp:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getPageIndexForScrollX(I)I
    .locals 5
    .parameter "scrollX"

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 675
    .local v0, pageCount:I
    const/high16 v1, -0x8000

    .line 677
    .local v1, res:I
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->getSlotForScrollX(I)I

    move-result v2

    .line 678
    .local v2, slot:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 679
    if-gez p1, :cond_0

    .line 680
    add-int/lit8 v3, v0, -0x1

    rem-int v4, v2, v0

    sub-int v1, v3, v4

    .line 687
    :goto_0
    return v1

    .line 682
    :cond_0
    rem-int v1, v2, v0

    goto :goto_0

    .line 685
    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private getPageTotWidth()I
    .locals 4

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v1, v2, v3

    .line 636
    .local v1, result:I
    if-gtz v1, :cond_0

    .line 637
    const/16 v0, 0x13

    .line 638
    .local v0, RANDOM_NUMBER_WITH_NO_MEANING:I
    const/16 v1, 0x13

    .line 641
    .end local v0           #RANDOM_NUMBER_WITH_NO_MEANING:I
    :cond_0
    return v1
.end method

.method private getScrollXForPageIndex(III)I
    .locals 8
    .parameter "pageIndex"
    .parameter "scrollX"
    .parameter "dir"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 737
    const/4 v3, 0x0

    .line 738
    .local v3, res:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 739
    packed-switch p3, :pswitch_data_0

    .line 778
    :goto_0
    return v3

    .line 741
    :pswitch_0
    invoke-direct {p0, p1, p2, v6}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v3

    .line 746
    goto :goto_0

    .line 749
    :pswitch_1
    invoke-direct {p0, p1, p2, v7}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v3

    .line 754
    goto :goto_0

    .line 757
    :pswitch_2
    invoke-direct {p0, p1, p2, v7}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v4

    .line 758
    .local v4, rightScrollX:I
    invoke-direct {p0, p1, p2, v6}, Lcom/android/launcher2/PagedView;->getNearestScrollXForPage(III)I

    move-result v2

    .line 759
    .local v2, leftScrollX:I
    sub-int v5, p2, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 760
    .local v0, delta1:I
    sub-int v5, v4, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 761
    .local v1, delta2:I
    if-ge v0, v1, :cond_0

    .line 762
    move v3, v2

    goto :goto_0

    .line 764
    :cond_0
    move v3, v4

    goto :goto_0

    .line 775
    .end local v0           #delta1:I
    .end local v1           #delta2:I
    .end local v2           #leftScrollX:I
    .end local v4           #rightScrollX:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    goto :goto_0

    .line 739
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSlotForScrollX(I)I
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 645
    const/4 v1, 0x0

    .line 646
    .local v1, res:I
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    .line 648
    .local v0, pageTotWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    if-gez p1, :cond_0

    .line 650
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 657
    :goto_0
    return v1

    .line 652
    :cond_0
    div-int v1, p1, v0

    goto :goto_0

    .line 655
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v1, v2, v0

    goto :goto_0
.end method

.method private isLoopingDisabledInCSC()Z
    .locals 3

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, cscLauncherDisabledLooping:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Launcher_DisablePageRotation"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 622
    return v0
.end method

.method private loadAssociatedPages(IZ)V
    .locals 8
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    .line 2326
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v6, :cond_0

    .line 2327
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 2328
    .local v1, count:I
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    .line 2329
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v4

    .line 2330
    .local v4, lowerPageBound:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v5

    .line 2335
    .local v5, upperPageBound:I
    invoke-direct {p0, v4, v5, p1, p2}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IIIZ)Z

    .line 2338
    if-eqz p2, :cond_1

    .line 2352
    .end local v1           #count:I
    .end local v4           #lowerPageBound:I
    .end local v5           #upperPageBound:I
    :cond_0
    return-void

    .line 2339
    .restart local v1       #count:I
    .restart local v4       #lowerPageBound:I
    .restart local v5       #upperPageBound:I
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2340
    if-ne p1, v2, :cond_3

    .line 2339
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2341
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    .line 2342
    .local v3, layout:Lcom/android/launcher2/Page;
    invoke-interface {v3}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v0

    .line 2343
    .local v0, childCount:I
    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/android/launcher2/PagedView;->syncPageItemsInternal(IIIZ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2344
    if-lez v0, :cond_4

    .line 2345
    invoke-interface {v3}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 2347
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static mix(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "mix"

    .prologue
    .line 2642
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;
    .locals 3

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, res:Lcom/android/launcher2/PagedView$PageInfo;
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #res:Lcom/android/launcher2/PagedView$PageInfo;
    check-cast v0, Lcom/android/launcher2/PagedView$PageInfo;

    .line 615
    .restart local v0       #res:Lcom/android/launcher2/PagedView$PageInfo;
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher2/PagedView$PageInfo;->reset()V

    .line 616
    return-object v0

    .line 613
    :cond_0
    new-instance v0, Lcom/android/launcher2/PagedView$PageInfo;

    .end local v0           #res:Lcom/android/launcher2/PagedView$PageInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/PagedView$PageInfo;-><init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V

    .restart local v0       #res:Lcom/android/launcher2/PagedView$PageInfo;
    goto :goto_0
.end method

.method private notifyPageSwitchListener()V
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 426
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastPageNotify:I

    .line 428
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1717
    sub-float/2addr p1, v1

    .line 1718
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1976
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1978
    :cond_0
    return-void
.end method

.method private scrollToNonLooped(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 537
    if-gez p1, :cond_1

    .line 538
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 539
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 541
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 544
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 545
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->canOverScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 547
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 550
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method private syncPageItemsInternal(IIIZ)Z
    .locals 2
    .parameter "lowerPageBound"
    .parameter "upperPageBound"
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v1, 0x0

    .line 2355
    if-gt p1, p3, :cond_1

    if-gt p3, p2, :cond_1

    if-gt p1, p2, :cond_1

    .line 2356
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2357
    invoke-virtual {p0, p3, p4}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 2358
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2360
    :cond_0
    const/4 v0, 0x1

    .line 2362
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateMotionTracking(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1997
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 1999
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 2000
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2001
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2002
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 2003
    return-void
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1722
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1726
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1728
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1742
    :goto_0
    return-void

    .line 1731
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1732
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1735
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1736
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1737
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1741
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1739
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1384
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1385
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1386
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 1387
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 1388
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 1391
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1392
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2255
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "v"
    .parameter "r"
    .parameter "onFinishAnimationRunnable"

    .prologue
    .line 1583
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 1585
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 1586
    new-instance v1, Lcom/android/launcher2/PagedView$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/launcher2/PagedView$2;-><init>(Lcom/android/launcher2/PagedView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1597
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1598
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1686
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1687
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1691
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1692
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1693
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1696
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 314
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 937
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v7, -0x8000

    const/4 v6, 0x1

    .line 883
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 884
    .local v1, pageCount:I
    if-ge v1, v6, :cond_1

    move v2, v4

    .line 931
    :cond_0
    :goto_0
    return v2

    .line 888
    :cond_1
    const/4 v2, 0x0

    .line 889
    .local v2, res:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 891
    iget v4, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 892
    :cond_2
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 893
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 895
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 896
    const/4 v2, 0x1

    goto :goto_0

    .line 897
    :cond_4
    iget v5, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v5, v7, :cond_0

    .line 898
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 899
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 903
    iput v7, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 904
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 907
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v5, :cond_5

    .line 908
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 909
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 914
    :cond_5
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v4, :cond_6

    .line 915
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    .line 916
    .local v3, temp:I
    iget v4, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 917
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 918
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 922
    .end local v3           #temp:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 923
    const/16 v4, 0x1000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 925
    .local v0, ev:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 928
    .end local v0           #ev:Landroid/view/accessibility/AccessibilityEvent;
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1745
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1747
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1749
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1764
    :goto_0
    return-void

    .line 1750
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1753
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1754
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1757
    :cond_1
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1758
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1759
    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1763
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0

    .line 1761
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 1601
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1602
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 11
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    .line 1613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1614
    .local v4, x:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v5, v9

    .line 1616
    .local v5, xDiff:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1617
    .local v3, touchSlop:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    int-to-float v9, v9

    mul-float/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1619
    .local v1, driftSlop:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    if-le v5, v9, :cond_3

    const/4 v7, 0x1

    .line 1620
    .local v7, xPaged:Z
    :goto_0
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDriftSlop:I

    if-lez v9, :cond_5

    if-le v5, v1, :cond_4

    const/4 v6, 0x1

    .line 1622
    .local v6, xMoved:Z
    :goto_1
    if-gtz v1, :cond_8

    .line 1623
    if-nez v6, :cond_0

    if-eqz v7, :cond_2

    .line 1624
    :cond_0
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v9, :cond_7

    if-eqz v7, :cond_1

    .line 1626
    :goto_2
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1627
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1628
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1629
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1630
    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1631
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1632
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1635
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 1683
    :cond_2
    :goto_3
    return-void

    .line 1619
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 1620
    .restart local v7       #xPaged:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    if-le v5, v3, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_1

    .line 1624
    .restart local v6       #xMoved:Z
    :cond_7
    if-eqz v6, :cond_1

    goto :goto_2

    .line 1638
    :cond_8
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v9, :cond_c

    if-eqz v7, :cond_b

    .line 1639
    :goto_4
    const/4 v9, 0x4

    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v9, v10, :cond_9

    .line 1640
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1643
    :cond_9
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float v2, v9, v10

    .line 1644
    .local v2, motionX:F
    int-to-float v9, v3

    cmpl-float v9, v2, v9

    if-lez v9, :cond_d

    const/4 v8, 0x1

    .line 1645
    .local v8, xTraveled:Z
    :goto_5
    if-lt v3, v5, :cond_a

    if-eqz v8, :cond_e

    :cond_a
    const/4 v9, 0x1

    :goto_6
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1647
    const/4 v9, 0x1

    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v10, :cond_b

    .line 1649
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 1652
    .end local v2           #motionX:F
    .end local v8           #xTraveled:Z
    :cond_b
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_f

    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_f

    .line 1653
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1654
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1655
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1656
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1657
    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    goto :goto_3

    .line 1638
    :cond_c
    if-eqz v6, :cond_b

    goto :goto_4

    .line 1644
    .restart local v2       #motionX:F
    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 1645
    .restart local v8       #xTraveled:Z
    :cond_e
    const/4 v9, 0x4

    goto :goto_6

    .line 1658
    .end local v2           #motionX:F
    .end local v8           #xTraveled:Z
    :cond_f
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_10

    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 1660
    :cond_10
    iget v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v9, v10

    sub-float v0, v9, v4

    .line 1662
    .local v0, deltaX:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1667
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_12

    .line 1668
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v9, v0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1669
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1670
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v9, :cond_11

    .line 1671
    float-to-int v9, v0

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1676
    :goto_7
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1677
    float-to-int v9, v0

    int-to-float v9, v9

    sub-float v9, v0, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_3

    .line 1674
    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_7

    .line 1679
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_3
.end method

.method protected disableRollNavigation()V
    .locals 2

    .prologue
    .line 2860
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2861
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    invoke-virtual {v0, p0}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 2862
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 2864
    :cond_0
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 2794
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 2795
    .local v0, r:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2800
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 2802
    :cond_1
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 1279
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 1281
    const/4 v7, 0x0

    .line 1284
    .local v7, skipDrawing:Z
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    if-eqz v8, :cond_1

    .line 1285
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    const/4 v7, 0x1

    .line 1291
    :goto_0
    if-eqz v7, :cond_3

    .line 1345
    :goto_1
    return-void

    .line 1285
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1287
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v7, 0x1

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1295
    :cond_3
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-nez v8, :cond_d

    .line 1296
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v3, v8, 0x2

    .line 1297
    .local v3, halfScreenSize:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int v6, v8, v3

    .line 1299
    .local v6, screenCenter:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-eq v6, v8, :cond_4

    .line 1300
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 1301
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 1302
    iput v6, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 1304
    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    if-eqz v8, :cond_5

    .line 1305
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 1308
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->dumpVisiblePages()V

    .line 1310
    const/4 v0, 0x0

    .line 1312
    .local v0, centerOfScreen:Lcom/android/launcher2/PagedView$PageInfo;
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1313
    .local v5, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eqz v0, :cond_7

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    .line 1315
    :cond_7
    move-object v0, v5

    goto :goto_3

    .line 1318
    .end local v5           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v1

    .line 1320
    .local v1, drawingTime:J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1321
    iget v8, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v11, p0, Lcom/android/launcher2/PagedView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/launcher2/PagedView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1323
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1327
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1329
    :cond_9
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1330
    .restart local v5       #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eq v5, v0, :cond_a

    .line 1333
    invoke-direct {p0, p1, v5, v1, v2}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    goto :goto_4

    .line 1335
    .end local v5           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_b
    if-eqz v0, :cond_c

    .line 1336
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher2/PagedView;->drawPage(Landroid/graphics/Canvas;Lcom/android/launcher2/PagedView$PageInfo;J)V

    .line 1338
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1339
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1343
    .end local v0           #centerOfScreen:Lcom/android/launcher2/PagedView$PageInfo;
    .end local v1           #drawingTime:J
    .end local v3           #halfScreenSize:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #screenCenter:I
    :cond_d
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8, p1}, Lcom/android/launcher2/PageIndicatorManager;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 1344
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    goto/16 :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 1368
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1369
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1370
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1379
    :goto_0
    return v0

    .line 1373
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1374
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1375
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1379
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected enableRollNavigation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2833
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_panning"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_2

    .line 2837
    :cond_0
    const-string v1, "MotionEngine"

    const-string v2, "motion setting is turned off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    :cond_1
    :goto_0
    return-void

    .line 2840
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2841
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentRotation:I

    .line 2842
    sget-boolean v1, Lcom/android/launcher2/PagedView;->sIsMotionEngineEnabled:Z

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    if-nez v1, :cond_1

    .line 2844
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 2845
    iput v3, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    .line 2846
    iput v3, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    .line 2847
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 2848
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mMotionListenerRegistered:Z

    .line 2849
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_panning_sensitivity"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xa

    mul-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x28

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    .line 2853
    const-string v1, "MotionEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRollNavigation : mPanningBasis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .parameter "focused"

    .prologue
    .line 1407
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1408
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 1410
    .local v2, v:Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1411
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1421
    :cond_0
    return-void

    .line 1414
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1417
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1418
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1419
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method protected forceUpdateAdjacentPagesAlpha()V
    .locals 1

    .prologue
    .line 1170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 1171
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 1172
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 324
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 309
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 319
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected getAdjustedPageIndex(I)I
    .locals 3
    .parameter "pageIndex"

    .prologue
    const/4 v1, 0x0

    .line 785
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 786
    .local v0, lastPageIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 787
    if-gez p1, :cond_0

    .line 794
    .end local v0           #lastPageIndex:I
    :goto_0
    return v0

    .line 789
    .restart local v0       #lastPageIndex:I
    :cond_0
    if-le p1, v0, :cond_1

    move v0, v1

    .line 790
    goto :goto_0

    :cond_1
    move v0, p1

    .line 792
    goto :goto_0

    .line 794
    :cond_2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 2366
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 2369
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2370
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getCheckedChildrenAndFolderChildren(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2384
    .local p1, checkedItems:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2385
    .local v0, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/BaseItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->grandchildren()Ljava/lang/Iterable;

    move-result-object v8

    .line 2386
    .local v8, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2387
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    .line 2390
    .local v6, item:Lcom/android/launcher2/BaseItem;
    instance-of v9, v7, Lcom/android/launcher2/FolderIconView;

    if-eqz v9, :cond_2

    .line 2391
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    .line 2392
    .local v2, folderItem:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {v2}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v3

    .line 2393
    .local v3, folderItemCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 2394
    invoke-virtual {v2, v4}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 2395
    .local v1, childItem:Lcom/android/launcher2/AppItem;
    iget-wide v9, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2396
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2397
    iget-wide v9, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2393
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2400
    .end local v1           #childItem:Lcom/android/launcher2/AppItem;
    .end local v2           #folderItem:Lcom/android/launcher2/AppFolderItem;
    .end local v3           #folderItemCount:I
    .end local v4           #i:I
    :cond_2
    iget-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2401
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2402
    iget-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2405
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2409
    .end local v6           #item:Lcom/android/launcher2/BaseItem;
    .end local v7           #view:Landroid/view/View;
    :cond_4
    return-object v0
.end method

.method protected getCheckedGrandchildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2375
    .local v0, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->grandchildren()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2376
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2377
    check-cast v2, Landroid/widget/Checkable;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2380
    :cond_1
    return-object v0
.end method

.method protected getCheckedViewsAndFolderViews(Ljava/util/HashSet;)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2413
    .local p1, checkedItems:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 2414
    .local v0, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->grandchildren()Ljava/lang/Iterable;

    move-result-object v8

    .line 2415
    .local v8, views:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/view/View;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2416
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    .line 2419
    .local v6, item:Lcom/android/launcher2/BaseItem;
    instance-of v9, v7, Lcom/android/launcher2/FolderIconView;

    if-eqz v9, :cond_2

    .line 2420
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppFolderItem;

    .line 2421
    .local v2, folderItem:Lcom/android/launcher2/AppFolderItem;
    invoke-virtual {v2}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v3

    .line 2422
    .local v3, folderItemCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 2423
    invoke-virtual {v2, v4}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 2424
    .local v1, childItem:Lcom/android/launcher2/AppItem;
    iget-wide v9, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2425
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2426
    iget-wide v9, v1, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2422
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2429
    .end local v1           #childItem:Lcom/android/launcher2/AppItem;
    .end local v2           #folderItem:Lcom/android/launcher2/AppFolderItem;
    .end local v3           #folderItemCount:I
    .end local v4           #i:I
    :cond_2
    iget-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2430
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2431
    iget-wide v9, v6, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2434
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2438
    .end local v6           #item:Lcom/android/launcher2/BaseItem;
    .end local v7           #view:Landroid/view/View;
    :cond_4
    return-object v0
.end method

.method protected getChildOffset(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 2037
    const/4 v1, 0x0

    .line 2038
    .local v1, offset:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2039
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2040
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2042
    :cond_0
    return v1
.end method

.method public getClosestPageForScrollX(I)I
    .locals 4
    .parameter "scrollX"

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 664
    .local v0, pageCount:I
    int-to-float v2, p1

    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 665
    .local v1, pageIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    rem-int/2addr v1, v0

    .line 668
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    .line 670
    return v1
.end method

.method getComingPage()I
    .locals 2

    .prologue
    .line 366
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;
    .locals 1

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public getLeftPage()Landroid/view/View;
    .locals 1

    .prologue
    .line 2962
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v0, :cond_0

    .line 2963
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2965
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getNonLoopedScrollXForPageIndex(I)I
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v0

    mul-int/2addr v0, p1

    return v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageBackgroundAlpha()F
    .locals 1

    .prologue
    .line 2789
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    return v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageNearestToCenterOfScreen()I
    .locals 15

    .prologue
    .line 2071
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 2072
    .local v8, pageWidth:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 2073
    .local v2, leftEdge:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int v10, v13, v8

    .line 2074
    .local v10, rightEdge:I
    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v5

    .line 2075
    .local v5, pageLeftIndex:I
    invoke-direct {p0, v10}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v7

    .line 2076
    .local v7, pageRightIndex:I
    const/high16 v0, -0x8000

    .line 2078
    .local v0, indexOfPageOnScreen:I
    if-ne v5, v7, :cond_1

    .line 2079
    move v0, v5

    .line 2103
    :cond_0
    :goto_0
    return v0

    .line 2081
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 2082
    .local v3, leftView:Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    .line 2083
    .local v11, rightView:Landroid/view/View;
    if-eqz v3, :cond_0

    if-eqz v11, :cond_0

    .line 2084
    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v3}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v4, v13, v14

    .line 2085
    .local v4, pageLeftCenter:I
    invoke-direct {p0, v10}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v13

    invoke-direct {p0, v11}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v14

    add-int v6, v13, v14

    .line 2086
    .local v6, pageRightCenter:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    div-int/lit8 v14, v8, 0x2

    add-int v12, v13, v14

    .line 2087
    .local v12, screenCenter:I
    sub-int v13, v12, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2088
    .local v1, leftDelta:I
    sub-int v13, v6, v12

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 2091
    .local v9, rightDelta:I
    iget v13, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v13, v5, :cond_3

    .line 2092
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v1, v13, :cond_2

    move v0, v7

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    .line 2095
    :cond_3
    add-int v13, v1, v9

    div-int/lit8 v13, v13, 0x3

    if-lt v9, v13, :cond_4

    move v0, v5

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v7

    goto :goto_2
.end method

.method public getPageSpacing()I
    .locals 1

    .prologue
    .line 2528
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    return v0
.end method

.method public getPageSwitchListener()Lcom/android/launcher2/PagedView$PageSwitchListener;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    return-object v0
.end method

.method public getPageZoom()F
    .locals 1

    .prologue
    .line 2773
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 2025
    const/4 v1, 0x0

    .line 2026
    .local v1, offset:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2027
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2028
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2030
    :cond_0
    return v1
.end method

.method public getRightPage()Landroid/view/View;
    .locals 2

    .prologue
    .line 2970
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2971
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2973
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected getScrollProgress(Lcom/android/launcher2/PagedView$PageInfo;)F
    .locals 8
    .parameter "pageInfo"

    .prologue
    const/high16 v7, 0x3f80

    .line 1699
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    .line 1700
    .local v3, totalDistance:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1701
    .local v1, screenLeft:I
    iget v4, p1, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 1702
    .local v4, viewLeft:I
    sub-int v0, v1, v4

    .line 1703
    .local v0, delta:I
    int-to-float v5, v0

    int-to-float v6, v3

    mul-float/2addr v6, v7

    div-float v2, v5, v6

    .line 1704
    .local v2, scrollProgress:F
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1705
    const/high16 v5, -0x4080

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1707
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1708
    const/4 v2, 0x0

    .line 1710
    :cond_0
    return v2
.end method

.method public grandchildren()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2582
    new-instance v0, Lcom/android/launcher2/PagedView$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PagedView$3;-><init>(Lcom/android/launcher2/PagedView;)V

    return-object v0
.end method

.method public handleScrollOnOrientationChange()V
    .locals 2

    .prologue
    .line 3009
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 3010
    .local v0, pageIndex:I
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3011
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v0

    .line 3015
    :goto_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_0

    .line 3016
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 3018
    :cond_0
    return-void

    .line 3013
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getClosestPageForScrollX(I)I

    move-result v0

    goto :goto_0
.end method

.method public hidePageIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->hidePageIndicator(Z)V

    .line 2675
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1448
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .parameter "index"

    .prologue
    .line 378
    return p1
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 2456
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 2457
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 2459
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 2460
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 6
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x1

    .line 2462
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_1

    .line 2500
    :cond_0
    :goto_0
    return-void

    .line 2466
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_0

    .line 2468
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2469
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2472
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 2475
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 2479
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 2483
    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 2484
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 2488
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 2489
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2490
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2491
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2490
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2495
    :cond_3
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v2, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 2496
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 2497
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateAdjacentPagesAlpha()V

    .line 2498
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method isFastScrolling()Z
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v0

    return v0
.end method

.method isHoveringArea(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/high16 v3, 0x4270

    .line 2750
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v0

    .line 2752
    .local v0, width:I
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_1

    .line 2760
    :cond_0
    :goto_0
    return v1

    .line 2755
    :cond_1
    int-to-float v2, v0

    sub-float/2addr v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    .line 2760
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isLoopingEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 626
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->isLoopingDisabledInCSC()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .parameter "page"

    .prologue
    .line 2323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 2324
    return-void
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1773
    const/high16 v0, 0x3f80

    .line 1774
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1775
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 3000
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 3002
    return-void
.end method

.method protected onDrawComplete(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1275
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1963
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 1945
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 1946
    const/4 v1, 0x0

    .line 1947
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1952
    .local v0, hscroll:F
    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    .line 1953
    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    .line 1954
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 1958
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1949
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1950
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_1

    .line 1956
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1940
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const-wide/16 v12, 0x12c

    const/4 v8, 0x1

    const/high16 v11, 0x4270

    const/4 v7, 0x0

    .line 2702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2703
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getWidth()I

    move-result v5

    .line 2704
    .local v5, width:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 2706
    .local v6, x:F
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.feature.hovering_ui"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2746
    :goto_0
    return v7

    .line 2711
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v9

    if-gtz v9, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 2713
    :cond_1
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v7, v8

    .line 2746
    goto :goto_0

    .line 2717
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2719
    .local v1, currentTime:J
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-nez v9, :cond_3

    .line 2720
    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    .line 2721
    iput-wide v1, p0, Lcom/android/launcher2/PagedView;->mPageScrollEndTime:J

    .line 2724
    :cond_3
    iget-wide v9, p0, Lcom/android/launcher2/PagedView;->mPageScrollEndTime:J

    sub-long v3, v1, v9

    .line 2726
    .local v3, duration:J
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_4

    cmpg-float v9, v6, v11

    if-gtz v9, :cond_4

    .line 2728
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v7, :cond_2

    cmp-long v7, v3, v12

    if-ltz v7, :cond_2

    .line 2729
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v7, v7, -0x1

    iget v9, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    const/4 v10, 0x2

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_1

    .line 2731
    :cond_4
    int-to-float v9, v5

    sub-float/2addr v9, v11

    cmpl-float v9, v6, v9

    if-ltz v9, :cond_5

    int-to-float v9, v5

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_5

    .line 2733
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v7, :cond_2

    cmp-long v7, v3, v12

    if-ltz v7, :cond_2

    .line 2734
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v7, v7, 0x1

    iget v9, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    const/4 v10, 0x3

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_1

    .line 2737
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    goto :goto_1

    .line 2742
    .end local v1           #currentTime:J
    .end local v3           #duration:J
    :pswitch_2
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    goto :goto_1

    .line 2713
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 2655
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2656
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2657
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2658
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2659
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2660
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2662
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2649
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2650
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2651
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 2680
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 2697
    :goto_0
    return v2

    .line 2684
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2685
    .local v0, isListScrollOn:I
    if-nez v0, :cond_1

    move v2, v3

    .line 2686
    goto :goto_0

    .line 2689
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 2690
    .local v1, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v4, :cond_2

    move v2, v3

    .line 2691
    goto :goto_0

    .line 2694
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->isHoveringArea(FF)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    .line 2695
    goto :goto_0

    .line 2697
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1460
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v8, :cond_0

    .line 1461
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    .line 1467
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1470
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v8

    if-gtz v8, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 1578
    :cond_1
    :goto_0
    return v6

    .line 1477
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1478
    .local v0, action:I
    if-ne v0, v10, :cond_3

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v8, v6, :cond_1

    .line 1483
    :cond_3
    const/4 v2, 0x0

    .line 1485
    .local v2, shouldInterceptForFastScroll:Z
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    .line 1578
    :goto_1
    :pswitch_0
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v8, v11, :cond_1

    :cond_4
    if-nez v2, :cond_1

    move v6, v7

    goto :goto_0

    .line 1490
    :pswitch_1
    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    if-eqz v8, :cond_5

    .line 1491
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    .line 1492
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1493
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    goto :goto_1

    .line 1505
    :cond_5
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1506
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1507
    .local v5, y:F
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v8, v3, v5}, Lcom/android/launcher2/PageIndicatorManager;->isInPageIndicator(FF)Z

    move-result v2

    .line 1509
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1510
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_6

    .line 1511
    new-instance v8, Lcom/android/launcher2/PagedView$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/PagedView$1;-><init>(Lcom/android/launcher2/PagedView;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1524
    :cond_6
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1525
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1532
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getFinalX()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->getCurrX()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1533
    .local v4, xDist:I
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v4, v8, :cond_9

    .line 1534
    :cond_7
    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1535
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1542
    :goto_2
    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1543
    iput v10, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1548
    :cond_8
    :goto_3
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    goto :goto_1

    .line 1537
    :cond_9
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_2

    .line 1544
    :cond_a
    invoke-virtual {p0, v3, v5}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1545
    const/4 v8, 0x3

    iput v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 1554
    .end local v1           #handler:Landroid/os/Handler;
    .end local v3           #x:F
    .end local v4           #xDist:I
    .end local v5           #y:F
    :pswitch_3
    iget v8, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v11, v8, :cond_b

    .line 1555
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1557
    :cond_b
    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1558
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1559
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 1560
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mInGesture:Z

    .line 1561
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1565
    :pswitch_4
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_1

    .line 1569
    :pswitch_5
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 1570
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1485
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 20
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1075
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1082
    :cond_0
    sub-int v16, p4, p2

    .line 1083
    .local v16, pageWidth:I
    sub-int v14, p5, p3

    .line 1084
    .local v14, pageHeight:I
    const/4 v15, 0x0

    .line 1085
    .local v15, pageLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    .line 1086
    .local v4, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v4, :cond_3

    .line 1087
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1088
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1089
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 1090
    .local v12, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1091
    .local v8, childWidth:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1093
    .local v5, childHeight:I
    iget v10, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1094
    .local v10, gravity:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    .line 1095
    const/16 v10, 0x31

    .line 1098
    :cond_1
    and-int/lit8 v17, v10, 0x7

    packed-switch v17, :pswitch_data_0

    .line 1109
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    sub-int v17, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v2, v17, v18

    .line 1110
    .local v2, availWidth:I
    sub-int v9, v2, v8

    .line 1111
    .local v9, extraWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v15

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    div-int/lit8 v18, v9, 0x2

    add-int v6, v17, v18

    .line 1114
    .end local v2           #availWidth:I
    .end local v9           #extraWidth:I
    .local v6, childLeft:I
    :goto_2
    and-int/lit8 v17, v10, 0x70

    sparse-switch v17, :sswitch_data_0

    .line 1123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    sub-int v18, v18, v5

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 1128
    .local v7, childTop:I
    :goto_3
    add-int v17, v6, v8

    add-int v18, v7, v5

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v17, v0

    add-int v17, v17, v16

    add-int v15, v15, v17

    .line 1086
    .end local v5           #childHeight:I
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v8           #childWidth:I
    .end local v10           #gravity:I
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1100
    .restart local v5       #childHeight:I
    .restart local v8       #childWidth:I
    .restart local v10       #gravity:I
    .restart local v12       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v15

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 1101
    .restart local v6       #childLeft:I
    goto :goto_2

    .line 1103
    .end local v6           #childLeft:I
    :pswitch_2
    add-int v17, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v17, v17, v8

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 1105
    .restart local v6       #childLeft:I
    goto :goto_2

    .line 1117
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v17, v0

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v17, v17, v18

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    sub-int v7, v17, v18

    .line 1118
    .restart local v7       #childTop:I
    goto :goto_3

    .line 1120
    .end local v7           #childTop:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    sub-int v17, v17, v5

    iget v0, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 1121
    .restart local v7       #childTop:I
    goto :goto_3

    .line 1139
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childLeft:I
    .end local v7           #childTop:I
    .end local v8           #childWidth:I
    .end local v10           #gravity:I
    .end local v12           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 1140
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v13

    .line 1141
    .local v13, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1145
    :cond_5
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 1146
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->rotateFolder()V

    .line 1147
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 1149
    .end local v13           #newX:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/PageIndicatorManager;->layoutPageIndicator()V

    .line 1151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    move/from16 v17, v0

    const/high16 v18, -0x8000

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 1152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1153
    const/high16 v17, -0x8000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 1155
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->setDirtyFlags()V

    goto/16 :goto_0

    .line 1098
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1114
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PageIndicatorManager;->checkPageIndicatorLongPress(FF)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 950
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 951
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1059
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    const/high16 v23, 0x4000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    const/4 v4, 0x1

    .line 956
    .local v4, checkMatchParentWidth:Z
    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    const/high16 v23, 0x4000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    const/4 v3, 0x1

    .line 958
    .local v3, checkMatchParentHeight:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v23, v0

    add-int v20, v22, v23

    .line 959
    .local v20, verticalPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v23, v0

    add-int v12, v22, v23

    .line 960
    .local v12, horizontalPadding:I
    const/16 v16, 0x0

    .line 961
    .local v16, maxWidth:I
    const/4 v15, 0x0

    .line 962
    .local v15, maxHeight:I
    const/16 v17, 0x0

    .line 964
    .local v17, mustMake2ndPass:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    .line 965
    .local v5, childCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    if-ge v13, v5, :cond_b

    .line 966
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 967
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 968
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 969
    .local v14, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x70

    const/16 v23, 0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    :cond_1
    const/16 v19, 0x1

    .line 971
    .local v19, verticalGravityIsTop:Z
    :goto_4
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v8, v22, v23

    .line 972
    .local v8, childHorizontalMargins:I
    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v23, v0

    add-int v23, v23, v22

    if-eqz v19, :cond_a

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingTop()I

    move-result v22

    :goto_5
    sub-int v9, v23, v22

    .line 977
    .local v9, childVerticalMargins:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    sub-int v22, v22, v12

    sub-int v22, v22, v8

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 981
    .local v11, childWidthMeasureSpec:I
    add-int v22, v20, v9

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    .line 984
    .local v7, childHeightMeasureSpec:I
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 986
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v10, v22, v8

    .line 987
    .local v10, childWidth:I
    move/from16 v0, v16

    if-le v10, v0, :cond_2

    .line 988
    move/from16 v16, v10

    .line 990
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    add-int v6, v22, v9

    .line 991
    .local v6, childHeight:I
    if-le v6, v15, :cond_3

    .line 992
    move v15, v6

    .line 994
    :cond_3
    if-eqz v4, :cond_4

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 996
    :cond_5
    const/16 v17, 0x1

    .line 965
    .end local v6           #childHeight:I
    .end local v7           #childHeightMeasureSpec:I
    .end local v8           #childHorizontalMargins:I
    .end local v9           #childVerticalMargins:I
    .end local v10           #childWidth:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v19           #verticalGravityIsTop:Z
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 955
    .end local v3           #checkMatchParentHeight:Z
    .end local v4           #checkMatchParentWidth:Z
    .end local v5           #childCount:I
    .end local v12           #horizontalPadding:I
    .end local v13           #i:I
    .end local v15           #maxHeight:I
    .end local v16           #maxWidth:I
    .end local v17           #mustMake2ndPass:Z
    .end local v18           #v:Landroid/view/View;
    .end local v20           #verticalPadding:I
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 956
    .restart local v4       #checkMatchParentWidth:Z
    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 969
    .restart local v3       #checkMatchParentHeight:Z
    .restart local v5       #childCount:I
    .restart local v12       #horizontalPadding:I
    .restart local v13       #i:I
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v15       #maxHeight:I
    .restart local v16       #maxWidth:I
    .restart local v17       #mustMake2ndPass:Z
    .restart local v18       #v:Landroid/view/View;
    .restart local v20       #verticalPadding:I
    :cond_9
    const/16 v19, 0x0

    goto :goto_4

    .line 972
    .restart local v8       #childHorizontalMargins:I
    .restart local v19       #verticalGravityIsTop:Z
    :cond_a
    const/16 v22, 0x0

    goto :goto_5

    .line 1000
    .end local v8           #childHorizontalMargins:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #v:Landroid/view/View;
    .end local v19           #verticalGravityIsTop:Z
    :cond_b
    add-int v16, v16, v12

    .line 1001
    add-int v15, v15, v20

    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumHeight()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1005
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getSuggestedMinimumWidth()I

    move-result v22

    move/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1007
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v22

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/launcher2/PagedView;->resolveSize(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 1012
    if-eqz v17, :cond_11

    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v22

    sub-int v16, v22, v12

    .line 1014
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v22

    sub-int v15, v22, v20

    .line 1015
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v5, :cond_11

    .line 1016
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1017
    .restart local v18       #v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 1018
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1019
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v4, :cond_c

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    :cond_c
    if-eqz v3, :cond_e

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 1025
    :cond_d
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 1026
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1033
    .restart local v11       #childWidthMeasureSpec:I
    :goto_7
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_10

    .line 1034
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v22, v0

    sub-int v22, v15, v22

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    const/high16 v23, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1041
    .restart local v7       #childHeightMeasureSpec:I
    :goto_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Landroid/view/View;->measure(II)V

    .line 1015
    .end local v7           #childHeightMeasureSpec:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1029
    .restart local v14       #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_f
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v22, v22, v12

    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v11

    .restart local v11       #childWidthMeasureSpec:I
    goto :goto_7

    .line 1037
    :cond_10
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v22, v0

    add-int v22, v22, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v23, v0

    move/from16 v0, p2

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/PagedView;->getChildMeasureSpec(III)I

    move-result v7

    .restart local v7       #childHeightMeasureSpec:I
    goto :goto_8

    .line 1046
    .end local v7           #childHeightMeasureSpec:I
    .end local v11           #childWidthMeasureSpec:I
    .end local v14           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v18           #v:Landroid/view/View;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v21

    .line 1048
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    move/from16 v22, v0

    if-gez v22, :cond_12

    .line 1049
    div-int/lit8 v22, v21, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 1054
    :goto_9
    const/16 v22, 0x1

    move/from16 v0, v22

    if-gt v5, v0, :cond_13

    .line 1055
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 1051
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    goto :goto_9

    .line 1057
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    move/from16 v22, v0

    add-int v22, v22, v21

    add-int/lit8 v23, v5, -0x1

    mul-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 11
    .parameter "motionEvent"

    .prologue
    .line 2879
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2959
    :cond_0
    :goto_0
    return-void

    .line 2881
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDx()I

    move-result v2

    .line 2882
    .local v2, dx:I
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getPanningDy()I

    move-result v3

    .line 2885
    .local v3, dy:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDx:I

    .line 2886
    iget v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDy:I

    .line 2887
    const/4 v4, 0x5

    .line 2888
    .local v4, dyDivideRatio:I
    int-to-double v0, v2

    .line 2889
    .local v0, delta:D
    const/4 v5, 0x5

    .line 2891
    .local v5, dyToDxRatio:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentRotation:I

    packed-switch v6, :pswitch_data_1

    .line 2902
    if-nez v3, :cond_1

    .line 2903
    mul-int v6, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    if-lez v2, :cond_5

    const/4 v6, 0x1

    :goto_1
    int-to-double v9, v6

    mul-double v0, v7, v9

    .line 2916
    :cond_1
    :goto_2
    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " delta = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " acc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_7

    .line 2920
    iget-wide v7, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    const-wide/16 v9, 0x0

    cmpl-double v6, v0, v9

    if-lez v6, :cond_6

    const/4 v6, -0x1

    :goto_3
    int-to-double v9, v6

    mul-double/2addr v9, v0

    add-double v6, v7, v9

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mPanningStopDelta:D

    goto :goto_0

    .line 2893
    :pswitch_1
    mul-int v6, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    if-gez v3, :cond_2

    const/4 v6, 0x1

    :goto_4
    int-to-double v9, v6

    mul-double v0, v7, v9

    .line 2894
    goto :goto_2

    .line 2893
    :cond_2
    const/4 v6, -0x1

    goto :goto_4

    .line 2896
    :pswitch_2
    mul-int v6, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    if-gez v2, :cond_3

    const/4 v6, 0x1

    :goto_5
    int-to-double v9, v6

    mul-double v0, v7, v9

    .line 2897
    goto :goto_2

    .line 2896
    :cond_3
    const/4 v6, -0x1

    goto :goto_5

    .line 2899
    :pswitch_3
    mul-int v6, v2, v2

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    if-lez v3, :cond_4

    const/4 v6, 0x1

    :goto_6
    int-to-double v9, v6

    mul-double v0, v7, v9

    .line 2900
    goto :goto_2

    .line 2899
    :cond_4
    const/4 v6, -0x1

    goto :goto_6

    .line 2903
    :cond_5
    const/4 v6, -0x1

    goto/16 :goto_1

    .line 2920
    :cond_6
    const/4 v6, 0x1

    goto :goto_3

    .line 2924
    :cond_7
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    add-double/2addr v6, v0

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 2926
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    neg-double v8, v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_a

    .line 2927
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v6, :cond_9

    .line 2929
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2930
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2931
    iget v6, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 2933
    :cond_8
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 2934
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 2936
    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : panning left from page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2938
    :cond_9
    const-string v6, "MotionEngine"

    const-string v7, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    goto/16 :goto_0

    .line 2941
    :cond_a
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 2942
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-gt v6, v7, :cond_c

    .line 2944
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_b

    .line 2945
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2946
    iget v6, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iput v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 2948
    :cond_b
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    iget-wide v8, p0, Lcom/android/launcher2/PagedView;->mPanningBasis:D

    sub-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    .line 2949
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 2951
    const-string v6, "MotionEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMotionListener : panning right from page"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2953
    :cond_c
    const-string v6, "MotionEngine"

    const-string v7, "onMotionListener : accumulated delta is not considered, skip adding"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    sub-double/2addr v6, v0

    iput-wide v6, p0, Lcom/android/launcher2/PagedView;->mAccumulatedDelta:D

    goto/16 :goto_0

    .line 2879
    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    .line 2891
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    .line 502
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    .line 507
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getComingPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1360
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1361
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1363
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 2308
    instance-of v2, p1, Lcom/android/launcher2/PagedView$SavedState;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 2309
    check-cast v1, Lcom/android/launcher2/PagedView$SavedState;

    .line 2310
    .local v1, ss:Lcom/android/launcher2/PagedView$SavedState;
    invoke-virtual {v1}, Lcom/android/launcher2/PagedView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2311
    iget v2, v1, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 2312
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 2313
    .local v0, pageCount:I
    if-lez v0, :cond_0

    .line 2314
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 2316
    :cond_0
    const-string v2, "Launcher.PagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current page on restore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    .end local v0           #pageCount:I
    .end local v1           #ss:Lcom/android/launcher2/PagedView$SavedState;
    :goto_0
    return-void

    .line 2318
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 2300
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2301
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/launcher2/PagedView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2302
    .local v0, ss:Lcom/android/launcher2/PagedView$SavedState;
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iput v2, v0, Lcom/android/launcher2/PagedView$SavedState;->currentPage:I

    .line 2303
    return-object v0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 2813
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 2814
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v12, 0x0

    .line 1784
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    if-nez v9, :cond_0

    .line 1785
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->updateMotionTracking(Landroid/view/MotionEvent;)V

    .line 1787
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v9

    if-gtz v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 1934
    :cond_1
    :goto_0
    return v8

    .line 1789
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v9, p1}, Lcom/android/launcher2/PageIndicatorManager;->handleEvent(Landroid/view/MotionEvent;)Z

    .line 1791
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1793
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1795
    .local v0, action:I
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1801
    :pswitch_1
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1802
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1805
    :cond_3
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1806
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v8, :cond_1

    .line 1807
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_0

    .line 1812
    :pswitch_2
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v9}, Lcom/android/launcher2/PageIndicatorManager;->isFastScrolling()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1813
    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    .line 1814
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v8, :cond_6

    .line 1816
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1817
    .local v7, x:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v9, v10

    sub-float v2, v9, v7

    .line 1819
    .local v2, deltaX:F
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1824
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    .line 1825
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v9, v2

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1826
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1827
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v9, :cond_4

    .line 1828
    float-to-int v9, v2

    invoke-virtual {p0, v9, v12}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1833
    :goto_1
    iput v7, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1834
    float-to-int v9, v2

    int-to-float v9, v9

    sub-float v9, v2, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1841
    .end local v2           #deltaX:F
    .end local v7           #x:F
    :goto_2
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    goto :goto_0

    .line 1831
    .restart local v2       #deltaX:F
    .restart local v7       #x:F
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_1

    .line 1836
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto :goto_2

    .line 1839
    .end local v2           #deltaX:F
    .end local v7           #x:F
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 1845
    :pswitch_3
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v9, v8, :cond_7

    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v13, :cond_d

    .line 1846
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1847
    .restart local v7       #x:F
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1848
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1849
    invoke-virtual {v5, v12}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v9

    float-to-int v6, v9

    .line 1852
    .local v6, velocityX:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v10, v11

    sub-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1853
    const/4 v3, 0x1

    .line 1855
    .local v3, dir:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    const/high16 v10, 0x41c8

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    if-le v9, v10, :cond_b

    .line 1858
    if-lez v6, :cond_9

    .line 1859
    const/4 v3, 0x2

    .line 1860
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    cmpg-float v9, v7, v9

    if-gez v9, :cond_8

    .line 1862
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1882
    .local v4, nextPage:I
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    .line 1883
    .local v1, adjustedPage:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v1, v9, :cond_c

    iget v9, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v1, v9, :cond_c

    .line 1884
    iget v9, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v9, v3}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 1911
    .end local v1           #adjustedPage:I
    .end local v3           #dir:I
    .end local v4           #nextPage:I
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    .end local v7           #x:F
    :goto_4
    iput v12, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1912
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 1913
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_0

    .line 1866
    .restart local v3       #dir:I
    .restart local v5       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v6       #velocityX:I
    .restart local v7       #x:F
    :cond_8
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v9, -0x1

    .restart local v4       #nextPage:I
    goto :goto_3

    .line 1869
    .end local v4           #nextPage:I
    :cond_9
    const/4 v3, 0x3

    .line 1870
    iget v9, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    cmpl-float v9, v7, v9

    if-lez v9, :cond_a

    .line 1872
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .restart local v4       #nextPage:I
    goto :goto_3

    .line 1876
    .end local v4           #nextPage:I
    :cond_a
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v4, v9, 0x1

    .restart local v4       #nextPage:I
    goto :goto_3

    .line 1880
    .end local v4           #nextPage:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v4

    .restart local v4       #nextPage:I
    goto :goto_3

    .line 1886
    .restart local v1       #adjustedPage:I
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_4

    .line 1888
    .end local v1           #adjustedPage:I
    .end local v3           #dir:I
    .end local v4           #nextPage:I
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #velocityX:I
    .end local v7           #x:F
    :cond_d
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v10, :cond_f

    .line 1892
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v4

    .line 1893
    .restart local v4       #nextPage:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v4, v9, :cond_e

    iget v9, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v9, :cond_e

    .line 1894
    iget v9, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v9, v10}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_4

    .line 1896
    :cond_e
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_4

    .line 1898
    .end local v4           #nextPage:I
    :cond_f
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v11, :cond_11

    .line 1902
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v4

    .line 1903
    .restart local v4       #nextPage:I
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v4, v9, :cond_10

    iget v9, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v4, v9, :cond_10

    .line 1904
    iget v9, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v4, v9, v11}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_4

    .line 1906
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_4

    .line 1909
    .end local v4           #nextPage:I
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1917
    :pswitch_4
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v9, v8, :cond_12

    iget v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v9, v13, :cond_13

    .line 1918
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1920
    :cond_13
    iput v12, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1921
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    .line 1922
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_0

    .line 1926
    :pswitch_5
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_0

    .line 1930
    :pswitch_6
    iput-boolean v12, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    goto/16 :goto_0

    .line 1795
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 2005
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 2504
    instance-of v1, p1, Lcom/android/launcher2/Page;

    if-eqz v1, :cond_1

    .line 2505
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 2506
    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 2507
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2509
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 2510
    check-cast v1, Lcom/android/launcher2/Page;

    invoke-interface {v1}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    .line 2513
    .end local v0           #i:I
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2514
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 2979
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2980
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    .line 2981
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1767
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    .line 1768
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 4

    .prologue
    .line 433
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v3, :cond_0

    .line 434
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 436
    sget-object v3, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 438
    .local v1, l:Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 441
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 443
    .local v2, v:Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v0           #i:I
    .end local v1           #l:Lcom/android/launcher2/AnimationLayer;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 451
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 452
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    .line 455
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollByHover:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/PagedView;->mPageScrollEndTime:J

    .line 459
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2009
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2010
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 2011
    .local v0, page:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2012
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mFromFocusHelper:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2013
    iget v1, p0, Lcom/android/launcher2/PagedView;->mDir:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(II)V

    .line 2016
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mFromFocusHelper:Z

    .line 2018
    :cond_0
    return-void

    .line 2015
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 1350
    .local v0, page:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1351
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1352
    const/4 v1, 0x1

    .line 1354
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .parameter "disallowIntercept"

    .prologue
    .line 1431
    if-eqz p1, :cond_1

    .line 1434
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1436
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v0, v1, :cond_0

    .line 1437
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1439
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->motionTrackingIsCurrent:Z

    .line 1441
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1442
    return-void
.end method

.method rotateFolder()V
    .locals 0

    .prologue
    .line 2992
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 1
    .parameter "screenCenter"

    .prologue
    .line 1212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1213
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 533
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 534
    return-void
.end method

.method public scrollLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2236
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2241
    :goto_0
    return-void

    .line 2239
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 2244
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2245
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2249
    :goto_0
    return-void

    .line 2247
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 559
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    .line 560
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 561
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 562
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 566
    :goto_0
    int-to-float v5, p1

    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 567
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-float v5, v5

    const v6, 0x4e6e6b28

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 580
    iget-boolean v5, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    if-eqz v5, :cond_5

    .line 581
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mInvalidatedByTouch:Z

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateVisiblePages()Z

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_5

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, found:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 586
    .local v3, info:Lcom/android/launcher2/PagedView$PageInfo;
    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    if-ne v5, v1, :cond_0

    .line 587
    const/4 v0, 0x1

    .line 592
    .end local v3           #info:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 593
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_4

    .line 583
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 564
    .end local v0           #found:Z
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/view/View;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedView;->scrollToNonLooped(II)V

    goto :goto_0

    .line 595
    .restart local v0       #found:Z
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #v:Landroid/view/View;
    :cond_4
    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {v4}, Landroid/view/View;->fastInvalidate()V

    goto :goto_2

    .line 601
    .end local v0           #found:Z
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/view/View;
    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/PagedView;->mScrollByTouchMove:Z

    .line 602
    return-void
.end method

.method protected setAllowLongPress(Z)V
    .locals 0
    .parameter "allowLongPress"

    .prologue
    .line 2263
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 2264
    return-void
.end method

.method setCurrentPage(I)V
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 422
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 410
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v0

    .line 411
    .local v0, newX:I
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 412
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 413
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 419
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 420
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 344
    return-void
.end method

.method protected setDirtyFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1164
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 1165
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 1167
    return-void
.end method

.method public setHideItems(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 2806
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    .line 2807
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 526
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 527
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 517
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 518
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 519
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_0
    return-void
.end method

.method public setPageBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 2781
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    .line 2782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 2786
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 2787
    return-void
.end method

.method protected setPageIndicatorTop(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    .line 2985
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .locals 3
    .parameter "pageSwitchListener"

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    .line 329
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 332
    :cond_0
    return-void
.end method

.method public setPageZoom(F)V
    .locals 1
    .parameter "zoom"

    .prologue
    .line 2765
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    .line 2766
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mPageTransformsDirty:Z

    .line 2770
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 2771
    return-void
.end method

.method public showPageIndicator(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->showPageIndicator(Z)V

    .line 2671
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 2108
    return-void
.end method

.method protected snapToPage(I)V
    .locals 1
    .parameter "whichPage"

    .prologue
    .line 2169
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 2170
    return-void
.end method

.method protected snapToPage(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 2173
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2174
    return-void
.end method

.method protected snapToPage(III)V
    .locals 7
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 2201
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0}, Lcom/android/launcher2/PageIndicatorManager;->cancelFastScroll()V

    .line 2202
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2204
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 2205
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 2207
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 2210
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 2211
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 2212
    if-nez p3, :cond_1

    .line 2213
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 2216
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2217
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2226
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_3

    .line 2227
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 2231
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 2232
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 2233
    return-void

    .line 2229
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_0
.end method

.method protected snapToPage(IIZ)V
    .locals 1
    .parameter "whichPage"
    .parameter "dir"
    .parameter "fromfocushelper"

    .prologue
    .line 2176
    iput-boolean p3, p0, Lcom/android/launcher2/PagedView;->mFromFocusHelper:Z

    .line 2177
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2178
    return-void
.end method

.method protected snapToPageAfterLayout(I)V
    .locals 0
    .parameter "pageToSnapTo"

    .prologue
    .line 1068
    iput p1, p0, Lcom/android/launcher2/PagedView;->mSnapToPageAfterLayout:I

    .line 1069
    return-void
.end method

.method protected snapToPageWithDir(II)V
    .locals 1
    .parameter "whichPage"
    .parameter "dir"

    .prologue
    .line 2180
    iget v0, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithDir(III)V

    .line 2181
    return-void
.end method

.method protected snapToPageWithDir(III)V
    .locals 3
    .parameter "whichPage"
    .parameter "duration"
    .parameter "dir"

    .prologue
    .line 2184
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAdjustedPageIndex(I)I

    move-result p1

    .line 2188
    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-direct {p0, p1, v2, p3}, Lcom/android/launcher2/PagedView;->getScrollXForPageIndex(III)I

    move-result v1

    .line 2189
    .local v1, dstScrollX:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v1, v2

    .line 2190
    .local v0, delta:I
    iput p3, p0, Lcom/android/launcher2/PagedView;->mDir:I

    .line 2191
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 2192
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/high16 v8, 0x3f80

    .line 2132
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2133
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 2135
    .local v4, halfScreenSize:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getNonLoopedScrollXForPageIndex(I)I

    move-result v5

    .line 2139
    .local v5, newX:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 2140
    .local v0, delta:I
    const/4 v3, 0x0

    .line 2142
    .local v3, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xfa

    if-ge v6, v7, :cond_0

    .line 2145
    iget v6, p0, Lcom/android/launcher2/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 2166
    :goto_0
    return-void

    .line 2153
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2154
    .local v2, distanceRatio:F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 2157
    .local v1, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 2158
    const/16 v6, 0x898

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2163
    const/high16 v6, 0x447a

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 2165
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected syncViewVisibility()V
    .locals 6

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, found:Z
    iget-object v5, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 476
    .local v3, info:Lcom/android/launcher2/PagedView$PageInfo;
    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    if-ne v5, v1, :cond_0

    .line 477
    const/4 v0, 0x1

    .line 482
    .end local v3           #info:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 483
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_2

    .line 473
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 486
    :cond_2
    if-eqz v0, :cond_3

    .line 487
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 489
    :cond_3
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 492
    .end local v0           #found:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/view/View;
    :cond_4
    return-void
.end method

.method protected updateAdjacentPagesAlpha()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    .line 1175
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v6, :cond_5

    .line 1176
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mIsOverScrolled:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isFastScrolling()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v5

    .line 1182
    .local v5, pageWidth:I
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedView$PageInfo;

    .line 1183
    .local v4, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    iget v6, v4, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v7, v5

    int-to-float v7, v7

    div-float v1, v6, v7

    .line 1184
    .local v1, dimAlpha:F
    const/4 v6, 0x0

    mul-float v7, v1, v1

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1185
    sub-float v0, v8, v1

    .line 1186
    .local v0, alpha:F
    const v6, 0x38d1b717

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    .line 1187
    const/4 v0, 0x0

    .line 1194
    :cond_2
    :goto_1
    iget v6, v4, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 1201
    .local v3, layout:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1202
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1188
    .end local v3           #layout:Landroid/view/View;
    :cond_3
    const v6, 0x3f7ff972

    cmpl-float v6, v0, v6

    if-lez v6, :cond_2

    .line 1189
    const/high16 v0, 0x3f80

    goto :goto_1

    .line 1207
    .end local v0           #alpha:F
    .end local v1           #dimAlpha:F
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    .end local v5           #pageWidth:I
    :cond_4
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageAlpha:Z

    .line 1209
    :cond_5
    return-void
.end method

.method protected updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V
    .locals 8
    .parameter "option"

    .prologue
    const/4 v7, 0x0

    .line 2546
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v0

    .line 2547
    .local v0, enableChildrenLayers:Z
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mBlockHardwareLayers:Z

    if-eqz v4, :cond_0

    .line 2548
    sget-object p1, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    .line 2550
    :cond_0
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_3

    .line 2551
    const/4 v0, 0x0

    .line 2556
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 2557
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 2558
    .local v3, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2559
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->enableHardwareLayers()V

    .line 2560
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2552
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_3
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_HARDWARE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_1

    .line 2553
    const/4 v0, 0x1

    goto :goto_0

    .line 2563
    :cond_4
    sget-object v4, Lcom/android/launcher2/PagedView$LayerOptions;->FORCE_NONE:Lcom/android/launcher2/PagedView$LayerOptions;

    if-ne p1, v4, :cond_5

    .line 2564
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 2565
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    .line 2566
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2564
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2570
    .end local v1           #i:I
    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedView$PageInfo;

    .line 2571
    .restart local v3       #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    if-eqz v3, :cond_6

    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    if-eqz v4, :cond_6

    .line 2572
    iget v4, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    invoke-interface {v4}, Lcom/android/launcher2/Page;->disableHardwareLayers()V

    .line 2573
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mHardwarePages:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2578
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_7
    return-void
.end method

.method updateIndicator(II)V
    .locals 1
    .parameter "top"
    .parameter "gap"

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PageIndicatorManager;->setTop(I)V

    .line 2989
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorManager:Lcom/android/launcher2/PageIndicatorManager;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PageIndicatorManager;->setGap(I)V

    .line 2990
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 0
    .parameter "page"
    .parameter "scrollProgress"

    .prologue
    .line 1221
    return-void
.end method

.method protected updateVisiblePages()Z
    .locals 14

    .prologue
    .line 825
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mPagesPool:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 826
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getHorizontalVisibilityExtension()I

    move-result v1

    .line 830
    .local v1, horizontalVisibilityExtension:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    .line 831
    .local v6, pageCount:I
    const/4 v12, 0x1

    if-ge v6, v12, :cond_0

    .line 832
    const/4 v12, 0x0

    .line 878
    :goto_0
    return v12

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    .line 836
    .local v11, pageWidth:I
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->getPageTotWidth()I

    move-result v10

    .line 837
    .local v10, pageTotWidth:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    div-int/lit8 v13, v11, 0x2

    add-int v5, v12, v13

    .line 841
    .local v5, pageCenter:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v13, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int v8, v12, v1

    .line 842
    .local v8, pageLeftEdge:I
    iget v12, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int/2addr v12, v11

    iget v13, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v12, v13

    mul-int/lit8 v13, v1, 0x2

    add-int v9, v12, v13

    .line 849
    .local v9, pageRightEdge:I
    const/high16 v3, -0x8000

    .line 851
    .local v3, lastIndex:I
    move v0, v8

    .local v0, currEdge:I
    :goto_1
    if-ge v0, v9, :cond_4

    .line 852
    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->getPageIndexForScrollX(I)I

    move-result v2

    .line 853
    .local v2, index:I
    const/high16 v12, -0x8000

    if-eq v3, v12, :cond_2

    if-ne v3, v2, :cond_2

    .line 851
    :cond_1
    :goto_2
    add-int/lit8 v12, v11, -0x1

    add-int/2addr v0, v12

    goto :goto_1

    .line 856
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 857
    .local v4, page:Landroid/view/View;
    if-eqz v4, :cond_1

    .line 860
    move v3, v2

    .line 861
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->newPageInfo()Lcom/android/launcher2/PagedView$PageInfo;

    move-result-object v7

    .line 862
    .local v7, pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    iput v2, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    .line 863
    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->getLowerBoundForScrollX(I)I

    move-result v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 864
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isLoopingEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 865
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    mul-int/2addr v12, v10

    neg-int v12, v12

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v12, v13

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    .line 869
    :goto_3
    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->getCenterOfViewRelative(Landroid/view/View;)I

    move-result v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    .line 870
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    iget v13, v7, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    add-int/2addr v12, v13

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    .line 871
    iget v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    sub-int v12, v5, v12

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    .line 872
    iget-object v12, p0, Lcom/android/launcher2/PagedView;->mVisiblePages:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 867
    :cond_3
    const/4 v12, 0x0

    iput v12, v7, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    goto :goto_3

    .line 874
    .end local v2           #index:I
    .end local v4           #page:Landroid/view/View;
    .end local v7           #pageInfo:Lcom/android/launcher2/PagedView$PageInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncViewVisibility()V

    .line 875
    iget-boolean v12, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v12, :cond_5

    .line 876
    sget-object v12, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v12}, Lcom/android/launcher2/PagedView;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 878
    :cond_5
    const/4 v12, 0x1

    goto :goto_0
.end method
