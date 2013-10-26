.class public Lcom/android/launcher2/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final TOP:I = 0x1

.field private static final enableMultitouchForWidgetResize:Z


# instance fields
.field final BACKGROUND_PADDING:I

.field final BORDER_MARGIN:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field final TOUCH_AREA:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBeginResize:Z

.field private mBorderHasChanged:Z

.field private mBorderMargin:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

.field private mClearIfNoScale:Z

.field private mDeltaX:I

.field private mDeltaY:I

.field private mDownX:I

.field private mDownY:I

.field private mExpandability:[I

.field private mForceInvalid:Z

.field private mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

.field private mHorizontalScaleActive:Z

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleHasHappened:Z

.field private mSizes:Lcom/android/launcher2/WidgetSizes;

.field private mStartSpanX:F

.field private mStartSpanY:F

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpXY:[F

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTouchTargetWidth:I

.field private mVerticalScaleActive:Z

.field private mVisualizeInvalid:Z

.field private mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayoutWithResizableWidgets;)V
    .locals 11
    .parameter "context"
    .parameter "item"
    .parameter "widgetView"
    .parameter "cellLayout"

    .prologue
    const/4 v10, 0x2

    const v9, 0x7f020120

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-array v4, v10, [F

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    .line 55
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 67
    iput-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 76
    iput-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    .line 78
    const/4 v4, 0x4

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    .line 80
    const/16 v4, 0x96

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 81
    const/16 v4, 0x10

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 82
    const/16 v4, 0x46

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->TOUCH_AREA:I

    .line 83
    const/16 v4, 0x1a

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BORDER_MARGIN:I

    .line 84
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 85
    const v4, 0x3f28f5c3

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 92
    iput-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    .line 96
    new-instance v4, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 105
    .local v3, res:Landroid/content/res/Resources;
    new-instance v4, Lcom/android/launcher2/WidgetSizes;

    invoke-direct {v4, p1}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    .line 107
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 109
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 110
    .local v0, density:F
    const/high16 v4, 0x4180

    mul-float/2addr v4, v0

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 111
    const/high16 v4, 0x428c

    mul-float/2addr v4, v0

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 112
    const/high16 v4, 0x41d0

    mul-float/2addr v4, v0

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    .line 114
    iput-object p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

    .line 115
    iput-object p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 116
    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 117
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Workspace;

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 120
    invoke-virtual {p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 121
    .local v1, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v4, v1, v3}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/res/Resources;)V

    .line 123
    const v4, 0x7f02011e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 124
    const v4, 0x7f02011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/android/launcher2/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 128
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 129
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x13

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 132
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 133
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 136
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x15

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 139
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 140
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 143
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x31

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 146
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 147
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 150
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x51

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 153
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 154
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v4}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 157
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v4}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 160
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private beginResizeIfPointInRegion(II)Z
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 293
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v1, v4

    .line 294
    .local v1, horizontalActive:Z
    :goto_0
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    move v3, v4

    .line 295
    .local v3, verticalActive:Z
    :goto_1
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v6, :cond_4

    if-eqz v1, :cond_4

    move v6, v4

    :goto_2
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 296
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidth()I

    move-result v6

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v6, v9

    if-le p1, v6, :cond_5

    if-eqz v1, :cond_5

    move v6, v4

    :goto_3
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 297
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p2, v6, :cond_6

    if-eqz v3, :cond_6

    move v6, v4

    :goto_4
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHeight()I

    move-result v6

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v6, v9

    if-le p2, v6, :cond_7

    if-eqz v3, :cond_7

    move v6, v4

    :goto_5
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 300
    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v6, :cond_8

    :cond_0
    move v0, v4

    .line 303
    .local v0, anyBordersActive:Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 304
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 305
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 306
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    .line 307
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iput v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    .line 308
    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 309
    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 311
    if-eqz v0, :cond_1

    .line 312
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v4, :cond_9

    move v4, v7

    :goto_7
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 313
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v4, :cond_a

    move v4, v7

    :goto_8
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 314
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v4, :cond_b

    move v4, v7

    :goto_9
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 315
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_c

    :goto_a
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 319
    return v0

    .end local v0           #anyBordersActive:Z
    .end local v1           #horizontalActive:Z
    .end local v2           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v3           #verticalActive:Z
    :cond_2
    move v1, v5

    .line 293
    goto/16 :goto_0

    .restart local v1       #horizontalActive:Z
    :cond_3
    move v3, v5

    .line 294
    goto/16 :goto_1

    .restart local v3       #verticalActive:Z
    :cond_4
    move v6, v5

    .line 295
    goto/16 :goto_2

    :cond_5
    move v6, v5

    .line 296
    goto/16 :goto_3

    :cond_6
    move v6, v5

    .line 297
    goto :goto_4

    :cond_7
    move v6, v5

    .line 298
    goto :goto_5

    :cond_8
    move v0, v5

    .line 300
    goto :goto_6

    .restart local v0       #anyBordersActive:Z
    .restart local v2       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_9
    move v4, v8

    .line 312
    goto :goto_7

    :cond_a
    move v4, v8

    .line 313
    goto :goto_8

    :cond_b
    move v4, v8

    .line 314
    goto :goto_9

    :cond_c
    move v7, v8

    .line 315
    goto :goto_a
.end method

.method private commitResize()V
    .locals 9

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualOk()V

    .line 592
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 594
    .local v8, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v1, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v2, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v4, v4, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    .line 598
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

    iget-boolean v0, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 600
    .local v6, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v7

    .line 602
    .local v7, cpMgr:Lcom/android/launcher2/ContextualPageManager;
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 606
    .end local v6           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #cpMgr:Lcom/android/launcher2/ContextualPageManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;

    iget v2, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;IIII)V

    .line 608
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->requestLayout()V

    .line 611
    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 617
    return-void
.end method

.method private resizeWidgetIfNeeded()V
    .locals 20

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCellWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidthGap()I

    move-result v18

    add-int v15, v17, v18

    .line 450
    .local v15, xThreshold:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCellHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHeightGap()I

    move-result v18

    add-int v16, v17, v18

    .line 452
    .local v16, yThreshold:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 453
    .local v2, _runh:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 455
    .local v3, _runv:I
    const/high16 v17, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    int-to-float v0, v15

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v7, v17, v18

    .line 456
    .local v7, hSpanIncF:F
    const/high16 v17, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v11, v17, v18

    .line 458
    .local v11, vSpanIncF:F
    const/4 v6, 0x0

    .line 459
    .local v6, hSpanInc:I
    const/4 v10, 0x0

    .line 460
    .local v10, vSpanInc:I
    const/4 v4, 0x0

    .line 461
    .local v4, cellXInc:I
    const/4 v5, 0x0

    .line 463
    .local v5, cellYInc:I
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3f28f5c3

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    .line 464
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 466
    :cond_0
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x3f28f5c3

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    .line 467
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 470
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v17, v11

    if-ltz v17, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v17, v11

    if-gtz v17, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v17, v7

    if-gtz v17, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v17, v7

    if-gez v17, :cond_6

    .line 476
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    .line 482
    :goto_0
    if-nez v6, :cond_7

    if-nez v10, :cond_7

    .line 583
    :goto_1
    return-void

    .line 478
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualOk()V

    goto :goto_0

    .line 486
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 493
    .local v9, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 495
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 496
    mul-int/lit8 v6, v6, -0x1

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 498
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move/from16 v17, v0

    sub-int v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 521
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 523
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 524
    mul-int/lit8 v10, v10, -0x1

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 526
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 527
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    move/from16 v17, v0

    sub-int v17, v17, v10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 550
    :cond_9
    :goto_3
    iget v14, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 551
    .local v14, width:I
    iget v8, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 552
    .local v8, height:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 553
    :cond_a
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    add-int v14, v6, v17

    .line 555
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 556
    :cond_c
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    add-int v8, v10, v17

    .line 560
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v8}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 562
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 563
    :cond_e
    iput v14, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 564
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v17, v0

    add-int v17, v17, v4

    move/from16 v0, v17

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 567
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 568
    :cond_10
    iput v8, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 569
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move/from16 v0, v17

    iput v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 578
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/LauncherAppWidgetHostView;->requestLayout()V

    goto/16 :goto_1

    .line 500
    .end local v8           #height:I
    .end local v14           #width:I
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 502
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_2

    .line 504
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v17

    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v18, v0

    add-int v18, v18, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 509
    .restart local v14       #width:I
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/launcher2/WidgetSizes;->capWidth(I)I

    move-result v14

    .line 512
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    sub-int v6, v14, v17

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 516
    .local v12, wantedX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v18, v0

    sub-int v18, v12, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget v18, v18, v19

    sub-int v18, v18, v6

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 518
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_2

    .line 528
    .end local v12           #wantedX:I
    .end local v14           #width:I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x3

    aget v17, v17, v18

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 530
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    move/from16 v17, v0

    add-int v17, v17, v10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_3

    .line 532
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v17

    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v18, v0

    add-int v18, v18, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 537
    .restart local v8       #height:I
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/launcher2/WidgetSizes;->capHeight(I)I

    move-result v8

    .line 540
    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    sub-int v10, v8, v17

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 544
    .local v13, wantedY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    iget v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v18, v13, v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v18, v0

    const/16 v19, 0x3

    aget v18, v18, v19

    sub-int v18, v18, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    move/from16 v17, v0

    add-int v17, v17, v10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_3

    .line 572
    .end local v13           #wantedY:I
    .restart local v14       #width:I
    :cond_16
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 573
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_4
.end method

.method private setVisualInvalid()V
    .locals 2

    .prologue
    const v1, 0x7f020121

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 439
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 442
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 443
    return-void
.end method

.method private setVisualOk()V
    .locals 2

    .prologue
    const v1, 0x7f020120

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 432
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    return-void
.end method

.method private updateDeltas(II)V
    .locals 10
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 325
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v7}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->spanToPixel(II)[I

    move-result-object v3

    .line 326
    .local v3, r:[I
    aget v5, v3, v8

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x1

    .line 327
    .local v2, minWidth:I
    aget v5, v3, v9

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, -0x1

    .line 329
    .local v1, minHeight:I
    const/4 v0, 0x0

    .local v0, left:Z
    const/4 v4, 0x0

    .line 331
    .local v4, top:Z
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v5, p1

    if-ge v5, v2, :cond_2

    .line 332
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int v5, v2, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 333
    const/4 v0, 0x1

    .line 344
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v5, p2

    if-ge v5, v1, :cond_4

    .line 345
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int v5, v1, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 346
    const/4 v4, 0x1

    .line 357
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 358
    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    .line 362
    :goto_2
    return-void

    .line 334
    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, p1

    if-ge v5, v2, :cond_3

    .line 335
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 336
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    :cond_3
    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 339
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    .line 340
    const/4 v0, 0x1

    goto :goto_0

    .line 347
    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, p2

    if-ge v5, v1, :cond_5

    .line 348
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 349
    const/4 v4, 0x1

    goto :goto_1

    .line 351
    :cond_5
    iput p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 352
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_1

    .line 353
    const/4 v4, 0x1

    goto :goto_1

    .line 360
    :cond_6
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    goto :goto_2
.end method

.method private visualizeResizeForDelta(II)V
    .locals 20
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 368
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 371
    .local v10, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 372
    .local v3, _w:I
    iget v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 374
    .local v2, _h:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 396
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 397
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 398
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 423
    :cond_1
    :goto_1
    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    iget v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v2, v0, :cond_3

    .line 424
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded()V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 428
    :cond_3
    return-void

    .line 377
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 379
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 380
    if-lez p1, :cond_6

    .line 381
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 382
    .local v6, availableLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    sub-int v7, v17, v18

    .line 383
    .local v7, availableRight:I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v4, v17, 0x2

    .line 384
    .local v4, availableBoth:I
    const/16 v17, 0x0

    sub-int v18, p1, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 385
    .local v9, leftover:I
    move/from16 v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 386
    .local v12, useBoth:I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 387
    .local v14, useLeft:I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 388
    .local v15, useRight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    sub-int v17, v17, v14

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    add-int v17, v17, v14

    add-int v17, v17, v15

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 391
    .end local v4           #availableBoth:I
    .end local v6           #availableLeft:I
    .end local v7           #availableRight:I
    .end local v9           #leftover:I
    .end local v12           #useBoth:I
    .end local v14           #useLeft:I
    .end local v15           #useRight:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    div-int/lit8 v18, p1, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    add-int v17, v17, p1

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    .line 399
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 401
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 402
    if-lez p2, :cond_9

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 408
    .local v11, totalMaxHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 409
    .local v8, availableTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    sub-int v5, v11, v17

    .line 410
    .local v5, availableBottom:I
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v4, v17, 0x2

    .line 411
    .restart local v4       #availableBoth:I
    const/16 v17, 0x0

    sub-int v18, p2, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 412
    .restart local v9       #leftover:I
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 413
    .restart local v12       #useBoth:I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 414
    .local v16, useTop:I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 415
    .local v13, useBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 416
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    add-int v17, v17, v16

    add-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1

    .line 418
    .end local v4           #availableBoth:I
    .end local v5           #availableBottom:I
    .end local v8           #availableTop:I
    .end local v9           #leftover:I
    .end local v11           #totalMaxHeight:I
    .end local v12           #useBoth:I
    .end local v13           #useBottom:I
    .end local v16           #useTop:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    add-int v17, v17, p2

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 692
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    add-int v2, v3, v4

    .line 694
    .local v2, m:I
    const/4 v0, 0x0

    .line 695
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    if-eqz v3, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    .line 701
    :goto_0
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, v2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 702
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 704
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 705
    return-void

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getBackgroundPadding()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    return v0
.end method

.method public getWidgetView()Lcom/android/launcher2/LauncherAppWidgetHostView;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 252
    const/4 v0, 0x1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 259
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 260
    .local v2, spanX:F
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanX:F

    sub-float v0, v2, v4

    .line 261
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 262
    .local v3, spanY:F
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanY:F

    sub-float v1, v3, v4

    .line 264
    .local v1, deltaY:F
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    .line 265
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 266
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 268
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    .line 269
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 270
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 272
    float-to-int v4, v0

    float-to-int v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 274
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanX:F

    .line 280
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanY:F

    .line 281
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 287
    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    .line 288
    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    .line 289
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 180
    invoke-virtual {p0, v7}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestDisallowInterceptTouchEvent(Z)V

    .line 191
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    aput v9, v8, v6

    .line 192
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    aput v9, v8, v7

    .line 193
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 194
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 195
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    aget v8, v8, v6

    float-to-int v1, v8

    .line 196
    .local v1, rawX:I
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTmpXY:[F

    aget v8, v8, v7

    float-to-int v2, v8

    .line 198
    .local v2, rawY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v6, v7

    .line 244
    :cond_1
    return v6

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 201
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 203
    .local v5, y:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v9, v9, 0x2

    add-int v3, v8, v9

    .line 204
    .local v3, w:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v9, v9, 0x2

    add-int v0, v8, v9

    .line 205
    .local v0, h:I
    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    neg-int v8, v8

    if-lt v4, v8, :cond_1

    if-gt v4, v3, :cond_1

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    neg-int v8, v8

    if-lt v5, v8, :cond_1

    if-gt v5, v0, :cond_1

    .line 210
    iput v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    .line 211
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    .line 212
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v8, v8, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    aput v4, v8, v6

    .line 213
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v8, v8, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    aput v5, v8, v7

    .line 214
    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 217
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mClearIfNoScale:Z

    .line 218
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleHasHappened:Z

    .line 219
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    goto :goto_0

    .line 221
    :cond_2
    iput-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    goto :goto_0

    .line 225
    .end local v0           #h:I
    .end local v3           #w:I
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_1
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    sub-int v6, v1, v6

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    sub-int v8, v2, v8

    invoke-direct {p0, v6, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    .line 229
    :pswitch_2
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    .line 230
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    sub-int v6, v1, v6

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    sub-int v8, v2, v8

    invoke-direct {p0, v6, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 231
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 232
    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mClearIfNoScale:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleHasHappened:Z

    if-nez v6, :cond_0

    .line 233
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    goto :goto_0

    .line 238
    :pswitch_3
    iget-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 239
    :cond_3
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public preScaleParentMatrix(Landroid/graphics/Matrix;)V
    .locals 4
    .parameter "m"

    .prologue
    .line 166
    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 167
    .local v0, fx:F
    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 168
    .local v1, fy:F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 169
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 18
    .parameter "animate"

    .prologue
    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 621
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020120

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x4040

    div-float/2addr v11, v12

    float-to-int v1, v11

    .line 623
    .local v1, handleOffset:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWidth()I

    move-result v11

    mul-int/lit8 v12, v1, 0x2

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    mul-int/lit8 v12, v12, 0x2

    add-int v5, v11, v12

    .line 624
    .local v5, newWidth:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getHeight()I

    move-result v11

    mul-int/lit8 v12, v1, 0x2

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    mul-int/lit8 v12, v12, 0x2

    add-int v4, v11, v12

    .line 626
    .local v4, newHeight:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPaddingLeft()I

    move-result v2

    .line 627
    .local v2, l:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPaddingTop()I

    move-result v10

    .line 629
    .local v10, t:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLeft()I

    move-result v11

    add-int/2addr v11, v2

    sub-int/2addr v11, v1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    sub-int v6, v11, v12

    .line 630
    .local v6, newX:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTop()I

    move-result v11

    add-int/2addr v11, v10

    sub-int/2addr v11, v1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    sub-int v7, v11, v12

    .line 632
    .local v7, newY:I
    if-nez p1, :cond_0

    .line 633
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 634
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 635
    iput v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 636
    iput v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 637
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 638
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 639
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 640
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/high16 v12, 0x3f80

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 685
    :goto_0
    return-void

    .line 643
    :cond_0
    const/4 v11, 0x4

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/launcher2/CellLayout$LayoutParams;->WIDTH:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Lcom/android/launcher2/CellLayout$LayoutParams;->HEIGHT:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Lcom/android/launcher2/CellLayout$LayoutParams;->X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v6, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    sget-object v13, Lcom/android/launcher2/CellLayout$LayoutParams;->Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    iget v0, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    aput v7, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v3, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 649
    .local v8, oa:Landroid/animation/ObjectAnimator;
    new-instance v11, Lcom/android/launcher2/AppWidgetResizeFrame$2;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/launcher2/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 655
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 657
    .local v9, set:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v11}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 673
    const/4 v11, 0x5

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 682
    :goto_1
    const-wide/16 v11, 0x96

    invoke-virtual {v9, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 683
    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 659
    :pswitch_0
    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 666
    :pswitch_1
    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/Animator;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x1

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    aput v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
