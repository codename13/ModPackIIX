.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/DragOrigin;
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher2/CellLayout$SpanRect;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayout"


# instance fields
.field private mAcceptsDrops:Z

.field mAnimateChildInstantly:Z

.field private mBackgroundAlpha:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCPType:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field private final mDragCell:[I

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragState:Lcom/android/launcher2/DragState;

.field mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mEmptyMessage:Landroid/view/View;

.field private mFingerMovedOnDrag:Z

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mGapX:I

.field private mGapY:I

.field private mGlowBackgroundAlpha:F

.field private mGlowBackgroundRect:Landroid/graphics/Rect;

.field private mGlowBackgroundScale:F

.field protected mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field mIgnoreOccupied:Z

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDefaultDropTarget:Z

.field private mIsDragOccuring:Z

.field private mIsDragOverlapping:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLastVisualize:[I

.field private mLastXY:[F

.field mOccupied:[[Z

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private final mRect:Landroid/graphics/Rect;

.field private mStateAnimationFinished:Z

.field mTempLocation:[I

.field private final mTmpPoint:[I

.field private final mTmpXY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 155
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    .line 77
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 78
    new-instance v12, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v12}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 84
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 85
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 86
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 89
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 90
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    .line 94
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 95
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 107
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 109
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 110
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 111
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 115
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    new-array v12, v12, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 121
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 122
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 126
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 128
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 131
    const/4 v12, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 133
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 139
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCPType:I

    .line 1144
    const/4 v12, 0x4

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    .line 2151
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2152
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2153
    const/4 v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    .line 159
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    .line 161
    sget-object v12, Lcom/sec/android/app/launcher/R$styleable;->CellLayout:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 163
    .local v3, a:Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 164
    const/4 v12, 0x1

    const/16 v13, 0xa

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 165
    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    .line 166
    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    .line 167
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 168
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 169
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 171
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 173
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 177
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f0200af

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    .line 178
    const v12, 0x7f0200b0

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    .line 179
    const v12, 0x7f0c0023

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 184
    const v12, 0x7f02002f

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x4020

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 188
    const v12, 0x7f0a001b

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 189
    .local v5, animDuration:I
    new-instance v12, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v13, v5

    const/4 v15, 0x0

    const/high16 v16, 0x3f80

    invoke-direct/range {v12 .. v16}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v12}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v15, 0x1

    const/16 v16, -0x1

    aput v16, v14, v15

    aput v16, v12, v13

    .line 200
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v12, v12

    if-ge v8, v12, :cond_0

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v13, v12, v8

    .line 200
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 208
    :cond_0
    const v12, 0x7f0a001d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 209
    .local v6, duration:I
    const/4 v7, 0x0

    .line 210
    .local v7, fromAlphaValue:F
    const v12, 0x7f0a001e

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-float v11, v12

    .line 212
    .local v11, toAlphaValue:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v13, 0x0

    invoke-static {v12, v13}, Ljava/util/Arrays;->fill([FF)V

    .line 214
    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v12, v12

    if-ge v8, v12, :cond_1

    .line 215
    new-instance v4, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v12, v6

    const/4 v14, 0x0

    invoke-direct {v4, v12, v13, v14, v11}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 217
    .local v4, anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    move v10, v8

    .line 219
    .local v10, thisIndex:I
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v10}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 237
    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v13, Lcom/android/launcher2/CellLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v4, v12, v8

    .line 214
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 248
    .end local v4           #anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    .end local v10           #thisIndex:I
    :cond_1
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 249
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 250
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    .line 251
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setHoverScale(F)V

    .line 252
    const/high16 v12, 0x3f80

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->setHoverAlpha(F)V

    .line 254
    new-instance v12, Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 255
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 256
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 257
    return-void

    .line 1144
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object v0
.end method

.method private cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V
    .locals 7
    .parameter "dragState"

    .prologue
    .line 2209
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    .line 2210
    .local v4, view:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 2212
    .local v1, item:Lcom/android/launcher2/BaseItem;
    instance-of v5, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-ne v5, v6, :cond_0

    .line 2213
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v2

    .line 2214
    .local v2, spanX:I
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    .local v3, spanY:I
    move-object v0, v4

    .line 2215
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2216
    .local v0, hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2217
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v5

    invoke-virtual {v0, p0, v2, v3, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;

    .line 2220
    .end local v0           #hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v2           #spanX:I
    .end local v3           #spanY:I
    :cond_0
    return-void
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 1707
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1708
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1709
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1708
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1707
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1712
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method private clearTagCellInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 735
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 736
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 737
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 738
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 739
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 740
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 741
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_0

    .line 742
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    .line 743
    iput v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    .line 745
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 746
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1685
    const/4 v4, 0x0

    .local v4, y:I
    :goto_0
    if-ge v4, p4, :cond_7

    .line 1686
    const/4 v3, 0x0

    .local v3, x:I
    :goto_1
    if-ge v3, p3, :cond_6

    .line 1687
    aget-object v7, p5, v3

    aget-boolean v7, v7, v4

    if-nez v7, :cond_1

    move v0, v5

    .line 1688
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v7, v3, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_0

    if-ge v3, p3, :cond_0

    .line 1689
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v7, v4, p2

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_4

    if-ge v4, p4, :cond_4

    .line 1690
    if-eqz v0, :cond_2

    aget-object v7, p5, v1

    aget-boolean v7, v7, v2

    if-nez v7, :cond_2

    move v0, v5

    .line 1691
    :goto_5
    if-nez v0, :cond_3

    .line 1695
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 1696
    aput v3, p0, v6

    .line 1697
    aput v4, p0, v5

    .line 1703
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v3           #x:I
    :goto_6
    return v5

    .restart local v3       #x:I
    :cond_1
    move v0, v6

    .line 1687
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v6

    .line 1690
    goto :goto_5

    .line 1689
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1688
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1686
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1685
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3           #x:I
    :cond_7
    move v5, v6

    .line 1703
    goto :goto_6
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 320
    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 321
    .local v0, cellHeight:I
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c0016

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 324
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private ignoreOccupied()Z
    .locals 2

    .prologue
    .line 2535
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v0

    .line 2536
    .local v0, parent:Lcom/android/launcher2/CellLayoutContainer;
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mIgnoreOccupied:Z

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private invalidateVisualize()V
    .locals 3

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1305
    return-void
.end method

.method private markCellsForView(IIIIZ)V
    .locals 3
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "value"

    .prologue
    .line 1843
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1844
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1845
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 1844
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1843
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1849
    .end local v1           #y:I
    :cond_1
    sget-boolean v2, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1850
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForContextualPage()V

    .line 1851
    :cond_2
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 1022
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 1023
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1024
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1026
    :cond_0
    return-void
.end method

.method private setFastChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 1029
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 1030
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1031
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFastAlpha(F)V

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1033
    :cond_0
    return-void
.end method

.method private updateGlowRect()V
    .locals 8

    .prologue
    .line 401
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 402
    .local v0, marginFraction:F
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 403
    .local v1, marginX:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 404
    .local v2, marginY:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 406
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 407
    return-void
.end method

.method private validateDrag(Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2095
    const/4 v0, 0x1

    return v0
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 309
    const v2, 0x7f0c0013

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 310
    .local v0, cellWidth:I
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c0016

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 313
    .local v1, minGap:I
    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public addChildrenLayout(Lcom/android/launcher2/CellLayoutChildren;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-nez v0, :cond_0

    .line 370
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 371
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->recalculateOccupiedCells()V

    .line 373
    :cond_0
    return-void
.end method

.method public addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 2109
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v0

    .line 2110
    .local v0, parent:Lcom/android/launcher2/CellLayoutContainer;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 2111
    invoke-interface/range {v0 .. v7}, Lcom/android/launcher2/CellLayoutContainer;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 2113
    :cond_0
    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"

    .prologue
    .line 542
    move-object v0, p4

    .line 546
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    .line 549
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 550
    :cond_0
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 552
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 554
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 556
    if-eqz p5, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 558
    :cond_2
    const/4 v1, 0x1

    .line 560
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIII)Z
    .locals 9
    .parameter "child"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v6, 0x1

    .line 1041
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 1042
    .local v0, clc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    if-ltz p2, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    array-length v7, v7

    if-ge p2, v7, :cond_4

    if-ltz p3, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v7, v7, p2

    array-length v7, v7

    if-ge p3, v7, :cond_4

    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1047
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v7, v7, p2

    aput-boolean v6, v7, p3

    .line 1049
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 1050
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1051
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 1052
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Tried to animate a item to an occupied cell. Failed to swap item positions because the inbound item belonged to a different cell layout."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1055
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1056
    .local v4, slp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1057
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1058
    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1059
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    .line 1062
    .end local v4           #slp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1063
    iput p2, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1064
    iput p3, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1067
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1068
    .local v1, info:Lcom/android/launcher2/BaseItem;
    instance-of v7, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v7, :cond_2

    move-object v2, v1

    .line 1069
    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 1070
    .local v2, item:Lcom/android/launcher2/HomeItem;
    iput p2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 1071
    iput p3, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 1074
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    :cond_2
    iget-boolean v7, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    if-nez v7, :cond_3

    .line 1075
    invoke-virtual {p0, p1, p4, v6, v6}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZ)Z

    move-result v6

    .line 1079
    .end local v1           #info:Lcom/android/launcher2/BaseItem;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_3
    :goto_0
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public animateIcon(Landroid/view/View;IZZ)Z
    .locals 10
    .parameter "child"
    .parameter "duration"
    .parameter "copyBitmap"
    .parameter "clip"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 1083
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 1084
    .local v0, l:Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {v0, p1, v4}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1085
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1086
    .local v2, b:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 1087
    invoke-virtual {p1, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1088
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 1089
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1090
    if-nez v2, :cond_1

    .line 1111
    .end local v2           #b:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return v5

    .line 1095
    .restart local v2       #b:Landroid/graphics/Bitmap;
    :cond_1
    if-eqz p3, :cond_2

    .line 1096
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1097
    invoke-virtual {p1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1100
    :cond_2
    invoke-virtual {v0, p1, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 1102
    .local v3, from:[I
    invoke-virtual {v0, p1, v4}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[I)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, p1

    move v6, p2

    move v7, v5

    .line 1103
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer;->animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v8

    .line 1104
    .local v8, a:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1105
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v4, v0, Lcom/android/launcher2/AnimationLayer;->mRootLocationOnScreen:[I

    aget v4, v4, v9

    neg-int v4, v4

    invoke-virtual {v1, v5, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1106
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->enableClipping()V

    .end local v8           #a:Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_3
    move v5, v9

    .line 1109
    goto :goto_0
.end method

.method public applyAppIconViewStyles(I)V
    .locals 7
    .parameter "style"

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 2542
    .local v4, context:Landroid/content/Context;
    sget-object v6, Landroid/R$styleable;->TextView:[I

    invoke-virtual {v4, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2543
    .local v1, appearance:Landroid/content/res/TypedArray;
    sget-object v6, Landroid/R$styleable;->View:[I

    invoke-virtual {v4, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2545
    .local v2, appearance2:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, j:I
    :goto_0
    if-ltz v5, :cond_1

    .line 2546
    invoke-virtual {p0, v5}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 2547
    .local v3, childView:Landroid/view/View;
    instance-of v6, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_0

    move-object v0, v3

    .line 2548
    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 2549
    .local v0, aiv:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppIconView;->applyStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 2545
    .end local v0           #aiv:Lcom/android/launcher2/AppIconView;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 2553
    .end local v3           #childView:Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2554
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2556
    return-void
.end method

.method buildChildrenLayer()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->buildLayer()V

    .line 650
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 518
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 521
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 522
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 523
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 524
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public cellSpansToSize(II)[I
    .locals 5
    .parameter "hSpans"
    .parameter "vSpans"

    .prologue
    .line 1662
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1663
    .local v0, size:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1664
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1665
    return-object v0
.end method

.method cellToPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 795
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 797
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 798
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 799
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1912
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1296
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 1297
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1298
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1299
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1300
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 1301
    return-void
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 1
    .parameter "item"

    .prologue
    .line 2510
    instance-of v0, p1, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v0, :cond_0

    .line 2511
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/HomeItem;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->createFolder(Lcom/android/launcher2/HomeItem;)Landroid/view/View;

    move-result-object v0

    .line 2515
    :goto_0
    return-object v0

    .line 2512
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v0, :cond_1

    .line 2513
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2515
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableHardwareLayers()V
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->disableHardwareLayers()V

    .line 970
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 2490
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 2491
    .local v0, r:Z
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2496
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Landroid/view/View$OnDragListener;->onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2499
    .end local v0           #r:Z
    :cond_1
    :goto_0
    return v0

    .line 2497
    .restart local v0       #r:Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 494
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 496
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 497
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutChildren;->drawShadows(Landroid/graphics/Canvas;)V

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 501
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 502
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 504
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 505
    .local v0, p:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 506
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 507
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 509
    .end local v0           #p:Landroid/graphics/Paint;
    :cond_0
    return-void
.end method

.method public drawChildren(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->draw(Landroid/graphics/Canvas;)V

    .line 646
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->enableHardwareLayers()V

    .line 966
    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 7
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1124
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1125
    .local v1, countX:I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1129
    .local v2, countY:I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    .line 1132
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 1133
    .local v3, rightOverhang:I
    if-lez v3, :cond_0

    .line 1134
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 1136
    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 1137
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 1138
    .local v0, bottomOverhang:I
    if-lez v0, :cond_1

    .line 1139
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 1141
    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 1142
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1433
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method public findBestFitForWidget(Lcom/android/launcher2/LauncherAppWidgetHostView;)[I
    .locals 1
    .parameter "view"

    .prologue
    const/4 v0, -0x1

    .line 1765
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/launcher2/CellLayout;->findBestFitForWidget(Lcom/android/launcher2/LauncherAppWidgetHostView;II)[I

    move-result-object v0

    return-object v0
.end method

.method public findBestFitForWidget(Lcom/android/launcher2/LauncherAppWidgetHostView;II)[I
    .locals 12
    .parameter "view"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 1768
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 1769
    .local v1, inf:Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1771
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p2, :cond_0

    iget p2, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1772
    :cond_0
    if-gez p3, :cond_1

    iget p3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1775
    :cond_1
    new-instance v7, Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    .line 1776
    .local v7, s:Lcom/android/launcher2/WidgetSizes;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/res/Resources;)V

    .line 1778
    iget-object v8, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v8}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v8

    iget-object v8, v8, Lcom/android/launcher2/Workspace;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    .line 1780
    iget-object v8, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v9, 0x0

    aget v3, v8, v9

    .line 1781
    .local v3, minX:I
    iget-object v8, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v9, 0x1

    aget v4, v8, v9

    .line 1784
    .local v4, minY:I
    iget v8, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {p0, p2, p3, v8, v9}, Lcom/android/launcher2/CellLayout;->findSpansForCell(IIII)Ljava/util/List;

    move-result-object v6

    .line 1786
    .local v6, rs:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/CellLayout$SpanRect;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$SpanRect;

    .line 1787
    .local v5, r:Lcom/android/launcher2/CellLayout$SpanRect;
    iget v8, v5, Lcom/android/launcher2/CellLayout$SpanRect;->width:I

    iget v9, v5, Lcom/android/launcher2/CellLayout$SpanRect;->height:I

    invoke-virtual {v7, v8, v9, v3, v4}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(IIII)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1788
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget v10, v5, Lcom/android/launcher2/CellLayout$SpanRect;->width:I

    iget v11, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, v5, Lcom/android/launcher2/CellLayout$SpanRect;->height:I

    iget v11, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v8, v9

    .line 1805
    .end local v5           #r:Lcom/android/launcher2/CellLayout$SpanRect;
    :goto_0
    return-object v8

    .line 1797
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->findSpansForCell(II)Ljava/util/List;

    move-result-object v6

    .line 1798
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$SpanRect;

    .line 1799
    .restart local v5       #r:Lcom/android/launcher2/CellLayout$SpanRect;
    iget v8, v5, Lcom/android/launcher2/CellLayout$SpanRect;->width:I

    iget v9, v5, Lcom/android/launcher2/CellLayout$SpanRect;->height:I

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1800
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget v10, v5, Lcom/android/launcher2/CellLayout$SpanRect;->height:I

    iget v11, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, v5, Lcom/android/launcher2/CellLayout$SpanRect;->width:I

    iget v11, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v8, v9

    goto :goto_0

    .line 1805
    .end local v5           #r:Lcom/android/launcher2/CellLayout$SpanRect;
    :cond_5
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    iget v10, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    aput v10, v8, v9

    const/4 v9, 0x1

    iget v10, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    aput v10, v8, v9

    goto :goto_0
.end method

.method findCellForSpan([III)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, -0x1

    .line 1450
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"

    .prologue
    const/4 v4, -0x1

    .line 1464
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1481
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z
    .locals 12
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"
    .parameter "ignoreView"

    .prologue
    .line 1491
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1493
    const/4 v3, 0x0

    .line 1495
    .local v3, foundCell:Z
    :goto_0
    const/4 v6, 0x0

    .line 1496
    .local v6, startX:I
    if-ltz p4, :cond_0

    .line 1497
    add-int/lit8 v10, p2, -0x1

    sub-int v10, p4, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1499
    :cond_0
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v11, p2, -0x1

    sub-int v1, v10, v11

    .line 1500
    .local v1, endX:I
    if-ltz p4, :cond_1

    .line 1501
    add-int/lit8 v10, p2, -0x1

    add-int v11, p4, v10

    const/4 v10, 0x1

    if-ne p2, v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1503
    :cond_1
    const/4 v7, 0x0

    .line 1504
    .local v7, startY:I
    if-ltz p5, :cond_2

    .line 1505
    add-int/lit8 v10, p3, -0x1

    sub-int v10, p5, v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1507
    :cond_2
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v11, p3, -0x1

    sub-int v2, v10, v11

    .line 1508
    .local v2, endY:I
    if-ltz p5, :cond_3

    .line 1509
    add-int/lit8 v10, p3, -0x1

    add-int v11, p5, v10

    const/4 v10, 0x1

    if-ne p3, v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1512
    :cond_3
    move v9, v7

    .local v9, y:I
    :goto_3
    if-ge v9, v2, :cond_b

    if-nez v3, :cond_b

    .line 1514
    move v8, v6

    .local v8, x:I
    :goto_4
    if-ge v8, v1, :cond_a

    .line 1515
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, p2, :cond_8

    .line 1516
    const/4 v5, 0x0

    .local v5, j:I
    :goto_6
    if-ge v5, p3, :cond_7

    .line 1517
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    add-int v11, v8, v4

    aget-object v10, v10, v11

    add-int v11, v9, v5

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_6

    .line 1520
    add-int/2addr v8, v4

    .line 1514
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1501
    .end local v2           #endY:I
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v7           #startY:I
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 1509
    .restart local v2       #endY:I
    .restart local v7       #startY:I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 1516
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v8       #x:I
    .restart local v9       #y:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1515
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1525
    .end local v5           #j:I
    :cond_8
    if-eqz p1, :cond_9

    .line 1526
    const/4 v10, 0x0

    aput v8, p1, v10

    .line 1527
    const/4 v10, 0x1

    aput v9, p1, v10

    .line 1529
    :cond_9
    const/4 v3, 0x1

    .line 1512
    .end local v4           #i:I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1533
    .end local v8           #x:I
    :cond_b
    const/4 v10, -0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_c

    const/4 v10, -0x1

    move/from16 v0, p5

    if-ne v0, v10, :cond_c

    .line 1545
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1546
    return v3

    .line 1538
    :cond_c
    const/16 p4, -0x1

    .line 1539
    const/16 p5, -0x1

    .line 1540
    goto/16 :goto_0
.end method

.method findDragCell(Lcom/android/launcher2/DragState;II[I)V
    .locals 18
    .parameter "dragState"
    .parameter "x"
    .parameter "y"
    .parameter "res"

    .prologue
    .line 2156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v2, 0x0

    move/from16 v0, p2

    int-to-float v3, v0

    aput v3, v1, v2

    .line 2157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v2, 0x1

    move/from16 v0, p3

    int-to-float v3, v0

    aput v3, v1, v2

    .line 2158
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v16

    .line 2159
    .local v16, dragItem:Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v12

    .line 2160
    .local v12, view:Landroid/view/View;
    const/4 v10, 0x1

    .line 2161
    .local v10, spanX:I
    const/4 v11, 0x1

    .line 2162
    .local v11, spanY:I
    instance-of v1, v12, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v1, :cond_1

    move-object v6, v12

    .line 2163
    check-cast v6, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2164
    .local v6, hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/Workspace;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    check-cast v12, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .end local v12           #view:Landroid/view/View;
    invoke-virtual {v12}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    .line 2166
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2167
    .local v4, minX:I
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2169
    .local v5, minY:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int p2, p2, v1

    .line 2170
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int p3, p3, v1

    .line 2172
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v17, v0

    .local v17, result:[I
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v7, p4

    .line 2173
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    .line 2174
    const/4 v1, 0x0

    aget v14, p4, v1

    .line 2175
    .local v14, cellX:I
    const/4 v1, 0x1

    aget v15, p4, v1

    .line 2177
    .local v15, cellY:I
    const/4 v1, -0x1

    if-ne v14, v1, :cond_0

    .line 2179
    move v10, v4

    .line 2180
    move v11, v5

    .line 2199
    .end local v4           #minX:I
    .end local v5           #minY:I
    .end local v6           #hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v14           #cellX:I
    .end local v15           #cellY:I
    .end local v17           #result:[I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v2, 0x0

    aput v10, v1, v2

    .line 2200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v2, 0x1

    aput v11, v1, v2

    .line 2201
    return-void

    .line 2182
    .restart local v4       #minX:I
    .restart local v5       #minY:I
    .restart local v6       #hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .restart local v14       #cellX:I
    .restart local v15       #cellY:I
    .restart local v17       #result:[I
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 2183
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14, v15}, Lcom/android/launcher2/CellLayout;->findBestFitForWidget(Lcom/android/launcher2/LauncherAppWidgetHostView;II)[I

    move-result-object v17

    .line 2184
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2185
    const/4 v1, 0x0

    aget v10, v17, v1

    .line 2186
    const/4 v1, 0x1

    aget v11, v17, v1

    goto :goto_0

    .line 2189
    .end local v4           #minX:I
    .end local v5           #minY:I
    .end local v6           #hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v14           #cellX:I
    .end local v15           #cellY:I
    .end local v17           #result:[I
    .restart local v12       #view:Landroid/view/View;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v10

    .line 2190
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v11

    .line 2191
    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v2, v10

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 2192
    .local v8, _x:I
    move/from16 v0, p3

    int-to-float v1, v0

    int-to-float v2, v11

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v9, v1

    .line 2193
    .local v9, _y:I
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->ignoreOccupied()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v7, p0

    move-object/from16 v12, p4

    .line 2194
    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    goto :goto_0

    :cond_2
    move-object/from16 v7, p0

    move-object/from16 v13, p4

    .line 2196
    invoke-virtual/range {v7 .. v13}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    goto :goto_0
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 22
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "ignoreOccupied"
    .parameter "result"

    .prologue
    .line 1342
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    sub-int p1, p1, v16

    .line 1345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    sub-int p2, p2, v16

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v16

    sub-int p1, p1, v16

    .line 1348
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v16

    sub-int p2, p2, v16

    .line 1351
    if-eqz p7, :cond_1

    move-object/from16 v4, p7

    .line 1352
    .local v4, bestXY:[I
    :goto_0
    const-wide v2, 0x7fefffffffffffffL

    .line 1354
    .local v2, bestDistance2:D
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1355
    .local v5, countX:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1356
    .local v6, countY:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 1358
    .local v11, occupied:[[Z
    const/4 v15, 0x0

    .local v15, y:I
    :goto_1
    add-int/lit8 v16, p4, -0x1

    sub-int v16, v6, v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 1360
    const/4 v14, 0x0

    .local v14, x:I
    :goto_2
    add-int/lit8 v16, p3, -0x1

    sub-int v16, v5, v16

    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    .line 1361
    if-eqz p6, :cond_4

    .line 1362
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move/from16 v0, p3

    if-ge v9, v0, :cond_4

    .line 1363
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    move/from16 v0, p4

    if-ge v10, v0, :cond_3

    .line 1364
    add-int v16, v14, v9

    aget-object v16, v11, v16

    add-int v17, v15, v10

    aget-boolean v16, v16, v17

    if-eqz v16, :cond_2

    .line 1367
    add-int/2addr v14, v9

    .line 1360
    .end local v9           #i:I
    .end local v10           #j:I
    :cond_0
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1351
    .end local v2           #bestDistance2:D
    .end local v4           #bestXY:[I
    .end local v5           #countX:I
    .end local v6           #countY:I
    .end local v11           #occupied:[[Z
    .end local v14           #x:I
    .end local v15           #y:I
    :cond_1
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v4, v0, [I

    goto :goto_0

    .line 1363
    .restart local v2       #bestDistance2:D
    .restart local v4       #bestXY:[I
    .restart local v5       #countX:I
    .restart local v6       #countY:I
    .restart local v9       #i:I
    .restart local v10       #j:I
    .restart local v11       #occupied:[[Z
    .restart local v14       #x:I
    .restart local v15       #y:I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1362
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1374
    .end local v9           #i:I
    .end local v10           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v17, v0

    add-int v16, v16, v17

    mul-int v16, v16, v14

    move/from16 v0, v16

    int-to-float v12, v0

    .line 1375
    .local v12, px:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v17, v0

    add-int v16, v16, v17

    mul-int v16, v16, v15

    move/from16 v0, v16

    int-to-float v13, v0

    .line 1377
    .local v13, py:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v12, v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v13, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    add-double v7, v16, v18

    .line 1378
    .local v7, distance2:D
    cmpg-double v16, v7, v2

    if-gtz v16, :cond_0

    .line 1379
    move-wide v2, v7

    .line 1380
    const/16 v16, 0x0

    aput v14, v4, v16

    .line 1381
    const/16 v16, 0x1

    aput v15, v4, v16

    goto :goto_5

    .line 1358
    .end local v7           #distance2:D
    .end local v12           #px:F
    .end local v13           #py:F
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1386
    .end local v14           #x:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1389
    const-wide v16, 0x7fefffffffffffffL

    cmpl-double v16, v2, v16

    if-nez v16, :cond_7

    .line 1390
    const/16 v16, 0x0

    const/16 v17, -0x1

    aput v17, v4, v16

    .line 1391
    const/16 v16, 0x1

    const/16 v17, -0x1

    aput v17, v4, v16

    .line 1393
    :cond_7
    return-object v4
.end method

.method findNearestArea(IIII[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1429
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "result"

    .prologue
    .line 1411
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1322
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method findSpansForCell(II)Ljava/util/List;
    .locals 2
    .parameter "cellX"
    .parameter "cellY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout$SpanRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1625
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher2/CellLayout;->findSpansForCell(IIII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method findSpansForCell(IIII)Ljava/util/List;
    .locals 9
    .parameter "cellX"
    .parameter "cellY"
    .parameter "maxWidth"
    .parameter "maxHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/CellLayout$SpanRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1632
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1633
    .local v0, countX:I
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1634
    .local v1, countY:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 1636
    .local v3, occupied:[[Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/CellLayout$SpanRect;>;"
    move v7, p2

    .local v7, y:I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 1639
    sub-int v8, v7, p2

    add-int/lit8 v2, v8, 0x1

    .line 1640
    .local v2, h:I
    if-le v2, p4, :cond_1

    .line 1652
    .end local v2           #h:I
    :cond_0
    new-instance v8, Lcom/android/launcher2/CellLayout$4;

    invoke-direct {v8, p0}, Lcom/android/launcher2/CellLayout$4;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1658
    return-object v4

    .line 1641
    .restart local v2       #h:I
    :cond_1
    move v6, p1

    .local v6, x:I
    :goto_1
    if-ge v6, v0, :cond_2

    .line 1642
    sub-int v8, v6, p1

    add-int/lit8 v5, v8, 0x1

    .line 1643
    .local v5, w:I
    if-le v5, p3, :cond_3

    .line 1638
    .end local v5           #w:I
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1644
    .restart local v5       #w:I
    :cond_3
    aget-object v8, v3, v6

    aget-boolean v8, v8, v7

    if-nez v8, :cond_4

    .line 1645
    new-instance v8, Lcom/android/launcher2/CellLayout$SpanRect;

    invoke-direct {v8, p0, v5, v2}, Lcom/android/launcher2/CellLayout$SpanRect;-><init>(Lcom/android/launcher2/CellLayout;II)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1641
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1647
    :cond_4
    add-int/lit8 p3, v5, -0x1

    .line 1648
    goto :goto_2
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1907
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1917
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 960
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method getContainer()Lcom/android/launcher2/CellLayoutContainer;
    .locals 2

    .prologue
    .line 2519
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2520
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2521
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    goto :goto_0

    .line 2523
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutContainer;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/CellLayoutContainer;

    .line 2524
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x65

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x64

    goto :goto_0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .parameter "r"

    .prologue
    .line 818
    if-nez p1, :cond_0

    .line 819
    new-instance p1, Landroid/graphics/Rect;

    .end local p1
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 821
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 822
    .local v1, left:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    .line 823
    .local v3, top:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 824
    .local v2, right:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 825
    .local v0, bottom:I
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 826
    return-object p1
.end method

.method public getContextualPageType()I
    .locals 1

    .prologue
    .line 2560
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCPType:I

    return v0
.end method

.method getCountX()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return v0
.end method

.method getCountY()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 1882
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredHeightForRows(I)I

    move-result v0

    return v0
.end method

.method public getDesiredHeightForRows(I)I
    .locals 3
    .parameter "aRows"

    .prologue
    .line 1875
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 1876
    .local v0, height:I
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    if-lez v1, :cond_0

    .line 1877
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1878
    :cond_0
    return v0
.end method

.method public getDesiredWidth()I
    .locals 1

    .prologue
    .line 1864
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getDesiredWidthForColumns(I)I

    move-result v0

    return v0
.end method

.method public getDesiredWidthForColumns(I)I
    .locals 3
    .parameter "aCols"

    .prologue
    .line 1868
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 1869
    .local v0, width:I
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    if-lez v1, :cond_0

    .line 1870
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/lit8 v2, p1, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1871
    :cond_0
    return v0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 10
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1720
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1723
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    aput v6, p2, v6

    .line 1724
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v2, v4, -0x1

    .local v2, x:I
    :goto_0
    if-ltz v2, :cond_2

    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, flag:Z
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .local v3, y:I
    :goto_1
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 1727
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 1726
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1729
    :cond_1
    if-eqz v0, :cond_4

    .line 1733
    .end local v0           #flag:Z
    .end local v3           #y:I
    :cond_2
    aput v6, p2, v7

    .line 1734
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v3, v4, -0x1

    .restart local v3       #y:I
    :goto_2
    if-ltz v3, :cond_6

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 1737
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 1736
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1730
    :cond_4
    aget v4, p2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v6

    .line 1724
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1739
    :cond_5
    if-eqz v0, :cond_8

    .line 1743
    .end local v0           #flag:Z
    :cond_6
    aput v6, p2, v8

    .line 1744
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int v2, v4, v5

    :goto_4
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v2, v4, :cond_a

    .line 1745
    const/4 v0, 0x0

    .line 1746
    .restart local v0       #flag:Z
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    :goto_5
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_9

    .line 1747
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 1746
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1740
    :cond_8
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 1734
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1749
    :cond_9
    if-eqz v0, :cond_c

    .line 1753
    .end local v0           #flag:Z
    :cond_a
    aput v6, p2, v9

    .line 1754
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v4, v5

    :goto_6
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v3, v4, :cond_e

    .line 1755
    const/4 v0, 0x0

    .line 1756
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_7
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_d

    .line 1757
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    .line 1756
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1750
    :cond_c
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 1744
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1759
    :cond_d
    if-eqz v0, :cond_f

    .line 1762
    .end local v0           #flag:Z
    :cond_e
    return-void

    .line 1760
    .restart local v0       #flag:Z
    :cond_f
    aget v4, p2, v9

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v9

    .line 1754
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    return v0
.end method

.method public getHoverAlpha()F
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    return v0
.end method

.method public getHoverScale()F
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method getScreen()I
    .locals 1

    .prologue
    .line 2528
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 2529
    const/4 v0, -0x1

    .line 2531
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 750
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVacantCell([III)Z
    .locals 6
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1679
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v0

    return v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    return v0
.end method

.method public hide(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2133
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2134
    return-void
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isOccupied(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1886
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 1889
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOccupiedNoThrow(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1898
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 1899
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    .line 1901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 1

    .prologue
    .line 2088
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return v0
.end method

.method public markCellsAsOccupiedForContextualPage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2574
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2575
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aput-boolean v3, v1, v2

    .line 2576
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    aput-boolean v3, v1, v2

    .line 2574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2578
    :cond_0
    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1831
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1834
    :cond_0
    :goto_0
    return-void

    .line 1832
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1833
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1837
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1840
    :cond_0
    :goto_0
    return-void

    .line 1838
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1839
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsForItem(Lcom/android/launcher2/BaseItem;Z)V
    .locals 7
    .parameter "item"
    .parameter "mark"

    .prologue
    .line 1854
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    move-object v6, p1

    .line 1856
    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 1857
    .local v6, h:Lcom/android/launcher2/HomeItem;
    iget v0, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1858
    iget v1, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v3, v6, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v4, v6, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    .line 1861
    .end local v6           #h:Lcom/android/launcher2/HomeItem;
    :cond_0
    return-void
.end method

.method public moveViewInCellLayout(Landroid/view/View;IIZ)Z
    .locals 2
    .parameter "child"
    .parameter "x"
    .parameter "y"
    .parameter "markCells"

    .prologue
    .line 564
    if-ltz p2, :cond_2

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v1, v1, -0x1

    if-gt p3, v1, :cond_2

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 567
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-eqz p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 568
    :cond_0
    iput p2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 569
    iput p3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 570
    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 571
    :cond_1
    const/4 v1, 0x1

    .line 573
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 654
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 655
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 656
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 1555
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1559
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    .line 1560
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1566
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1567
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 34
    .parameter "event"

    .prologue
    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v24

    .line 2229
    .local v24, parent:Lcom/android/launcher2/CellLayoutContainer;
    if-nez v24, :cond_0

    const/4 v3, 0x0

    .line 2485
    .end local v24           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :goto_0
    return v3

    .line 2231
    .restart local v24       #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_0
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v3, :cond_1

    .line 2232
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 2235
    :cond_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_2

    .line 2236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2237
    const/4 v3, 0x0

    goto :goto_0

    .line 2247
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/DragState;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_0

    .line 2248
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/DragState;

    .line 2250
    .local v14, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v9

    .line 2253
    .local v9, action:I
    const/4 v3, 0x4

    if-eq v9, v3, :cond_4

    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    .line 2255
    :cond_4
    const/4 v3, 0x1

    if-ne v9, v3, :cond_5

    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_5

    move-object/from16 v3, v24

    .line 2256
    check-cast v3, Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->pageEndMoving()V

    .line 2259
    :cond_5
    const/4 v3, 0x4

    if-eq v9, v3, :cond_6

    const/4 v3, 0x3

    if-eq v9, v3, :cond_6

    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_6

    move-object/from16 v3, v24

    check-cast v3, Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2262
    const/4 v3, 0x1

    goto :goto_0

    .line 2265
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v29, v0

    .line 2266
    .local v29, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v31, v0

    .line 2268
    .local v31, y:I
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    .line 2269
    .local v4, view:Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2277
    const/4 v3, 0x5

    if-ne v9, v3, :cond_7

    .line 2278
    iget-object v3, v14, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-eq v3, v0, :cond_7

    iget-object v3, v14, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_7

    .line 2279
    iget-object v0, v14, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher2/CellLayout;

    .line 2280
    .local v21, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2281
    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2289
    .end local v21           #l:Lcom/android/launcher2/CellLayout;
    :cond_7
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_8

    move-object/from16 v3, v24

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2290
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2293
    :cond_8
    instance-of v3, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_9

    .line 2294
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v30

    .line 2296
    .local v30, xy:[I
    const/4 v3, 0x0

    aget v3, v30, v3

    sub-int v29, v29, v3

    .line 2297
    const/4 v3, 0x1

    aget v3, v30, v3

    sub-int v31, v31, v3

    .line 2301
    .end local v30           #xy:[I
    :cond_9
    const/4 v3, 0x1

    if-ne v9, v3, :cond_c

    .line 2305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->getLocationInWindow([I)V

    .line 2306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    sub-int v29, v29, v3

    .line 2307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int v31, v31, v3

    .line 2309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v5, 0x0

    move/from16 v0, v29

    int-to-float v6, v0

    aput v6, v3, v5

    .line 2310
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v5, 0x1

    move/from16 v0, v31

    int-to-float v6, v0

    aput v6, v3, v5

    .line 2314
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v5, 0x0

    aget v7, v3, v5

    .line 2315
    .local v7, spanX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v5, 0x1

    aget v8, v3, v5

    .line 2318
    .local v8, spanY:I
    packed-switch v9, :pswitch_data_0

    .line 2337
    :cond_a
    :goto_2
    packed-switch v9, :pswitch_data_1

    .line 2484
    .end local v4           #view:Landroid/view/View;
    .end local v24           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_b
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDragEvent(Landroid/view/DragEvent;)Z

    .line 2485
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 2312
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    .restart local v4       #view:Landroid/view/View;
    .restart local v24       #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I)V

    goto :goto_1

    .line 2321
    .restart local v7       #spanX:I
    .restart local v8       #spanY:I
    :pswitch_0
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-ne v3, v5, :cond_a

    .line 2322
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v25, v0

    .line 2323
    .local v25, r:[I
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/HomeItem;

    .line 2324
    .local v20, item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v5, v1}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 2325
    const/4 v3, 0x0

    aget v3, v25, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int v29, v3, v5

    .line 2326
    const/4 v3, 0x1

    aget v3, v25, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int v31, v3, v5

    .line 2328
    instance-of v3, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v3, :cond_a

    .line 2329
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v23

    .line 2330
    .local v23, o:[I
    const/4 v3, 0x0

    aget v3, v23, v3

    add-int v29, v29, v3

    .line 2331
    const/4 v3, 0x1

    aget v3, v23, v3

    add-int v31, v31, v3

    goto :goto_2

    .line 2339
    .end local v20           #item:Lcom/android/launcher2/HomeItem;
    .end local v23           #o:[I
    .end local v25           #r:[I
    :pswitch_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2341
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/CellLayout;->validateDrag(Landroid/view/DragEvent;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mContext:Landroid/content/Context;

    const v6, 0x7f0e000a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2345
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2348
    :cond_d
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    if-ne v3, v5, :cond_e

    .line 2349
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 2350
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2353
    :cond_e
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcom/android/launcher2/CellLayoutContainer;->onDragStartedWithItem(Landroid/view/View;)V

    .line 2354
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    goto/16 :goto_3

    .line 2358
    :pswitch_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2360
    instance-of v3, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_f

    move-object/from16 v18, v4

    .line 2361
    check-cast v18, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2362
    .local v18, hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2363
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7, v8, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;

    .line 2364
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    .line 2366
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_f

    move-object/from16 v28, v24

    .line 2367
    check-cast v28, Lcom/android/launcher2/Workspace;

    .line 2368
    .local v28, ws:Lcom/android/launcher2/Workspace;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    sget v5, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v7, v8, v3, v5}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 2370
    .local v10, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Lcom/android/launcher2/Workspace;->setDragOutline(Landroid/graphics/Bitmap;)V

    .line 2378
    .end local v10           #b:Landroid/graphics/Bitmap;
    .end local v18           #hostview:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v28           #ws:Lcom/android/launcher2/Workspace;
    :cond_f
    iget-object v3, v14, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v3, :cond_b

    .line 2379
    const/4 v15, 0x1

    .line 2380
    .local v15, drawOutline:Z
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/FolderItem;

    if-nez v3, :cond_10

    .line 2381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-nez v3, :cond_11

    const/4 v15, 0x1

    .line 2385
    :cond_10
    :goto_4
    if-eqz v15, :cond_12

    .line 2386
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto/16 :goto_3

    .line 2382
    :cond_11
    const/4 v15, 0x0

    goto :goto_4

    .line 2387
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    if-eqz v3, :cond_b

    .line 2388
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto/16 :goto_3

    .line 2394
    .end local v15           #drawOutline:Z
    :pswitch_3
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v16

    .line 2395
    .local v16, folder:Lcom/android/launcher2/Folder;
    if-eqz v16, :cond_13

    .line 2396
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 2398
    :cond_13
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2399
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    goto/16 :goto_3

    .line 2402
    .end local v16           #folder:Lcom/android/launcher2/Folder;
    :pswitch_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2403
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2404
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 2405
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidateVisualize()V

    .line 2406
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_14

    .line 2407
    check-cast v24, Lcom/android/launcher2/Hotseat;

    .end local v24           #parent:Lcom/android/launcher2/CellLayoutContainer;
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/AllappsIcon;->setTrashIcon(Z)V

    .line 2408
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v14, v3}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    .line 2410
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_3

    .line 2416
    .restart local v24       #parent:Lcom/android/launcher2/CellLayoutContainer;
    :pswitch_5
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 2418
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v11

    .line 2419
    .local v11, container:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScreen()I

    move-result v27

    .line 2421
    .local v27, screen:I
    const-wide/16 v5, -0x65

    cmp-long v3, v11, v5

    if-nez v3, :cond_17

    const/4 v13, 0x1

    .line 2422
    .local v13, containerIsHotSeat:Z
    :goto_5
    if-eqz v13, :cond_16

    move-object/from16 v3, v24

    .line 2423
    check-cast v3, Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/16 v32, 0x1

    aget v6, v6, v32

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v27

    .line 2426
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    if-eq v3, v5, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    const/4 v5, -0x1

    if-eq v3, v5, :cond_18

    const/16 v17, 0x1

    .line 2428
    .local v17, hasDroppableCell:Z
    :goto_6
    if-eqz v17, :cond_1d

    .line 2429
    instance-of v3, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1a

    .line 2430
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/HomeItem;

    .line 2431
    .restart local v20       #item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    if-nez v3, :cond_19

    iget-object v3, v14, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_19

    .line 2432
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    check-cast v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .end local v4           #view:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v3, v4, v0}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_3

    .line 2421
    .end local v13           #containerIsHotSeat:Z
    .end local v17           #hasDroppableCell:Z
    .end local v20           #item:Lcom/android/launcher2/HomeItem;
    .restart local v4       #view:Landroid/view/View;
    :cond_17
    const/4 v13, 0x0

    goto :goto_5

    .line 2426
    .restart local v13       #containerIsHotSeat:Z
    :cond_18
    const/16 v17, 0x0

    goto :goto_6

    .line 2436
    .restart local v17       #hasDroppableCell:Z
    .restart local v20       #item:Lcom/android/launcher2/HomeItem;
    :cond_19
    move-object/from16 v0, v20

    iput v7, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 2437
    move-object/from16 v0, v20

    iput v8, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 2439
    .end local v20           #item:Lcom/android/launcher2/HomeItem;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v14, v0, v3, v5, v1}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;III)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2440
    instance-of v3, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1b

    .line 2441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    move-object v3, v4

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    invoke-virtual {v5, v3, v0}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2445
    :cond_1b
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 2447
    instance-of v3, v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1c

    .line 2448
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/CellLayout$LayoutParams;

    .local v22, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v26, v4

    .line 2449
    check-cast v26, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2450
    .local v26, resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/HomeWidgetItem;

    .line 2452
    .local v19, info:Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v32, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v3, v5, v6, v0, v1}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 2462
    .end local v11           #container:J
    .end local v13           #containerIsHotSeat:Z
    .end local v17           #hasDroppableCell:Z
    .end local v19           #info:Lcom/android/launcher2/HomeWidgetItem;
    .end local v22           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v26           #resize_view:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v27           #screen:I
    :cond_1c
    :goto_7
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Landroid/view/View;)V

    .line 2464
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v3, :cond_b

    .line 2465
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/SamsungAppWidgetInfo;

    invoke-virtual {v6, v3, v5}, Lcom/android/launcher2/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    goto/16 :goto_3

    .line 2457
    .restart local v11       #container:J
    .restart local v13       #containerIsHotSeat:Z
    .restart local v17       #hasDroppableCell:Z
    .restart local v27       #screen:I
    :cond_1d
    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/Workspace;

    if-eqz v3, :cond_1c

    .line 2459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->showOutOfSpaceMessage()V

    goto :goto_7

    .line 2472
    .end local v11           #container:J
    .end local v13           #containerIsHotSeat:Z
    .end local v17           #hasDroppableCell:Z
    .end local v27           #screen:I
    :pswitch_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout;->mFingerMovedOnDrag:Z

    .line 2473
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 2475
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2476
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2477
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcom/android/launcher2/CellLayoutContainer;->onDragEndedWithItem(Landroid/view/View;)V

    .line 2478
    invoke-virtual {v14}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 2479
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 2480
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    .line 2481
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/CellLayout;->cleanupWidgetAutoResize(Lcom/android/launcher2/DragState;)V

    goto/16 :goto_3

    .line 2318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 2337
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method onDragExit()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1576
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1577
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1580
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1582
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    .line 1583
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v3, v0, v2

    .line 1592
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 1593
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1594
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1596
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 1597
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->postInvalidate()V

    .line 440
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_4

    .line 441
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 442
    .local v9, countX:I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 445
    .local v10, countY:I
    const/4 v8, 0x0

    .line 446
    .local v8, countContextualY:I
    const/4 v7, 0x0

    .line 447
    .local v7, contextualYpadding:I
    sget-boolean v19, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v19

    if-eqz v19, :cond_1

    .line 448
    const/4 v8, 0x1

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v7, v19, v20

    .line 452
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 453
    .local v11, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 454
    .local v16, width:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 456
    .local v12, height:I
    const/high16 v19, 0x437f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v16, 0x2

    sub-int v17, v19, v20

    .line 459
    .local v17, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v17, v17, v19

    .line 460
    const/4 v6, 0x1

    .local v6, col:I
    :goto_0
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    if-gt v6, v0, :cond_4

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    sub-int v19, v19, v20

    div-int/lit8 v20, v12, 0x2

    sub-int v18, v19, v20

    .line 462
    .local v18, y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 463
    sget-boolean v19, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v19, :cond_2

    .line 464
    add-int v18, v18, v7

    .line 465
    add-int/lit8 v15, v8, 0x1

    .local v15, row:I
    :goto_1
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    if-gt v15, v0, :cond_3

    .line 466
    add-int v19, v17, v16

    add-int v20, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 468
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 465
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 471
    .end local v15           #row:I
    :cond_2
    const/4 v15, 0x1

    .restart local v15       #row:I
    :goto_2
    add-int/lit8 v19, v10, -0x1

    move/from16 v0, v19

    if-gt v15, v0, :cond_3

    .line 472
    add-int v19, v17, v16

    add-int v20, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 473
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 471
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 477
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v17, v17, v19

    .line 460
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 481
    .end local v6           #col:I
    .end local v7           #contextualYpadding:I
    .end local v8           #countContextualY:I
    .end local v9           #countX:I
    .end local v10           #countY:I
    .end local v11           #d:Landroid/graphics/drawable/Drawable;
    .end local v12           #height:I
    .end local v15           #row:I
    .end local v16           #width:I
    .end local v17           #x:I
    .end local v18           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 482
    .local v14, paint:Landroid/graphics/Paint;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_6

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object/from16 v19, v0

    aget v4, v19, v13

    .line 484
    .local v4, alpha:F
    const/16 v19, 0x0

    cmpl-float v19, v4, v19

    if-lez v19, :cond_5

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 486
    .local v5, b:Landroid/graphics/Bitmap;
    const/high16 v19, 0x3f00

    add-float v19, v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 487
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 482
    .end local v5           #b:Landroid/graphics/Bitmap;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 490
    .end local v4           #alpha:F
    :cond_6
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1607
    if-eqz p1, :cond_0

    .line 1608
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1609
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 1610
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1612
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onFailedDrop(Landroid/view/View;)V
    .locals 9
    .parameter "child"

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v0

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2118
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2119
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    .line 2120
    .local v8, item:Lcom/android/launcher2/HomeItem;
    iget v2, v8, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v3, v8, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v8, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v8, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v6, v8, Lcom/android/launcher2/HomeItem;->spanY:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 2124
    .end local v8           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 834
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 835
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    .line 838
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 720
    .local v0, action:I
    if-nez v0, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    const/4 v1, 0x1

    .line 731
    :goto_0
    return v1

    .line 728
    :cond_1
    if-nez v0, :cond_2

    .line 729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    .line 731
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 891
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v3

    .line 892
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 893
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 894
    .local v0, child:Landroid/view/View;
    instance-of v6, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v6, :cond_0

    .line 895
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    sub-int v8, p4, p2

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    sub-int/2addr v8, v9

    sub-int v9, p5, p3

    iget v10, p0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 892
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v6, :cond_1

    .line 899
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 900
    .local v5, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget v6, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v7, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v8, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v5, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 902
    .end local v5           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    :cond_1
    sget-boolean v6, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v6, :cond_2

    instance-of v6, v0, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    .line 903
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v1

    .line 904
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v2

    .line 905
    .local v2, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 907
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 908
    .local v5, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v8, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v10, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 913
    .end local v0           #child:Landroid/view/View;
    .end local v5           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 843
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 844
    .local v18, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 846
    .local v19, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 847
    .local v10, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 849
    .local v11, heightSpecSize:I
    if-nez v18, :cond_0

    .line 850
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredWidth()I

    move-result v19

    .line 852
    :cond_0
    if-nez v10, :cond_1

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getDesiredHeight()I

    move-result v11

    .line 857
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v21, v0

    mul-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v20, v0

    if-lez v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v20, v0

    :goto_0
    sub-int v6, v21, v20

    .line 858
    .local v6, childWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v21, v0

    mul-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    if-lez v20, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v20, v0

    :goto_1
    sub-int v5, v21, v20

    .line 860
    .local v5, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move/from16 v21, v0

    sub-int v15, v20, v21

    .line 861
    .local v15, myContentWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move/from16 v20, v0

    sub-int v20, v11, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    .line 862
    .local v14, myContentHeight:I
    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 863
    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    move/from16 v20, v0

    add-int v20, v20, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingRight:I

    move/from16 v21, v0

    add-int v17, v20, v21

    .line 865
    .local v17, myWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    move/from16 v20, v0

    add-int v20, v20, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mPaddingBottom:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 867
    .local v16, myHeight:I
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 868
    .local v7, childWidthMeasureSpec:I
    const/high16 v20, 0x4000

    move/from16 v0, v20

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 869
    .local v8, childheightMeasureSpec:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v9

    .line 870
    .local v9, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v9, :cond_4

    .line 871
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 872
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4, v7, v8}, Landroid/view/View;->measure(II)V

    .line 870
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 857
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childWidth:I
    .end local v7           #childWidthMeasureSpec:I
    .end local v8           #childheightMeasureSpec:I
    .end local v9           #count:I
    .end local v12           #i:I
    .end local v14           #myContentHeight:I
    .end local v15           #myContentWidth:I
    .end local v16           #myHeight:I
    .end local v17           #myWidth:I
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 858
    .restart local v6       #childWidth:I
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 874
    .restart local v5       #childHeight:I
    .restart local v7       #childWidthMeasureSpec:I
    .restart local v8       #childheightMeasureSpec:I
    .restart local v9       #count:I
    .restart local v12       #i:I
    .restart local v14       #myContentHeight:I
    .restart local v15       #myContentWidth:I
    .restart local v16       #myHeight:I
    .restart local v17       #myWidth:I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    const/high16 v21, 0x4000

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    const/high16 v22, 0x4000

    move/from16 v0, v22

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->measureChild(Landroid/view/View;II)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 882
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move/from16 v0, v20

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 884
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    sub-int v20, v16, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 885
    iget v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    sub-int v20, v17, v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 887
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_5
    return-void
.end method

.method public onMove(Landroid/view/View;II)V
    .locals 8
    .parameter "view"
    .parameter "newCellX"
    .parameter "newCellY"

    .prologue
    .line 1810
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1811
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1812
    iput p2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1813
    iput p3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 1814
    instance-of v0, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1816
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->findBestFitForWidget(Lcom/android/launcher2/LauncherAppWidgetHostView;)[I

    move-result-object v6

    .line 1818
    .local v6, fit:[I
    const/4 v0, 0x0

    aget v0, v6, v0

    iput v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 1819
    const/4 v0, 0x1

    aget v0, v6, v0

    iput v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 1821
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 1822
    .local v1, info:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;IIII)V

    .line 1825
    .end local v1           #info:Lcom/android/launcher2/HomeItem;
    .end local v6           #fit:[I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1826
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->requestLayout()V

    .line 1827
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 1828
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1006
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 917
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 918
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 919
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 921
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 922
    return-void
.end method

.method public onStateAnimationEnd(Lcom/android/launcher2/Workspace$State;)V
    .locals 10
    .parameter "state"

    .prologue
    const/4 v9, 0x1

    .line 2137
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p1, v0, :cond_0

    .line 2138
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v8

    .line 2139
    .local v8, parent:Lcom/android/launcher2/CellLayoutContainer;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 2140
    .local v7, inv:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2141
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2142
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mLastXY:[F

    aget v2, v2, v9

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I)V

    .line 2143
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    .line 2144
    .local v6, i:Lcom/android/launcher2/BaseItem;
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/launcher2/CellLayoutContainer;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 2147
    .end local v6           #i:Lcom/android/launcher2/BaseItem;
    .end local v7           #inv:Landroid/graphics/Matrix;
    .end local v8           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_0
    iput-boolean v9, p0, Lcom/android/launcher2/CellLayout;->mStateAnimationFinished:Z

    .line 2148
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 760
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 761
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 763
    .local v1, vStartPadding:I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 764
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 766
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 767
    .local v2, xAxis:I
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 769
    .local v3, yAxis:I
    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    .line 770
    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aput v4, p3, v7

    .line 771
    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    .line 772
    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    aput v4, p3, v8

    .line 773
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 782
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 783
    return-void
.end method

.method realRemoveView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 614
    return-void
.end method

.method public recalculateOccupiedCells()V
    .locals 5

    .prologue
    .line 280
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 282
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 283
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 284
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 285
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/CellLayout;->markCellsForItem(Lcom/android/launcher2/BaseItem;Z)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method refreshCellDimension()V
    .locals 5

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIII)V

    .line 277
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 586
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 587
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 593
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViewsInLayout()V

    .line 595
    :cond_0
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 947
    return-void
.end method

.method public removeChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 4

    .prologue
    .line 351
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 352
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 353
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 355
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_1

    .line 357
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutChildren;

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->recalculateOccupiedCells()V

    .line 362
    :cond_0
    return-object v2

    .line 355
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 603
    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 605
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 610
    :goto_0
    return-void

    .line 607
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 608
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 619
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 620
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 624
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 625
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 626
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 952
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 599
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 630
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViews(II)V

    .line 634
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 638
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 642
    return-void
.end method

.method public setAcceptsDrops(Z)V
    .locals 1
    .parameter "acceptsDrops"

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    if-eq v0, p1, :cond_0

    .line 578
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 579
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 581
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    .line 1012
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1013
    return-void
.end method

.method public setBackgroundAlpha(FF)V
    .locals 1
    .parameter "alpha"
    .parameter "backgroundDarken"

    .prologue
    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 974
    return-void
.end method

.method public setBackgroundAlpha(FFZ)V
    .locals 2
    .parameter "alpha"
    .parameter "backgroundDarken"
    .parameter "blend"

    .prologue
    .line 980
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 981
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 982
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 983
    const/high16 v1, 0x437f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 984
    instance-of v1, v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 985
    check-cast v1, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-virtual {v1, p2}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBackgroundDarken(F)V

    .line 986
    check-cast v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p3}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->setBlend(Z)V

    .line 989
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    const/high16 v1, 0x437f

    .line 993
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_1

    .line 995
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    if-nez v0, :cond_0

    .line 996
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method setCellHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 264
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 265
    return-void
.end method

.method setCellWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 260
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 261
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 927
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 931
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 932
    return-void
.end method

.method public setContextualPageGrid(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2568
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 2569
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForContextualPage()V

    .line 2570
    return-void
.end method

.method public setContextualPageType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 2564
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCPType:I

    .line 2565
    return-void
.end method

.method public setCrosshairsVisibility(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->cancel()V

    .line 302
    :cond_0
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 303
    return-void
.end method

.method public setEmptyMessageVisibility(I)V
    .locals 1
    .parameter "show"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mEmptyMessage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :cond_0
    return-void
.end method

.method public setFastAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setFastChildrenAlpha(F)V

    .line 1018
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFastAlpha(F)V

    .line 1019
    return-void
.end method

.method setGapX(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 268
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    .line 269
    return-void
.end method

.method setGapY(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 272
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    .line 273
    return-void
.end method

.method public setGridSize(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 328
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 329
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 330
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 332
    return-void
.end method

.method public setHomeFragment(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "home"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 144
    return-void
.end method

.method public setHoverAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 428
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    .line 429
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 430
    return-void
.end method

.method public setHoverScale(F)V
    .locals 1
    .parameter "scaleFactor"

    .prologue
    .line 410
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 411
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    .line 412
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 413
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 417
    :cond_0
    return-void
.end method

.method public setIsDefaultDropTarget(Z)V
    .locals 1
    .parameter "isDefaultDropTarget"

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    if-eq v0, p1, :cond_0

    .line 377
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 380
    :cond_0
    return-void
.end method

.method setIsDragOccuring(Z)V
    .locals 1
    .parameter "isDragOccuring"

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    if-eq v0, p1, :cond_0

    .line 384
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 385
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 387
    :cond_0
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .parameter "isDragOverlapping"

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 391
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 392
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 394
    :cond_0
    return-void
.end method

.method public setOnDragListener(Landroid/view/View$OnDragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 2505
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 2506
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 530
    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2
    .parameter "r"
    .parameter "left"

    .prologue
    .line 335
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 341
    :cond_0
    :goto_0
    const/high16 v0, 0x437f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 342
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 344
    return-void

    .line 337
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 12
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 660
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 661
    .local v5, frame:Landroid/graphics/Rect;
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollX:I

    add-int v8, p1, v10

    .line 662
    .local v8, x:I
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollY:I

    add-int v9, p2, v10

    .line 663
    .local v9, y:I
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 665
    .local v3, count:I
    const/4 v4, 0x0

    .line 666
    .local v4, found:Z
    add-int/lit8 v6, v3, -0x1

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    .line 667
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 668
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 670
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_4

    :cond_0
    iget-boolean v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v10, :cond_4

    .line 672
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 677
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mPaddingLeft:I

    iget v11, p0, Lcom/android/launcher2/CellLayout;->mPaddingTop:I

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 679
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 680
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 681
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 682
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 683
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 684
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 685
    const/4 v4, 0x1

    .line 691
    .end local v2           #child:Landroid/view/View;
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 693
    if-nez v4, :cond_2

    .line 694
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 695
    .local v1, cellXY:[I
    invoke-virtual {p0, v8, v9, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 697
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 698
    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 699
    const/4 v10, 0x1

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 700
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 701
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 704
    .end local v1           #cellXY:[I
    :cond_2
    sget-boolean v10, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v10, :cond_3

    .line 705
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 706
    .restart local v1       #cellXY:[I
    invoke-virtual {p0, v8, v9, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 707
    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellX:I

    .line 708
    const/4 v10, 0x1

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->touchStartedCellY:I

    .line 710
    .end local v1           #cellXY:[I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 711
    return-void

    .line 666
    .restart local v2       #child:Landroid/view/View;
    .restart local v7       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2128
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2129
    return-void
.end method

.method public spanToPixel(II)[I
    .locals 5
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1289
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, p2

    add-int/lit8 v3, p2, -0x1

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mGapY:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 31
    .parameter "v"
    .parameter "dragOutline"
    .parameter "nearest"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1148
    sget-boolean v23, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v23, :cond_1

    .line 1149
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1286
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1153
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mLastVisualize:[I

    .line 1154
    .local v11, l:[I
    const/16 v23, 0x0

    aget v23, p3, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v23, 0x1

    aget v23, p3, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1155
    const/16 v23, 0x0

    aget v23, v11, v23

    const/16 v24, 0x0

    aget v24, p3, v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x1

    aget v23, v11, v23

    const/16 v24, 0x1

    aget v24, p3, v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/16 v23, 0x2

    aget v23, v11, v23

    move/from16 v0, v23

    move/from16 v1, p4

    if-ne v0, v1, :cond_2

    const/16 v23, 0x3

    aget v23, v11, v23

    move/from16 v0, v23

    move/from16 v1, p5

    if-eq v0, v1, :cond_0

    .line 1158
    :cond_2
    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, p3, v24

    aput v24, v11, v23

    .line 1159
    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, p3, v24

    aput v24, v11, v23

    .line 1160
    const/16 v23, 0x2

    aput p4, v11, v23

    .line 1161
    const/16 v23, 0x3

    aput p5, v11, v23

    .line 1163
    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1165
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto :goto_0

    .line 1170
    :cond_3
    if-eqz p2, :cond_7

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v19, v0

    .line 1173
    .local v19, topLeft:[I
    const/16 v23, 0x0

    aget v23, p3, v23

    const/16 v24, 0x1

    aget v24, p3, v24

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1175
    const/16 v23, 0x0

    aget v12, v19, v23

    .line 1176
    .local v12, left:I
    const/16 v23, 0x1

    aget v18, v19, v23

    .line 1177
    .local v18, top:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .local v22, width:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1183
    .local v7, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 1184
    .local v6, dm:Landroid/util/DisplayMetrics;
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1185
    const/4 v10, 0x0

    .local v10, iw:I
    const/4 v9, 0x0

    .line 1186
    .local v9, ih:I
    const/16 v21, 0x0

    .local v21, vw:I
    const/16 v20, 0x0

    .line 1188
    .local v20, vh:I
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v23, v0

    if-nez v23, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 1189
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v16

    .line 1190
    .local v16, parent:Lcom/android/launcher2/CellLayoutContainer;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1191
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .local v4, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v13, v4

    .local v13, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v13, :cond_5

    aget-object v5, v4, v8

    .line 1192
    .local v5, d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_8

    .line 1193
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 1194
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 1198
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1199
    .local v17, res:Landroid/content/res/Resources;
    const v23, 0x7f0c002f

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1200
    const v23, 0x7f0c0030

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1201
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v23, v0

    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_9

    .line 1203
    sub-int v23, v20, v9

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v18, v18, v23

    .line 1272
    .end local v4           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v8           #i$:I
    .end local v9           #ih:I
    .end local v10           #iw:I
    .end local v13           #len$:I
    .end local v16           #parent:Lcom/android/launcher2/CellLayoutContainer;
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v20           #vh:I
    .end local v21           #vw:I
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1273
    .local v14, oldIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v23, v0

    aget-object v23, v23, v14

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1274
    add-int/lit8 v23, v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    rem-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    add-int v24, v12, v22

    add-int v25, v18, v7

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1283
    .end local v6           #dm:Landroid/util/DisplayMetrics;
    .end local v7           #height:I
    .end local v12           #left:I
    .end local v14           #oldIndex:I
    .end local v18           #top:I
    .end local v19           #topLeft:[I
    .end local v22           #width:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    goto/16 :goto_0

    .line 1191
    .restart local v4       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    .restart local v6       #dm:Landroid/util/DisplayMetrics;
    .restart local v7       #height:I
    .restart local v8       #i$:I
    .restart local v9       #ih:I
    .restart local v10       #iw:I
    .restart local v12       #left:I
    .restart local v13       #len$:I
    .restart local v16       #parent:Lcom/android/launcher2/CellLayoutContainer;
    .restart local v18       #top:I
    .restart local v19       #topLeft:[I
    .restart local v20       #vh:I
    .restart local v21       #vw:I
    .restart local v22       #width:I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1206
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .restart local v17       #res:Landroid/content/res/Resources;
    :cond_9
    sub-int v23, v21, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v12, v12, v23

    goto/16 :goto_2

    .end local v4           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v8           #i$:I
    .end local v13           #len$:I
    .end local v17           #res:Landroid/content/res/Resources;
    .restart local p1
    :cond_a
    move-object/from16 v23, p1

    .line 1211
    check-cast v23, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .restart local v4       #arr$:[Landroid/graphics/drawable/Drawable;
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v8, 0x0

    .restart local v8       #i$:I
    :goto_3
    if-ge v8, v13, :cond_b

    aget-object v5, v4, v8

    .line 1212
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_c

    .line 1213
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 1214
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 1218
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 1219
    .restart local v17       #res:Landroid/content/res/Resources;
    const v23, 0x7f0c0013

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1220
    const v23, 0x7f0c0014

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1222
    sub-int v23, v21, v10

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v12, v12, v23

    .line 1223
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v23, v0

    sub-int v25, v20, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide v29, 0x3feb333333333333L

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    add-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_2

    .line 1211
    .end local v17           #res:Landroid/content/res/Resources;
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    .restart local p1
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1226
    .end local v4           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v8           #i$:I
    .end local v13           #len$:I
    .end local v16           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v23, v0

    mul-int v23, v23, p4

    add-int/lit8 v24, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    add-int v22, v23, v24

    .line 1227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v23, v0

    mul-int v23, v23, p5

    add-int/lit8 v24, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    add-int v7, v23, v24

    .line 1229
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1231
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    int-to-float v0, v7

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1233
    .local v5, d:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v7, v0

    goto/16 :goto_2

    .line 1241
    .end local v5           #d:F
    .end local v9           #ih:I
    .end local v10           #iw:I
    .end local v20           #vh:I
    .end local v21           #vw:I
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AppIconView;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 1242
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v16

    .line 1243
    .restart local v16       #parent:Lcom/android/launcher2/CellLayoutContainer;
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/launcher2/Hotseat;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1244
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    .line 1245
    .local v15, p:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    add-int v12, v12, v23

    .line 1247
    goto/16 :goto_2

    .line 1249
    .end local v15           #p:I
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    sget v24, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int v15, v23, v24

    .line 1251
    .restart local v15       #p:I
    sget v23, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    add-int/lit8 v23, v23, -0x3

    add-int v12, v12, v23

    .line 1252
    add-int/lit8 v23, v15, -0x3

    add-int v18, v18, v23

    goto/16 :goto_2

    .line 1255
    .end local v15           #p:I
    .end local v16           #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 1259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move/from16 v23, v0

    mul-int v23, v23, p4

    add-int/lit8 v24, p4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapX:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    add-int v22, v23, v24

    .line 1260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move/from16 v23, v0

    mul-int v23, v23, p5

    add-int/lit8 v24, p5, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGapY:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    add-int v7, v23, v24

    .line 1262
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1264
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v23, v23, v24

    int-to-float v0, v7

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1266
    .restart local v5       #d:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v7, v0

    goto/16 :goto_2
.end method
