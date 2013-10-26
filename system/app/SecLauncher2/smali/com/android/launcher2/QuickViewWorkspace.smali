.class public Lcom/android/launcher2/QuickViewWorkspace;
.super Lcom/android/launcher2/QuickView;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;,
        Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;
    }
.end annotation


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object; = null

.field private static final RED_COLOR_FILTER:Landroid/graphics/ColorFilter; = null

.field private static final ROW_BY_COL_LAYOUT:[[I = null

.field private static final TAG:Ljava/lang/String; = "QuickViewWorkspace"

.field private static final TOUCH_DRAG_DELETE:I = 0x1

.field private static final TOUCH_DRAG_NORMAL:I


# instance fields
.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mCPMgr:Lcom/android/launcher2/ContextualPageManager;

.field private mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDragState:I

.field private mEnterAnimator:Landroid/animation/Animator;

.field private mExitAnimator:Landroid/animation/Animator;

.field private mOrientation:I

.field private mPageLP:Landroid/widget/FrameLayout$LayoutParams;

.field private final mSetHomeListener:Landroid/view/View$OnClickListener;

.field private mTempRects:[Landroid/graphics/Rect;

.field mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 68
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v2, [I

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v2, [I

    aput v4, v1, v5

    aput-object v1, v0, v2

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/high16 v1, -0x1

    const/high16 v2, -0x56

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    return-void

    .line 68
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/QuickView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher2/QuickView$Animate;

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    .line 93
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 532
    new-instance v2, Lcom/android/launcher2/QuickViewWorkspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/QuickViewWorkspace$1;-><init>(Lcom/android/launcher2/QuickViewWorkspace;)V

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    .line 125
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    .line 126
    .local v1, maxScreenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    new-instance v3, Lcom/android/launcher2/QuickView$Animate;

    invoke-direct {v3, p0}, Lcom/android/launcher2/QuickView$Animate;-><init>(Lcom/android/launcher2/QuickView;)V

    aput-object v3, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05000c

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    .line 131
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 133
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05000d

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    .line 134
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    const-wide/16 v3, 0x168

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 135
    return-void
.end method

.method private addScreen()V
    .locals 7

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 678
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .line 679
    .local v2, index:I
    if-gez v2, :cond_0

    .line 680
    const/4 v2, 0x0

    .line 682
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 684
    .local v0, add:Landroid/view/View;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v3

    .line 685
    .local v3, maxScreenCount:I
    if-lt v1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v5, v6, :cond_1

    .line 697
    :goto_0
    return-void

    .line 687
    :cond_1
    if-ne v1, v3, :cond_2

    .line 688
    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 691
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v4

    .line 692
    .local v4, screen:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 693
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->addPage()V

    .line 694
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 696
    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    goto :goto_0
.end method

.method private enableWorkspaceScreensCache()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 452
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    .line 454
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 455
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 456
    .local v0, celllayout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 457
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 454
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 459
    .end local v0           #celllayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method private getViewLayout(III)V
    .locals 23
    .parameter "count"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 768
    if-lez p1, :cond_0

    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 819
    :cond_0
    return-void

    .line 774
    :cond_1
    move/from16 v0, p1

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 775
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    array-length v13, v0

    .line 776
    .local v13, rows:I
    const/4 v8, 0x0

    .line 777
    .local v8, maxCols:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v13, :cond_3

    .line 778
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v6, v19, v7

    .line 779
    .local v6, colsOnThisRow:I
    if-le v6, v8, :cond_2

    move v8, v6

    .line 777
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 785
    .end local v6           #colsOnThisRow:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingLeft()I

    move-result v20

    sub-int v10, v19, v20

    .line 786
    .local v10, ourWidth:I
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v18, v10, v19

    .line 788
    .local v18, usableWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getHeight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingTop()I

    move-result v20

    sub-int v19, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingBottom()I

    move-result v20

    sub-int v9, v19, v20

    .line 789
    .local v9, ourHeight:I
    add-int/lit8 v19, v13, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    sub-int v17, v9, v19

    .line 791
    .local v17, usableHeight:I
    mul-int v15, p3, v13

    .line 792
    .local v15, totChildHeight:I
    mul-int v16, p2, v8

    .line 793
    .local v16, totChildWidth:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v15

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 794
    .local v14, scale:F
    const/high16 v19, 0x3f80

    cmpl-float v19, v14, v19

    if-lez v19, :cond_4

    const/high16 v14, 0x3f80

    .line 795
    :cond_4
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p2, v0

    .line 796
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v14

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 p3, v0

    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    mul-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v20, v0

    sub-int v15, v19, v20

    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingTop()I

    move-result v19

    sub-int v20, v9, v15

    div-int/lit8 v20, v20, 0x2

    add-int v12, v19, v20

    .line 801
    .local v12, rowTop:I
    const/4 v3, 0x0

    .line 802
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, row:I
    :goto_1
    if-ge v11, v13, :cond_0

    .line 803
    sget-object v19, Lcom/android/launcher2/QuickViewWorkspace;->ROW_BY_COL_LAYOUT:[[I

    add-int/lit8 v20, p1, -0x1

    aget-object v19, v19, v20

    aget v5, v19, v11

    .line 804
    .local v5, cols:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    mul-int v19, v19, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v20, v0

    sub-int v16, v19, v20

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getPaddingLeft()I

    move-result v19

    sub-int v20, v10, v16

    div-int/lit8 v20, v20, 0x2

    add-int v4, v19, v20

    .line 806
    .local v4, colLeft:I
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_6

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    if-nez v19, :cond_5

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    new-instance v20, Landroid/graphics/Rect;

    add-int v21, v4, p2

    add-int v22, v12, p3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v20, v19, v3

    .line 814
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapH:I

    move/from16 v19, v0

    add-int v19, v19, p2

    add-int v4, v4, v19

    .line 806
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 811
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    add-int v20, v4, p2

    add-int v21, v12, p3

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v12, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 817
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mChildGapV:I

    move/from16 v19, v0

    add-int v19, v19, p3

    add-int v12, v12, v19

    .line 802
    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method

.method private isDeleteDropTarget(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 651
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;

    move-result-object v0

    .line 652
    .local v0, dz:Lcom/android/launcher2/DeleteDropTarget;
    if-nez v0, :cond_1

    .line 654
    :cond_0
    :goto_0
    return v1

    .line 653
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/DeleteDropTarget;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 654
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/DeleteDropTarget;->checkOver(II)Z

    move-result v1

    goto :goto_0
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 3

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v0

    .line 597
    .local v0, v:Landroid/view/View;
    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 599
    return-object v0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 567
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 569
    .local v2, v:Landroid/widget/FrameLayout;
    new-instance v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;

    invoke-direct {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;-><init>(Landroid/content/Context;)V

    .line 570
    .local v0, b:Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mSetHomeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setPadding(IIII)V

    .line 572
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v4

    if-ne p1, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setChecked(Z)V

    .line 574
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 576
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 577
    iget-object v3, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 585
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 586
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 587
    return-object v2
.end method

.method private setDeleteDropTargetState(Z)V
    .locals 2
    .parameter "dragOver"

    .prologue
    .line 754
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;

    move-result-object v0

    .line 755
    .local v0, vDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;
    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Lcom/android/launcher2/DeleteDropTarget;->invalidate()V

    .line 757
    :cond_0
    return-void
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 488
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 489
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 491
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    goto :goto_0
.end method

.method public cancelDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 478
    invoke-direct {p0, v0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    .line 479
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->cancelDrag()V

    .line 480
    invoke-direct {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setDeleteDropTargetState(Z)V

    .line 481
    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 482
    return-void
.end method

.method public close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 430
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->close()V

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 433
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Landroid/view/View;

    move-result-object v1

    .line 434
    .local v1, vDeleteDropLayout:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 435
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    .line 440
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setDarkenViewAlpha(F)V

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getCurrentPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, info:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 449
    .end local v0           #info:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method disableWorkspaceScreensCache()V
    .locals 4

    .prologue
    .line 462
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getNumPages()I

    move-result v1

    .line 464
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 465
    iget-object v3, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3, v2}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 467
    .local v0, celllayout:Lcom/android/launcher2/CellLayout;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    .end local v0           #celllayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "canvas"

    .prologue
    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v8

    .line 824
    .local v8, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getWidth()I

    move-result v16

    .line 825
    .local v16, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getHeight()I

    move-result v11

    .line 827
    .local v11, height:I
    if-eqz v16, :cond_0

    if-nez v11, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    const/high16 v13, 0x3f80

    .line 831
    .local v13, progress:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_5

    .line 832
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 833
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 834
    .local v4, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v7

    .line 835
    .local v7, chilecount:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 836
    .local v6, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 837
    .local v5, childHeight:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v7, v0, :cond_0

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_4

    .line 840
    :cond_3
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 842
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getViewLayout(III)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 849
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childHeight:I
    .end local v6           #childWidth:I
    .end local v7           #chilecount:I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 850
    const/4 v13, 0x0

    .line 851
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    .line 852
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 855
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setOpenStartRect(I)V

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    .line 857
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    .line 858
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 859
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v8, :cond_9

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v12

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v12

    .line 859
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 845
    .end local v12           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 864
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 865
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    .line 866
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    .line 870
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setCloseEndRect(I)V

    .line 871
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    .line 872
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 873
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    if-ge v12, v8, :cond_8

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v12

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    aput-object v18, v17, v12

    .line 873
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 878
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->closeQuickViewWorkspaceStartAnimation()V

    .line 881
    .end local v12           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 882
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_4
    if-ge v12, v8, :cond_b

    .line 883
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 884
    .restart local v4       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v4, v0, :cond_a

    .line 885
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 882
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 888
    .end local v4           #child:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->postInvalidate()V

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->bringToFront()V

    .line 944
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 945
    const/4 v13, 0x0

    .line 948
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;

    move-result-object v15

    .line 949
    .local v15, vDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;
    if-eqz v15, :cond_e

    .line 950
    invoke-virtual {v15, v13}, Lcom/android/launcher2/DeleteDropTarget;->setAlpha(F)V

    .line 953
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Landroid/view/View;

    move-result-object v14

    .line 954
    .local v14, vDeleteDropLayout:Landroid/view/View;
    if-eqz v14, :cond_0

    .line 955
    invoke-virtual {v14, v13}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 892
    .end local v12           #i:I
    .end local v14           #vDeleteDropLayout:Landroid/view/View;
    .end local v15           #vDeleteDropTarget:Lcom/android/launcher2/DeleteDropTarget;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 894
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mPinchIndex:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    .line 899
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    move-wide/from16 v19, v0

    sub-long v9, v17, v19

    .line 901
    .local v9, current:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    cmp-long v17, v9, v17

    if-ltz v17, :cond_17

    .line 903
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->closeQuickViewWorkspace(Z)V

    .line 906
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    const/16 v17, 0x7

    :goto_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/QuickView;->mAnimationState:I

    .line 909
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    .line 910
    const/high16 v13, 0x3f80

    .line 915
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v8, :cond_14

    .line 916
    :cond_13
    if-lez v8, :cond_14

    .line 917
    new-array v0, v8, [Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 920
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mAniEngine:Lcom/android/launcher2/AnimateEngine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mStartRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mFinishRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    .line 922
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_8
    if-ge v12, v8, :cond_18

    .line 924
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 925
    .restart local v4       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v18, v0

    aget-object v18, v18, v12

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v19, v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mCurrentRects:[Landroid/graphics/Rect;

    move-object/from16 v17, v0

    aget-object v17, v17, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v12}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 922
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 906
    .end local v4           #child:Landroid/view/View;
    .end local v12           #i:I
    :cond_16
    const/16 v17, 0x8

    goto/16 :goto_6

    .line 912
    :cond_17
    long-to-float v0, v9

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v13, v17, v18

    goto/16 :goto_7

    .line 932
    .restart local v12       #i:I
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 933
    const/high16 v17, 0x3f80

    sub-float v13, v17, v13

    .line 936
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->postInvalidate()V

    goto/16 :goto_5

    .line 939
    .end local v9           #current:J
    .end local v12           #i:I
    :cond_1a
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_9
    if-ge v12, v8, :cond_c

    .line 940
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v12}, Lcom/android/launcher2/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V

    .line 939
    add-int/lit8 v12, v12, 0x1

    goto :goto_9
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;I)V
    .locals 29
    .parameter "canvas"
    .parameter "view"
    .parameter "i"

    .prologue
    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v21

    .local v21, viewWidth:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 965
    .local v20, viewHeight:I
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x4000

    div-float v8, v25, v26

    .local v8, halfViewWidth:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x4000

    div-float v7, v25, v26

    .line 968
    .local v7, halfViewHeight:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v22, v25, v8

    .line 969
    .local v22, viewXCenter:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v23, v25, v7

    .line 972
    .local v23, viewYCenter:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_4

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/launcher2/QuickViewWorkspace;->RED_COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 980
    :goto_0
    const v15, 0x3f933333

    .line 986
    .local v15, scaleFactor:F
    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 987
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 988
    neg-float v0, v8

    move/from16 v25, v0

    neg-float v0, v7

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/QuickViewWorkspace;->getVisibility()I

    move-result v25

    if-nez v25, :cond_1

    .line 992
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 995
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/QuickView;->mAnimationStartTime:J

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-int v6, v0

    .line 997
    .local v6, current:I
    int-to-float v0, v6

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v13, v25, v26

    .line 998
    .local v13, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    move v5, v13

    .line 1001
    .local v5, bgAlpha:F
    :goto_2
    const/16 v25, 0x0

    const/high16 v26, 0x3f80

    move/from16 v0, v26

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/high16 v26, 0x437f

    mul-float v26, v26, v5

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1006
    .end local v5           #bgAlpha:F
    .end local v6           #current:I
    .end local v13           #progress:F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v21

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1012
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 1013
    .local v19, tag:Ljava/lang/Object;
    sget-object v25, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v19

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 1015
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    move-object/from16 v25, v0

    check-cast v19, Ljava/lang/Integer;

    .end local v19           #tag:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-interface/range {v25 .. v26}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v10

    .line 1018
    .local v10, page:Lcom/android/launcher2/CellLayout;
    const/high16 v25, 0x3f80

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1019
    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FF)V

    .line 1021
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v12

    .local v12, pageWidth:I
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v11

    .line 1023
    .local v11, pageHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v25, v21, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v12

    move/from16 v26, v0

    div-float v16, v25, v26

    .line 1024
    .local v16, scaleH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v25, v20, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v11

    move/from16 v26, v0

    div-float v17, v25, v26

    .line 1025
    .local v17, scaleV:F
    cmpl-float v25, v17, v16

    if-lez v25, :cond_7

    move/from16 v14, v16

    .line 1026
    .local v14, scale:F
    :goto_4
    mul-float/2addr v14, v15

    .line 1029
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    add-float v25, v25, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    add-float v26, v26, v23

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1035
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1036
    neg-int v0, v12

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    neg-int v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1038
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/launcher2/CellLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1040
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v18, 0x1

    .line 1049
    .local v18, shouldDrawHome:Z
    :goto_5
    if-eqz v18, :cond_2

    .line 1052
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1056
    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1057
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1058
    neg-float v0, v8

    move/from16 v25, v0

    neg-float v0, v7

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1060
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1062
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1071
    .end local v10           #page:Lcom/android/launcher2/CellLayout;
    .end local v11           #pageHeight:I
    .end local v12           #pageWidth:I
    .end local v14           #scale:F
    .end local v16           #scaleH:F
    .end local v17           #scaleV:F
    .end local v18           #shouldDrawHome:Z
    :cond_2
    :goto_6
    return-void

    .line 978
    .end local v15           #scaleFactor:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_0

    .line 982
    :cond_4
    const/high16 v15, 0x3f80

    .line 983
    .restart local v15       #scaleFactor:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    .line 998
    .restart local v6       #current:I
    .restart local v13       #progress:F
    :cond_5
    const/high16 v25, 0x3f80

    sub-float v5, v25, v13

    goto/16 :goto_2

    .line 1004
    .end local v6           #current:I
    .end local v13           #progress:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickView;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0xff

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_3

    .restart local v10       #page:Lcom/android/launcher2/CellLayout;
    .restart local v11       #pageHeight:I
    .restart local v12       #pageWidth:I
    .restart local v16       #scaleH:F
    .restart local v17       #scaleV:F
    :cond_7
    move/from16 v14, v17

    .line 1025
    goto/16 :goto_4

    .line 1043
    .restart local v14       #scale:F
    :cond_8
    const/16 v18, 0x0

    goto :goto_5

    .line 1065
    .end local v10           #page:Lcom/android/launcher2/CellLayout;
    .end local v11           #pageHeight:I
    .end local v12           #pageWidth:I
    .end local v14           #scale:F
    .end local v16           #scaleH:F
    .end local v17           #scaleV:F
    .restart local v19       #tag:Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v24

    .line 1066
    .local v24, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 1067
    .local v9, height:I
    div-int/lit8 v25, v24, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v8, v25

    div-int/lit8 v26, v9, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v26, v7, v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1069
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6
.end method

.method public drawCloseAnimation()Z
    .locals 2

    .prologue
    .line 402
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawCloseAnimation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 404
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 405
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 407
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDrag()V

    .line 408
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->cancelDeleteView()V

    .line 409
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->wallpaperHack()V

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 411
    const/4 v1, 0x1

    .line 413
    .end local v0           #workspace:Lcom/android/launcher2/Workspace;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public drawOpenAnimation()V
    .locals 2

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 396
    .local v0, workspace:Lcom/android/launcher2/Workspace;
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 397
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mEnterAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 398
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->drawOpenAnimation()V

    .line 399
    return-void
.end method

.method protected drop(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 614
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 615
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 618
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/DeleteDropTarget;->onDrop()V

    .line 620
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 621
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 622
    iget v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->swapScreen(I)V

    .line 624
    iget v0, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 625
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 626
    invoke-direct {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->setDeleteDropTargetState(Z)V

    .line 628
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-interface {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->showDeleteWorkScreen()V

    .line 636
    :goto_0
    return-void

    .line 631
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    .line 634
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/QuickView;->drop(II)V

    goto :goto_0
.end method

.method protected endDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->endDrag()V

    .line 605
    iput v2, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 607
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;

    move-result-object v0

    .line 608
    .local v0, dz:Lcom/android/launcher2/DeleteDropTarget;
    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DeleteDropTarget;->setVisibility(I)V

    .line 610
    :cond_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    return v0
.end method

.method public getDeletePageIndex()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    return v0
.end method

.method public initScreen(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)V
    .locals 11
    .parameter "provider"

    .prologue
    const v10, 0x7f0e0074

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 495
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->init(Lcom/android/launcher2/QuickView$QuickViewInfoProvider;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mPageLP:Landroid/widget/FrameLayout$LayoutParams;

    move-object v4, p1

    .line 497
    check-cast v4, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iput-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    .line 499
    const/4 v2, 0x0

    .line 500
    .local v2, screenCount:I
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_1

    .line 501
    invoke-interface {p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v5

    sub-int v2, v4, v5

    .line 505
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 507
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f020059

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 508
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    invoke-static {}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->access$000()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    invoke-virtual {v4, v7, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 514
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 515
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_2

    .line 516
    iget-object v4, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 517
    invoke-direct {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v3

    .line 518
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 514
    .end local v3           #v:Landroid/view/View;
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    .end local v0           #i:I
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_1
    invoke-interface {p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getNumPages()I

    move-result v2

    goto :goto_0

    .line 522
    .restart local v0       #i:I
    .restart local v1       #res:Landroid/content/res/Resources;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v3

    .line 524
    .restart local v3       #v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 529
    .end local v3           #v:Landroid/view/View;
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 530
    :cond_4
    return-void
.end method

.method protected isValidTag(Ljava/lang/Object;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 362
    sget-object v0, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

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
    .line 1144
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1145
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1146
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1148
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    .line 1149
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    .line 1150
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1152
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->reloadLayoutParameters()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 1153
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 1154
    invoke-virtual {p0, v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1155
    .local v0, child:Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mPanelPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 1161
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1153
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1164
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v0}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isDeleteWorkScreenPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 386
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    .line 388
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->addScreen()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .parameter "newConfig"

    .prologue
    const/16 v11, 0x140

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/high16 v9, 0x3f80

    const/4 v7, 0x0

    .line 1100
    invoke-super {p0, p1}, Lcom/android/launcher2/QuickView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1102
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1107
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    move v0, v6

    .line 1108
    .local v0, IsLandscape:Z
    :goto_1
    const v5, 0x7f0c002a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1110
    .local v1, barHeight:I
    if-eqz v0, :cond_3

    .line 1111
    invoke-virtual {p0, v7, v7, v1, v7}, Lcom/android/launcher2/QuickViewWorkspace;->setPadding(IIII)V

    .line 1117
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getDeleteDropLayout()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1119
    .local v4, vDeleteDropLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    .line 1120
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1121
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v0, :cond_4

    .line 1122
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1123
    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1124
    const/16 v5, 0x15

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1125
    const v5, 0x7f020088

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1126
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v5, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_0

    .line 1128
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .end local v0           #IsLandscape:Z
    .end local v1           #barHeight:I
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v4           #vDeleteDropLayout:Landroid/widget/LinearLayout;
    :cond_2
    move v0, v7

    .line 1107
    goto :goto_1

    .line 1113
    .restart local v0       #IsLandscape:Z
    .restart local v1       #barHeight:I
    :cond_3
    invoke-virtual {p0, v7, v7, v7, v1}, Lcom/android/launcher2/QuickViewWorkspace;->setPadding(IIII)V

    goto :goto_2

    .line 1131
    .restart local v2       #lp:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4       #vDeleteDropLayout:Landroid/widget/LinearLayout;
    :cond_4
    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1132
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1133
    const/16 v5, 0x51

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1134
    const v5, 0x7f020087

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1135
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-ne v5, v11, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_0

    .line 1137
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v8

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    iput v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 205
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 207
    .local v6, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 270
    :cond_2
    :goto_1
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 209
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-le v10, v8, :cond_3

    .line 210
    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v10, :cond_2

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    if-eqz v10, :cond_2

    .line 211
    iput v9, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 213
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    sub-float v10, v6, v10

    float-to-int v2, v10

    .line 214
    .local v2, dy:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float v10, v4, v10

    float-to-int v1, v10

    .line 216
    .local v1, dx:I
    mul-int v10, v2, v2

    mul-int v11, v1, v1

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/QuickView;->mMovePinchStart:I

    sub-int v3, v10, v11

    .line 218
    .local v3, pinchDelta:I
    const/16 v10, 0x2710

    if-le v3, v10, :cond_2

    .line 219
    iget v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 220
    .local v0, childOnPinch:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v10, v11, :cond_2

    .line 222
    iput-boolean v9, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 223
    iput-boolean v9, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 224
    iget v9, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    iput v9, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->drawCloseAnimation()Z

    goto :goto_0

    .line 232
    .end local v0           #childOnPinch:Landroid/view/View;
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #pinchDelta:I
    :cond_3
    iput-boolean v9, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 233
    iput-boolean v9, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    .line 237
    :sswitch_1
    iput v4, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 238
    iput v6, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    goto :goto_1

    .line 242
    :sswitch_2
    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-eqz v10, :cond_4

    .line 243
    iput-boolean v9, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 244
    iput-boolean v9, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    goto :goto_1

    .line 246
    :cond_4
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    goto :goto_1

    .line 252
    :sswitch_3
    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v10, :cond_2

    .line 253
    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    .line 255
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v10, v10

    int-to-float v7, v10

    .line 256
    .local v7, y1:F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v10, v10

    int-to-float v5, v10

    .line 258
    .local v5, x1:F
    float-to-int v10, v4

    float-to-int v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v10

    float-to-int v11, v5

    float-to-int v12, v7

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 259
    sub-float v10, v6, v7

    float-to-int v2, v10

    .line 260
    .restart local v2       #dy:I
    sub-float v10, v4, v5

    float-to-int v1, v10

    .line 261
    .restart local v1       #dx:I
    iput-boolean v8, p0, Lcom/android/launcher2/QuickView;->mPinchOutProcess:Z

    .line 262
    mul-int v10, v2, v2

    mul-int v11, v1, v1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/android/launcher2/QuickView;->mMovePinchStart:I

    .line 263
    float-to-int v10, v4

    float-to-int v11, v6

    invoke-virtual {p0, v10, v11}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v10

    iput v10, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    goto/16 :goto_1

    .line 207
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
    .locals 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->updateHitRectIfNeeded(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v3

    .line 144
    .local v3, count:I
    const/4 v7, 0x1

    if-ge v3, v7, :cond_1

    .line 185
    :cond_0
    return-void

    .line 146
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    array-length v7, v7

    if-eq v7, v3, :cond_3

    .line 147
    :cond_2
    new-array v7, v3, [Landroid/graphics/Rect;

    iput-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    .line 150
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 152
    .local v2, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 153
    .local v1, childHeight:I
    iget-boolean v7, p0, Lcom/android/launcher2/QuickView;->mEnabledChildAnimation:Z

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/android/launcher2/QuickView;->mAnimationState:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_7

    const/4 v6, 0x1

    .line 155
    .local v6, shouldAnimate:Z
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 157
    .local v4, hitRect:Landroid/graphics/Rect;
    if-eqz p1, :cond_4

    .line 158
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 160
    :cond_4
    invoke-direct {p0, v3, v2, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getViewLayout(III)V

    .line 162
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_0

    .line 163
    invoke-virtual {p0, v5}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6

    .line 166
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    if-nez v7, :cond_5

    .line 167
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    aput-object v8, v7, v5

    .line 169
    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 172
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v6, :cond_8

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    .line 177
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mChildAnimate:[Lcom/android/launcher2/QuickView$Animate;

    aget-object v7, v7, v5

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    invoke-virtual {v7, v0, v8}, Lcom/android/launcher2/QuickView$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 162
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 153
    .end local v4           #hitRect:Landroid/graphics/Rect;
    .end local v5           #i:I
    .end local v6           #shouldAnimate:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    .line 180
    .restart local v4       #hitRect:Landroid/graphics/Rect;
    .restart local v5       #i:I
    .restart local v6       #shouldAnimate:Z
    :cond_8
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v9, v9, v5

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mChildRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v5

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimStateOkayForClickEvents()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v2

    .line 370
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/QuickView;->mMultiTouchUsed:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    .line 372
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->performHapticFeedback(I)Z

    .line 373
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    goto :goto_0
.end method

.method public onPinchOut()Z
    .locals 3

    .prologue
    .line 189
    iget v1, p0, Lcom/android/launcher2/QuickView;->mPinchOutIndex:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, childOnPinch:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 191
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->onPinchOut()Z

    .line 193
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->isAnimating()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 357
    :goto_0
    return v7

    .line 279
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 280
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 282
    .local v5, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_1
    :goto_1
    move v7, v8

    .line 357
    goto :goto_0

    .line 284
    :pswitch_0
    iget v9, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    sub-float/2addr v9, v4

    float-to-int v0, v9

    .line 285
    .local v0, deltaX:I
    iget v9, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    sub-float/2addr v9, v5

    float-to-int v1, v9

    .line 287
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/QuickView;->mTouchSlop:I

    if-le v9, v10, :cond_4

    move v6, v8

    .line 289
    .local v6, yMoved:Z
    :goto_2
    if-eqz v6, :cond_2

    iget v9, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-nez v9, :cond_2

    .line 290
    iput v8, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    .line 293
    :cond_2
    iget v9, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-ne v9, v11, :cond_1

    .line 294
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v9, :cond_3

    .line 295
    iget-object v9, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v10, v0

    iget-object v11, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v1

    iget-object v12, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    sub-int/2addr v12, v0

    iget-object v13, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    sub-int/2addr v13, v1

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/View;->layout(IIII)V

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->postInvalidate()V

    .line 303
    :cond_3
    iput v4, p0, Lcom/android/launcher2/QuickView;->mLastMotionX:F

    .line 304
    iput v5, p0, Lcom/android/launcher2/QuickView;->mLastMotionY:F

    .line 306
    float-to-int v9, v4

    float-to-int v10, v5

    invoke-direct {p0, v9, v10}, Lcom/android/launcher2/QuickViewWorkspace;->isDeleteDropTarget(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 307
    iput v8, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 310
    invoke-direct {p0, v8}, Lcom/android/launcher2/QuickViewWorkspace;->setDeleteDropTargetState(Z)V

    goto :goto_1

    .end local v6           #yMoved:Z
    :cond_4
    move v6, v7

    .line 287
    goto :goto_2

    .line 313
    .restart local v6       #yMoved:Z
    :cond_5
    iget v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    if-ne v9, v8, :cond_6

    .line 315
    invoke-direct {p0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->setDeleteDropTargetState(Z)V

    .line 316
    iput v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDragState:I

    .line 320
    :cond_6
    float-to-int v9, v4

    float-to-int v10, v5

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v2

    .line 321
    .local v2, index:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_8

    iget v9, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    if-eq v2, v9, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v9, v10, :cond_8

    move v3, v8

    .line 325
    .local v3, shouldRepositionDraggingView:Z
    :goto_3
    if-eqz v3, :cond_1

    .line 326
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 327
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v7, v2}, Lcom/android/launcher2/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 328
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-eqz v7, :cond_7

    .line 329
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :cond_7
    iput v2, p0, Lcom/android/launcher2/QuickView;->mDraggingIndex:I

    goto/16 :goto_1

    .end local v3           #shouldRepositionDraggingView:Z
    :cond_8
    move v3, v7

    .line 321
    goto :goto_3

    .line 338
    .end local v0           #deltaX:I
    .end local v1           #deltaY:I
    .end local v2           #index:I
    .end local v6           #yMoved:Z
    :pswitch_1
    iget v7, p0, Lcom/android/launcher2/QuickView;->mTouchState:I

    if-ne v7, v11, :cond_9

    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v9, :cond_9

    .line 339
    float-to-int v7, v4

    float-to-int v9, v5

    invoke-virtual {p0, v7, v9}, Lcom/android/launcher2/QuickViewWorkspace;->drop(II)V

    .line 342
    :cond_9
    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mDraggingView:Landroid/view/View;

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/launcher2/QuickView;->mTouchedView:Landroid/view/View;

    if-eqz v7, :cond_b

    .line 343
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->postInvalidate()V

    .line 346
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->endDrag()V

    .line 348
    iget v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-eq v7, v9, :cond_1

    .line 349
    iget-object v7, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v7}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropTarget()Lcom/android/launcher2/DeleteDropTarget;

    move-result-object v7

    const/high16 v9, 0x3f80

    invoke-virtual {v7, v9}, Lcom/android/launcher2/DeleteDropTarget;->setFadeOutTrashCan(F)V

    goto/16 :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-super {p0}, Lcom/android/launcher2/QuickView;->open()V

    .line 418
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v1}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Landroid/view/View;

    move-result-object v0

    .line 419
    .local v0, vDeleteDropLayout:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 427
    :cond_1
    return-void
.end method

.method public removeScreen()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 700
    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-eq v6, v10, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 701
    :cond_0
    iput-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 742
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 707
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 708
    .local v0, count:I
    if-lt v0, v7, :cond_2

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v6, v9, :cond_3

    .line 710
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 713
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget v9, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-interface {v6, v9}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->deletePage(I)V

    .line 715
    iget v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    if-gt v6, v9, :cond_6

    .line 716
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 717
    .local v3, newHomeIndex:I
    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v6, v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    .line 720
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v4

    .line 722
    .local v4, numPages:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_6

    .line 723
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 724
    .local v5, page:Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_4

    .line 725
    check-cast v5, Landroid/view/ViewGroup;

    .end local v5           #page:Landroid/view/View;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 726
    .local v1, homeButton:Landroid/view/View;
    instance-of v6, v1, Landroid/widget/CompoundButton;

    if-eqz v6, :cond_4

    .line 727
    check-cast v1, Landroid/widget/CompoundButton;

    .end local v1           #homeButton:Landroid/view/View;
    if-ne v2, v3, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 722
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v6, v8

    .line 727
    goto :goto_2

    .line 733
    .end local v2           #i:I
    .end local v3           #newHomeIndex:I
    .end local v4           #numPages:I
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->saveCurrentPageOrder()V

    .line 735
    iput-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 736
    iput v10, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 738
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 740
    iget-object v6, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->getCurrentPage()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 741
    iget-object v6, p0, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->updateWallpaperOffsets()V

    goto/16 :goto_0
.end method

.method public setContextualPageManager(Lcom/android/launcher2/ContextualPageManager;)V
    .locals 0
    .parameter "CPMgr"

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    .line 1168
    return-void
.end method

.method public setDeletePageIndex(I)V
    .locals 1
    .parameter "pageIndex"

    .prologue
    .line 644
    iput p1, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteIndex:I

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 646
    return-void
.end method

.method protected swapScreen(I)V
    .locals 2
    .parameter "toIndex"

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/launcher2/QuickView;->mQVProvider:Lcom/android/launcher2/QuickView$QuickViewInfoProvider;

    iget v1, p0, Lcom/android/launcher2/QuickView;->mOriginDragIndex:I

    invoke-interface {v0, v1, p1}, Lcom/android/launcher2/QuickView$QuickViewInfoProvider;->movePage(II)V

    .line 748
    iput p1, p0, Lcom/android/launcher2/QuickView;->mCurrentPage:I

    .line 750
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->updateTags()V

    .line 751
    return-void
.end method

.method protected updateTags()V
    .locals 8

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 665
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 666
    invoke-virtual {p0, v2}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 667
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 668
    .local v3, tag:Ljava/lang/Object;
    sget-object v4, Lcom/android/launcher2/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 669
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 670
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0074

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v1, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 665
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    .end local v0           #child:Landroid/view/View;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method
