.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$16;,
        Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$StateAnimatorProvider;,
        Lcom/android/launcher2/Workspace$State;,
        Lcom/android/launcher2/Workspace$BindWidgetsState;
    }
.end annotation


# static fields
.field private static final FAST_ROTATION:F = 15.0f

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static PAGE_HAVER_RIGHT_WIDTH_SIZE:I = 0x0

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final SLOW_ROTATION:F = 20.0f

.field private static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"

.field public static final TAG_STUCK_IN_EDIT:Ljava/lang/String; = "Launcher.StuckInEdit"

.field private static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_ROTATION:F = 20.0f

.field static final kPageZoomScaleLimit:F = 0.8f

.field static final sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;


# instance fields
.field private final ADDSCALEFACTOR:F

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackgroundDarken:F

.field private mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

.field private mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDragFromMenu:Z

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mEditModeShrinkFactor:F

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private mFastScrollDrawInward:F

.field private mFixedWallpaper:Z

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private mInScrollArea:Z

.field private mInterceptedTouchEvent:Z

.field private mIsDragOccuring:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mOldState:Lcom/android/launcher2/Workspace$State;

.field private mPageIndicatorTopShrunken:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mScrollDirection:I

.field protected mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

.field private mStateAnimatorProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Workspace$StateAnimatorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchStateAfterFirstLayout:Z

.field private mTempCell:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mUpdateWallpaperOffsetImmediately:Z

.field private mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperTravelWidth:I

.field private mWallpaperWidth:I

.field private final mWidgetsToBind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 173
    const/high16 v0, 0x3f00

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    .line 174
    const/high16 v0, 0x4180

    sput v0, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    sget-object v5, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 90
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    .line 107
    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 114
    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 115
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 119
    const v5, 0x3d75c28f

    iput v5, p0, Lcom/android/launcher2/Workspace;->ADDSCALEFACTOR:F

    .line 122
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 124
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 125
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 138
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    .line 141
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 143
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 145
    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 148
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    .line 153
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 168
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 169
    iput v8, p0, Lcom/android/launcher2/Workspace;->mMovePinchStart:I

    .line 177
    const v5, 0x3ee66666

    iput v5, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    .line 182
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 183
    iput v8, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 185
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/launcher2/Workspace;->mScrollDirection:I

    .line 186
    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    .line 348
    new-instance v5, Lcom/android/launcher2/Workspace$2;

    invoke-direct {v5, p0}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 659
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    .line 1000
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    .line 1287
    new-instance v5, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v5}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 207
    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 212
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 214
    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v5, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 217
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 219
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 220
    .local v1, config:Landroid/content/res/Configuration;
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SmallestWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 224
    .local v3, metrics:Landroid/util/DisplayMetrics;
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Screen Width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Density: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", DensityDpi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const v5, 0x7f0a0005

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    iput v5, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    .line 232
    const v5, 0x7f090002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    .line 238
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-static {v5, v6}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 241
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 244
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 246
    new-instance v5, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-direct {v5, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 247
    return-void

    .line 233
    :catch_0
    move-exception v2

    .line 234
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "Launcher.Workspace"

    const-string v6, "Failed to fine resources defined in attributes for workspace"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Folder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Folder;)Lcom/android/launcher2/Folder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    return v0
.end method

.method private backgroundAlphaInterpolator(F)F
    .locals 4
    .parameter "r"

    .prologue
    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, pivotA:F
    const v1, 0x3e99999a

    .line 1013
    .local v1, pivotB:F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1014
    const/4 v2, 0x0

    .line 1018
    :goto_0
    return v2

    .line 1015
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1016
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1018
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private changeState(Lcom/android/launcher2/Workspace$State;)V
    .locals 3
    .parameter "shrinkState"

    .prologue
    .line 1427
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V

    .line 1428
    return-void
.end method

.method private createAndBindWidget(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 2732
    sget-object v0, Lcom/android/launcher2/Workspace$16;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2740
    .end local p1
    :goto_0
    return-void

    .line 2734
    .restart local p1
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindAppWidget(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_0

    .line 2737
    .restart local p1
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast p1, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->bindSamsungAppWidget(Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    goto :goto_0

    .line 2732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1757
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1758
    .local v6, res:Landroid/content/res/Resources;
    const v7, 0x1060012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1759
    .local v5, outlineColor:I
    const/4 v1, 0x0

    .line 1761
    .local v1, b:Landroid/graphics/Bitmap;
    instance-of v7, p0, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    move-object v7, p0

    .line 1762
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 1763
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 1764
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1774
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    :goto_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1775
    const/4 v7, 0x1

    invoke-static {p0, p1, p2, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1778
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1780
    return-object v1

    .line 1762
    .restart local v0       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1770
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1817
    .local v5, r:Landroid/content/res/Resources;
    const v7, 0x1060012

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 1818
    .local v4, outlineColor:I
    const v7, 0x7f0c0013

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1819
    .local v2, iconWidth:I
    const v7, 0x7f0c0014

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1820
    .local v1, iconHeight:I
    const v7, 0x7f0c0059

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1821
    .local v6, rectRadius:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    float-to-int v3, v7

    .line 1822
    .local v3, inset:I
    add-int v7, v2, p2

    add-int v8, v1, p2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1825
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1826
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v3

    int-to-float v9, v3

    sub-int v10, v2, v3

    int-to-float v10, v10

    sub-int v11, v1, v3

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v8, v6

    int-to-float v9, v6

    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1828
    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p1, v4, v4}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1829
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1830
    return-object v0
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 12
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    const v11, 0x3f59999a

    const/4 v10, 0x0

    .line 1699
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1700
    .local v1, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1702
    const/4 v6, 0x0

    .line 1704
    .local v6, textVisible:Z
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1705
    instance-of v8, p0, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    if-eqz p3, :cond_3

    move-object v8, p0

    .line 1706
    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, arr$:[Landroid/graphics/drawable/Drawable;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1707
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 1708
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v8, p2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, p2

    invoke-virtual {v1, v10, v10, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1710
    div-int/lit8 v8, p2, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, p2, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1713
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1714
    .local v3, dm:Landroid/util/DisplayMetrics;
    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_0

    .line 1715
    invoke-virtual {p1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1719
    :cond_0
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1749
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #dm:Landroid/util/DisplayMetrics;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local p0
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1750
    return-void

    .line 1706
    .restart local v0       #arr$:[Landroid/graphics/drawable/Drawable;
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local p0
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1724
    .end local v0           #arr$:[Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_3
    instance-of v8, p0, Lcom/android/launcher2/AppIconView;

    if-eqz v8, :cond_5

    move-object v7, p0

    .line 1725
    check-cast v7, Lcom/android/launcher2/AppIconView;

    .line 1726
    .local v7, tv:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v7}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {v7}, Lcom/android/launcher2/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 1730
    invoke-virtual {v7}, Lcom/android/launcher2/AppIconView;->getTextVisible()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1731
    invoke-virtual {v7, v10}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 1732
    const/4 v6, 0x1

    .line 1740
    .end local v7           #tv:Lcom/android/launcher2/AppIconView;
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    neg-int v8, v8

    div-int/lit8 v9, p2, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v10, p2, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1741
    sget-object v8, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1742
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1745
    if-eqz v6, :cond_1

    .line 1746
    check-cast p0, Lcom/android/launcher2/AppIconView;

    .end local p0
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    goto :goto_1

    .line 1735
    .restart local p0
    :cond_5
    instance-of v8, p0, Landroid/widget/TextView;

    if-eqz v8, :cond_4

    move-object v7, p0

    .line 1736
    check-cast v7, Landroid/widget/TextView;

    .line 1737
    .local v7, tv:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v8

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method

.method private getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 1923
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 11
    .parameter "tag"

    .prologue
    .line 2082
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    .line 2083
    .local v2, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 2084
    .local v6, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2085
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 2086
    invoke-virtual {v6, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2087
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2088
    .local v1, childItem:Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_1

    iget-wide v7, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v9, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 2093
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItem:Lcom/android/launcher2/BaseItem;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :goto_1
    return-object v0

    .line 2085
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childItem:Lcom/android/launcher2/BaseItem;
    .restart local v3       #count:I
    .restart local v4       #i:I
    .restart local v6       #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2093
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItem:Lcom/android/launcher2/BaseItem;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2070
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2071
    .local v0, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 2072
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2073
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2072
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2075
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2076
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2078
    :cond_1
    return-object v0
.end method

.method private getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    .local v0, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 2056
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2057
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2059
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2060
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    :cond_1
    return-object v0
.end method

.method private handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 2
    .parameter "info"
    .parameter "folderIcon"
    .parameter "animateOpen"

    .prologue
    .line 2398
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2399
    const-string v0, "Launcher.Workspace"

    const-string v1, "Folder info marked as open, but associated folder is not open."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/launcher2/FolderItem;->setOpened(Z)V

    .line 2403
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    .line 2404
    return-void
.end method

.method private hitsPage(IFF)Z
    .locals 7
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 468
    .local v1, page:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 469
    const/4 v4, 0x2

    new-array v0, v4, [F

    aput p2, v0, v3

    aput p3, v0, v2

    .line 470
    .local v0, localXY:[F
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 471
    aget v4, v0, v3

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    aget v4, v0, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 474
    .end local v0           #localXY:[F
    :goto_0
    return v2

    .restart local v0       #localXY:[F
    :cond_0
    move v2, v3

    .line 471
    goto :goto_0

    .end local v0           #localXY:[F
    :cond_1
    move v2, v3

    .line 474
    goto :goto_0
.end method

.method private initWorkspace()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 280
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 281
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 283
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 284
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 285
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 287
    new-instance v1, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 308
    const/16 v1, 0x258

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 309
    new-instance v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 310
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 311
    .local v0, size:Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 312
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    .line 313
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    .line 314
    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 316
    return-void
.end method

.method private isTouchActive()Z
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnimationOnThis(I)Landroid/animation/Animator;
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1685
    .local v0, s:Landroid/animation/AnimatorSet;
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 1686
    return-object v0
.end method

.method private onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1227
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1228
    .local v8, position:[I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1231
    .local v7, pointerIndex:I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1232
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1234
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1238
    return-void

    .line 1234
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method private openFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V
    .locals 6
    .parameter "folderItem"
    .parameter "icon"
    .parameter "animateOpen"

    .prologue
    const/4 v5, 0x1

    .line 2358
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2363
    .local v1, parentView:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 2385
    :cond_0
    :goto_0
    return-void

    .line 2365
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2366
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 2369
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/Folder;->fromXml(Landroid/content/Context;)Lcom/android/launcher2/Folder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    .line 2370
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher2/Folder;->mFixedWidth:I

    .line 2371
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Folder;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 2372
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/Folder;->setItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 2374
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    new-instance v3, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;

    invoke-direct {v3, p0, p2, p3}, Lcom/android/launcher2/Workspace$WorkspaceFolderMgr;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIconView;Z)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Folder;->setFolderManager(Lcom/android/launcher2/Folder$FolderManager;)V

    .line 2375
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Folder;->bind(Lcom/android/launcher2/FolderItem;)V

    .line 2376
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    .line 2377
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v2, v2, Lcom/android/launcher2/HomeFragment;->mViewRoot:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1, p3}, Lcom/android/launcher2/Folder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    .line 2378
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2379
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v5, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2383
    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2, v5}, Lcom/android/launcher2/Folder;->startEditingFolderName(Z)V

    goto/16 :goto_0
.end method

.method private setScrollDirection(I)V
    .locals 0
    .parameter "scrollDirection"

    .prologue
    .line 2023
    iput p1, p0, Lcom/android/launcher2/Workspace;->mScrollDirection:I

    .line 2024
    return-void
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 3

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    .line 835
    .local v0, enableWallpaperEffects:Z
    if-eqz v0, :cond_0

    .line 836
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 838
    :cond_0
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 13

    .prologue
    const/high16 v12, 0x3f80

    .line 784
    const/4 v5, 0x1

    .line 785
    .local v5, overScrollWallpaper:Z
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 789
    .local v1, isStaticWallpaper:Z
    iget v9, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 790
    .local v9, wallpaperTravelWidth:I
    if-nez v1, :cond_0

    .line 791
    iget v9, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 797
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 798
    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float v11, v12, v11

    const/high16 v12, 0x3f00

    invoke-virtual {v10, v11, v12}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 806
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v8

    .line 807
    .local v8, scrollRange:I
    const/4 v7, 0x0

    .line 813
    .local v7, scrollProgressOffset:F
    if-eqz v1, :cond_1

    .line 814
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v10

    iget v11, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v4, v10

    .line 815
    .local v4, overScrollOffset:I
    int-to-float v10, v4

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    add-float/2addr v7, v10

    .line 816
    mul-int/lit8 v10, v4, 0x2

    add-int/2addr v8, v10

    .line 821
    .end local v4           #overScrollOffset:I
    :cond_1
    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v0, v10

    .line 824
    .local v0, adjustedScrollX:F
    int-to-float v10, v8

    div-float v10, v0, v10

    add-float v6, v10, v7

    .line 826
    .local v6, scrollProgress:F
    int-to-float v10, v9

    mul-float/2addr v10, v6

    iget v11, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float v3, v10, v11

    .line 828
    .local v3, offsetInDips:F
    iget v10, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v10, v10

    div-float v2, v3, v10

    .line 829
    .local v2, offset:F
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 830
    const/4 v2, 0x0

    .line 831
    :cond_2
    return v2

    .line 800
    .end local v0           #adjustedScrollX:F
    .end local v2           #offset:F
    .end local v3           #offsetInDips:F
    .end local v6           #scrollProgress:F
    .end local v7           #scrollProgressOffset:F
    .end local v8           #scrollRange:I
    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float v11, v12, v11

    invoke-virtual {v10, v11, v12}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    goto :goto_0
.end method

.method private wallpaperTravelToScreenHeightRatio(II)F
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 698
    const v0, 0x3f8ccccd

    return v0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 704
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 711
    .local v4, aspectRatio:F
    const v0, 0x3fcccccd

    .line 712
    .local v0, ASPECT_RATIO_LANDSCAPE:F
    const/high16 v1, 0x3f20

    .line 713
    .local v1, ASPECT_RATIO_PORTRAIT:F
    const/high16 v2, 0x3fc0

    .line 714
    .local v2, WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE:F
    const v3, 0x3f99999a

    .line 721
    .local v3, WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT:F
    const v5, 0x3e9d89d7

    .line 724
    .local v5, x:F
    const v6, 0x3f80fc10

    .line 725
    .local v6, y:F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method abortConfigChanges()V
    .locals 1

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2728
    sget-object v0, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 2729
    return-void
.end method

.method addApplicationShortcut(Lcom/android/launcher2/HomeShortcutItem;Lcom/android/launcher2/CellLayout;JIIIZII)V
    .locals 13
    .parameter "info"
    .parameter "target"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "insertAtFirst"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1890
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const v2, 0x7f030012

    invoke-virtual {v0, v2, p2, p1}, Lcom/android/launcher2/HomeFragment;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v12

    .line 1892
    .local v12, view:Landroid/view/View;
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1893
    .local v1, cellXY:[I
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p2

    move/from16 v4, p9

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 1894
    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, v12

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 1895
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v0, 0x0

    aget v7, v1, v0

    const/4 v0, 0x1

    aget v8, v1, v0

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 1897
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
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
    .line 1218
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1219
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1224
    :goto_0
    return-void

    .line 1222
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 15
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 404
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    move/from16 v0, p2

    if-lt v0, v4, :cond_2

    .line 405
    :cond_0
    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The screen must be >= 0 and < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); skipping child"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_3

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 413
    .local v14, tag:Ljava/lang/Object;
    instance-of v4, v14, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v4, :cond_7

    move-object v11, v14

    .line 414
    check-cast v11, Lcom/android/launcher2/HomeShortcutItem;

    .line 415
    .local v11, info:Lcom/android/launcher2/HomeShortcutItem;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4, v11}, Lcom/android/launcher2/HomeFragment;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object p1

    .line 423
    .end local v11           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v14           #tag:Ljava/lang/Object;
    :cond_3
    :goto_1
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_4

    move-object/from16 v4, p1

    .line 424
    check-cast v4, Lcom/android/launcher2/AppIconView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 427
    :cond_4
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 428
    .local v12, layout:Lcom/android/launcher2/CellLayout;
    new-instance v4, Lcom/android/launcher2/IconKeyEventListener;

    invoke-direct {v4}, Lcom/android/launcher2/IconKeyEventListener;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 432
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-nez v13, :cond_8

    .line 433
    new-instance v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 441
    .restart local v13       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    if-gez p5, :cond_5

    if-gez p6, :cond_5

    .line 442
    const/4 v4, 0x0

    iput-boolean v4, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 446
    :cond_5
    const-wide/16 v4, -0x64

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    .line 449
    .local v7, childId:I
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/Folder;

    if-nez v4, :cond_9

    const/4 v9, 0x1

    .line 450
    .local v9, markCellsAsOccupied:Z
    :goto_3
    if-eqz p7, :cond_a

    const/4 v6, 0x0

    :goto_4
    move-object v4, v12

    move-object/from16 v5, p1

    move-object v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 454
    const-string v4, "Launcher.Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add to item at ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") to CellLayout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_6
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/Folder;

    if-nez v4, :cond_1

    .line 458
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 459
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 416
    .end local v7           #childId:I
    .end local v9           #markCellsAsOccupied:Z
    .end local v12           #layout:Lcom/android/launcher2/CellLayout;
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v14       #tag:Ljava/lang/Object;
    :cond_7
    instance-of v4, v14, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_3

    move-object v11, v14

    .line 417
    check-cast v11, Lcom/android/launcher2/HomeFolderItem;

    .line 418
    .local v11, info:Lcom/android/launcher2/HomeFolderItem;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4, v11}, Lcom/android/launcher2/HomeFragment;->createFolder(Lcom/android/launcher2/HomeItem;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_1

    .line 435
    .end local v11           #info:Lcom/android/launcher2/HomeFolderItem;
    .end local v14           #tag:Ljava/lang/Object;
    .restart local v12       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v13       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_8
    move/from16 v0, p3

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 436
    move/from16 v0, p4

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 437
    move/from16 v0, p5

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 438
    move/from16 v0, p6

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 449
    .restart local v7       #childId:I
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 450
    .restart local v9       #markCellsAsOccupied:Z
    :cond_a
    const/4 v6, -0x1

    goto :goto_4
.end method

.method public addInScreen(Landroid/view/View;JIIIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 393
    const-wide/16 v0, -0x65

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Hotseat;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 399
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 397
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_0
.end method

.method public addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    return-void
.end method

.method bindWidgetsAfterConfigChange()V
    .locals 6

    .prologue
    .line 2756
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 2757
    .local v2, launcher:Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    sget-object v5, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    if-ne v4, v5, :cond_1

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2760
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2761
    sget-object v4, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NOTHING:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 2762
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->finishBindingItems()V

    goto :goto_0

    .line 2764
    :cond_2
    sget-object v4, Lcom/android/launcher2/Workspace$16;->$SwitchMap$com$android$launcher2$Workspace$BindWidgetsState:[I

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$BindWidgetsState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2796
    :cond_3
    :goto_1
    new-instance v4, Lcom/android/launcher2/Workspace$15;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$15;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2766
    :pswitch_0
    sget-object v4, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_NONCURRENT_PAGES:Lcom/android/launcher2/Workspace$BindWidgetsState;

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    .line 2767
    const/4 v3, 0x0

    .line 2768
    .local v3, somethingBound:Z
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_5

    .line 2769
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2770
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget v4, v1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v4, v5, :cond_4

    .line 2771
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    .line 2772
    const/4 v3, 0x1

    .line 2773
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2768
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2780
    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    :cond_5
    if-nez v3, :cond_3

    .line 2791
    .end local v0           #i:I
    .end local v3           #somethingBound:Z
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 2792
    .restart local v0       #i:I
    if-ltz v0, :cond_3

    .line 2793
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v4}, Lcom/android/launcher2/Workspace;->createAndBindWidget(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1

    .line 2764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method changeState(Lcom/android/launcher2/Workspace$State;ZILcom/android/launcher2/BaseItem;)V
    .locals 27
    .parameter "state"
    .parameter "animated"
    .parameter "delay"
    .parameter "item"

    .prologue
    .line 1432
    const-string v3, "Launcher.StuckInEdit"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v3, :cond_1

    .line 1434
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1435
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mStateAfterFirstLayout:Lcom/android/launcher2/Workspace$State;

    .line 1681
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1440
    const/16 p2, 0x0

    .line 1443
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_3

    .line 1444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1449
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1451
    const/high16 v18, 0x3f80

    .line 1452
    .local v18, finalScaleFactor:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1453
    .local v4, oldState:Lcom/android/launcher2/Workspace$State;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    .line 1454
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1455
    const/16 v26, 0x1

    .line 1457
    .local v26, zoomIn:Z
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_11

    .line 1458
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    const v5, 0x3d75c28f

    add-float v18, v3, v5

    .line 1462
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v19

    .line 1463
    .local v19, hotseat:Lcom/android/launcher2/Hotseat;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_5

    .line 1464
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 1468
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHomeEditTitleBar()Landroid/view/ViewGroup;

    move-result-object v14

    .line 1470
    .local v14, HomeEditTitleBar:Landroid/view/ViewGroup;
    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1471
    .local v22, preAnimatorSet:Landroid/animation/AnimatorSet;
    new-instance v21, Landroid/animation/AnimatorSet;

    invoke-direct/range {v21 .. v21}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1472
    .local v21, mainAnimatorSet:Landroid/animation/AnimatorSet;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1474
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1475
    .local v7, preAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    .local v13, mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_13

    .line 1478
    if-eqz v19, :cond_8

    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v3, :cond_8

    .line 1481
    :cond_7
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/launcher2/AllappsIcon;->setTrashIcon(Z)V

    .line 1484
    :cond_8
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_a

    .line 1485
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 1488
    if-eqz v14, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_9

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v23, v0

    .line 1491
    .local v23, titleBarHeight:F
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move/from16 v0, v23

    neg-float v10, v0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v14, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1494
    .local v15, a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1500
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1505
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    .end local v23           #titleBarHeight:F
    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1506
    if-eqz v14, :cond_a

    if-eqz p4, :cond_a

    .line 1507
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1508
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v14, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1511
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1520
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getTopBar()Landroid/view/View;

    move-result-object v24

    .line 1528
    .local v24, v:Landroid/view/View;
    if-eqz p2, :cond_12

    .line 1529
    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1530
    const-string v3, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v8, 0x0

    aput v8, v5, v6

    move-object/from16 v0, v24

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1531
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xdc

    invoke-virtual {v15, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1532
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    .end local v24           #v:Landroid/view/View;
    :cond_b
    :goto_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 1619
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v5, :cond_c

    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-eqz v3, :cond_0

    .line 1623
    :cond_c
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-eq v0, v3, :cond_d

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_19

    .line 1624
    :cond_d
    const v3, 0x7f050016

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    :cond_e
    :goto_3
    if-eqz v26, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 1634
    .local v17, duration:I
    :goto_4
    sget-object v3, Lcom/android/launcher2/Workspace;->PAGE_ZOOM:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v18, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    .line 1635
    .local v25, zoomAnim:Landroid/animation/ObjectAnimator;
    if-eqz v26, :cond_f

    .line 1636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1638
    :cond_f
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_10
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    .line 1641
    .local v2, provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1c

    if-nez p4, :cond_1c

    .line 1644
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_10

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_10

    .line 1645
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_5

    .line 1460
    .end local v2           #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    .end local v7           #preAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v13           #mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v14           #HomeEditTitleBar:Landroid/view/ViewGroup;
    .end local v17           #duration:I
    .end local v19           #hotseat:Lcom/android/launcher2/Hotseat;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #mainAnimatorSet:Landroid/animation/AnimatorSet;
    .end local v22           #preAnimatorSet:Landroid/animation/AnimatorSet;
    .end local v25           #zoomAnim:Landroid/animation/ObjectAnimator;
    :cond_11
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    goto/16 :goto_1

    .line 1534
    .restart local v7       #preAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v13       #mainAnimators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v14       #HomeEditTitleBar:Landroid/view/ViewGroup;
    .restart local v19       #hotseat:Lcom/android/launcher2/Hotseat;
    .restart local v21       #mainAnimatorSet:Landroid/animation/AnimatorSet;
    .restart local v22       #preAnimatorSet:Landroid/animation/AnimatorSet;
    .restart local v24       #v:Landroid/view/View;
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    .line 1537
    .end local v24           #v:Landroid/view/View;
    :cond_13
    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_14

    .line 1538
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_b

    .line 1540
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1541
    if-eqz v14, :cond_b

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-ne v3, v5, :cond_b

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c0037

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v0, v3

    move/from16 v23, v0

    .line 1544
    .restart local v23       #titleBarHeight:F
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    move/from16 v0, v23

    neg-float v10, v0

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_2

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v14, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1547
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1553
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1555
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1562
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    .end local v23           #titleBarHeight:F
    :cond_14
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_15

    .line 1563
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_15

    .line 1568
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeEditMode(Z)V

    .line 1569
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setHomeRemoveMode(Z)V

    .line 1571
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    .line 1573
    if-eqz v14, :cond_15

    .line 1574
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v14, v3, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1575
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v8, v9

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_3

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v14, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1578
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/launcher2/Workspace$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1585
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1587
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    :cond_15
    if-eqz v19, :cond_17

    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1593
    :cond_16
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AllappsIcon;->unsetTrashIcon()V

    .line 1596
    :cond_17
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getTopBar()Landroid/view/View;

    move-result-object v24

    .line 1599
    .restart local v24       #v:Landroid/view/View;
    const-string v3, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/high16 v8, 0x3f80

    aput v8, v5, v6

    move-object/from16 v0, v24

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 1600
    .restart local v15       #a:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0xdc

    invoke-virtual {v15, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1601
    new-instance v3, Lcom/android/launcher2/Workspace$13;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1612
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1614
    .end local v15           #a:Landroid/animation/ObjectAnimator;
    .end local v24           #v:Landroid/view/View;
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->showPageIndicator(Z)V

    goto/16 :goto_2

    .line 1625
    :cond_19
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-eq v4, v3, :cond_1a

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_e

    :cond_1a
    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 1627
    const v3, 0x7f050017

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/Workspace;->loadAnimationOnThis(I)Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1630
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0a0010

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    goto/16 :goto_4

    .restart local v2       #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    .restart local v17       #duration:I
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v25       #zoomAnim:Landroid/animation/ObjectAnimator;
    :cond_1c
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    .line 1648
    invoke-interface/range {v2 .. v7}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectPreWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto/16 :goto_5

    .line 1652
    .end local v2           #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    :cond_1d
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1e
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace$StateAnimatorProvider;

    .line 1655
    .restart local v2       #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v3, :cond_1f

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1f

    if-nez p4, :cond_1f

    .line 1658
    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v3, :cond_1e

    sget-object v3, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_1e

    .line 1659
    sget-object v11, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v12, p4

    invoke-interface/range {v8 .. v13}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_1f
    move-object v8, v2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    .line 1662
    invoke-interface/range {v8 .. v13}, Lcom/android/launcher2/Workspace$StateAnimatorProvider;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 1666
    .end local v2           #provider:Lcom/android/launcher2/Workspace$StateAnimatorProvider;
    :cond_20
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1667
    move/from16 v0, v17

    int-to-long v5, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1668
    move/from16 v0, p3

    int-to-long v5, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1670
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1671
    .local v16, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mChangeStateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1678
    if-nez p2, :cond_0

    .line 1679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto/16 :goto_0

    .line 1491
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1508
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1544
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1575
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public closeFolder()V
    .locals 2

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->disableChildBadges()V

    .line 2390
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->close(Z)V

    .line 2391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    .line 2393
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 984
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 985
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 988
    :cond_0
    return-void
.end method

.method createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1790
    .local v5, outlineColor:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1791
    .local v6, width:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1792
    .local v3, height:I
    instance-of v7, p1, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 1793
    check-cast v4, Landroid/widget/ImageView;

    .line 1794
    .local v4, image:Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v7}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1795
    .local v2, dragOutline:Landroid/graphics/Bitmap;
    int-to-float v7, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    int-to-float v8, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1796
    .local v1, d:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v6, v7

    .line 1797
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v3, v7

    .line 1800
    .end local v1           #d:F
    .end local v2           #dragOutline:Landroid/graphics/Bitmap;
    .end local v4           #image:Landroid/widget/ImageView;
    :cond_0
    add-int v7, v6, p3

    add-int v8, v3, p3

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1803
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1804
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1805
    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v7, v0, p2, v5, v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1806
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1807
    return-object v0
.end method

.method createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "spanX"
    .parameter "spanY"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1838
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1839
    .local v6, r:Landroid/content/res/Resources;
    const v9, 0x106000b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1840
    .local v5, outlineColor:I
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    move/from16 v0, p2

    invoke-virtual {v9, p1, v0}, Lcom/android/launcher2/CellLayout;->spanToPixel(II)[I

    move-result-object v8

    .line 1841
    .local v8, size:[I
    const/4 v9, 0x0

    aget v3, v8, v9

    .line 1842
    .local v3, iconWidth:I
    const/4 v9, 0x1

    aget v2, v8, v9

    .line 1843
    .local v2, iconHeight:I
    const/4 v7, 0x2

    .line 1844
    .local v7, rectRadius:I
    div-int/lit8 v4, p4, 0x2

    .line 1845
    .local v4, inset:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1848
    .local v1, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1849
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v10, v4

    int-to-float v11, v4

    sub-int v12, v3, v4

    int-to-float v12, v12

    sub-int v13, v2, v4

    int-to-float v13, v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v10, 0x4000

    const/high16 v11, 0x4000

    iget-object v12, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1851
    sget-object v9, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object/from16 v0, p3

    invoke-virtual {v9, v1, v0, v5, v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1852
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1853
    return-object v1
.end method

.method createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1834
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 1835
    .local v0, item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(IILandroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const v8, 0x3f060a92

    .line 630
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_2

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 632
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 634
    .local v1, deltaY:F
    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v3, v4

    .line 636
    .local v3, theta:F
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 640
    :cond_1
    const v4, 0x3f860a92

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 657
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v3           #theta:F
    :cond_2
    :goto_0
    return-void

    .line 643
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    .restart local v3       #theta:F
    :cond_3
    cmpl-float v4, v3, v8

    if-lez v4, :cond_4

    .line 648
    sub-float/2addr v3, v8

    .line 649
    div-float v4, v3, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 651
    .local v2, extraRatio:F
    const/high16 v4, 0x3f80

    const/high16 v5, 0x4080

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-super {p0, p1, v4}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 654
    .end local v2           #extraRatio:F
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget v0, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->screenScrolled(I)V

    .line 1176
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1177
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-eqz v0, :cond_1

    .line 1179
    :goto_0
    return-void

    .line 1178
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onDrawComplete(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x0

    .line 516
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 5
    .parameter "hostView"
    .parameter "layout"

    .prologue
    .line 1357
    instance-of v2, p2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1359
    const-string v2, "Launcher.StuckInEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterWidgetResizeMode state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    new-instance v1, Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    .line 1361
    .local v1, sizes:Lcom/android/launcher2/WidgetSizes;
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/res/Resources;)V

    .line 1362
    invoke-virtual {v1}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1363
    new-instance v0, Lcom/android/launcher2/Workspace$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    .line 1385
    .local v0, resizeRunnable:Ljava/lang/Runnable;
    new-instance v2, Lcom/android/launcher2/Workspace$8;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1401
    const-string v2, "Launcher.StuckInEdit"

    const-string v3, "enterWidgetResizeMode switching to resize mode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    sget-object v2, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 5

    .prologue
    .line 1407
    const-string v2, "Launcher.StuckInEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitWidgetResizeMode State "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_1

    .line 1413
    :cond_0
    return-void

    .line 1409
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1410
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1411
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getBackgroundDarken()F
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0074

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 253
    if-eqz p1, :cond_3

    .line 254
    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v0, :cond_2

    .line 258
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createWidgetPreviewDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 269
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0

    .line 261
    :cond_2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 265
    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    const/4 v2, 0x0

    .line 1915
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDisplayWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mDisplayHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1916
    return-void
.end method

.method protected getHorizontalVisibilityExtension()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1115
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v0

    .line 1116
    .local v0, fsf:Lcom/android/launcher2/ScalarAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1118
    invoke-virtual {v0}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1120
    :cond_0
    return v1
.end method

.method public getHorizontalWallpaperOffset()F
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method public getIsDragOccuring()Z
    .locals 1

    .prologue
    .line 2600
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    return v0
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 2

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 2

    .prologue
    .line 1972
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher2/Workspace$State;
    .locals 1

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    return-object v0
.end method

.method protected getUnEncumberedPagedViewBounds(Landroid/graphics/Rect;)Z
    .locals 9
    .parameter "aRect"

    .prologue
    const/4 v8, 0x1

    .line 1182
    iget v3, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1183
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1184
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    .line 1185
    .local v2, hs:Lcom/android/launcher2/Hotseat;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1186
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v8, :cond_0

    .line 1187
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1189
    :cond_0
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1190
    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 1193
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeFragment;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v0

    .line 1194
    .local v0, bar:Lcom/android/launcher2/HomeEditBar;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1195
    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getBarPosition()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1203
    :cond_2
    :goto_0
    return v8

    .line 1197
    :pswitch_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeEditBar;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 1195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getVerticalWallpaperOffset()F
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method protected hitsNextPage(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 488
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 481
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getComingPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInResizeMode()Z
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    .line 2569
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v4, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v3, v4, :cond_1

    instance-of v3, p3, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_1

    move-object v2, p3

    .line 2570
    check-cast v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 2571
    .local v2, page:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 2572
    .local v0, localX:F
    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    int-to-float v3, v3

    add-float/2addr v3, p2

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 2573
    .local v1, localY:F
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->isPointInRegion(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2574
    if-eqz p4, :cond_0

    .line 2575
    invoke-virtual {p4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 2577
    :cond_0
    const/4 v3, 0x1

    .line 2580
    .end local v0           #localX:F
    .end local v1           #localY:F
    .end local v2           #page:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher2/SmoothPagedView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v3

    goto :goto_0
.end method

.method launchAllAppsIcon()V
    .locals 2

    .prologue
    .line 2533
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    if-eqz v0, :cond_0

    .line 2535
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getAllAppsIcon()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFragment;->onClickAllAppsButton(Landroid/view/View;)V

    .line 2537
    :cond_0
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 5
    .parameter "v"
    .parameter "xy"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1904
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 1905
    .local v0, cachedInverseMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1906
    aget v1, p2, v3

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    .line 1907
    aget v1, p2, v4

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v4

    .line 1908
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1909
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 2224
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v0

    .line 2225
    .local v0, homeScreenIndex:I
    if-eqz p1, :cond_0

    .line 2226
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2230
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2231
    return-void

    .line 2228
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1128
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1129
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1130
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1131
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1132
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 2249
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2250
    .local v3, tag:Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2275
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 2254
    .restart local p1
    :cond_1
    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 2255
    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 2256
    .local v1, item:Lcom/android/launcher2/BaseItem;
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_2

    .line 2257
    check-cast v1, Lcom/android/launcher2/FolderItem;

    .end local v1           #item:Lcom/android/launcher2/BaseItem;
    check-cast p1, Lcom/android/launcher2/FolderIconView;

    .end local p1
    invoke-direct {p0, v1, p1, v9}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    goto :goto_0

    .line 2258
    .restart local v1       #item:Lcom/android/launcher2/BaseItem;
    .restart local p1
    :cond_2
    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_3

    iget-object v4, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_0

    .line 2261
    :cond_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_4

    .line 2262
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move-object v4, v3

    .line 2266
    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 2267
    .local v0, intent:Landroid/content/Intent;
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 2268
    .local v2, pos:[I
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2269
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v7

    aget v6, v2, v9

    aget v7, v2, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    aget v8, v2, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2271
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher2/HomeFragment;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 30
    .parameter "newConfig"

    .prologue
    .line 2606
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeFragment;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v11

    .line 2608
    .local v11, dragLayer:Lcom/android/launcher2/DragLayer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v13

    .line 2609
    .local v13, hotSeat:Lcom/android/launcher2/Hotseat;
    if-eqz v13, :cond_2

    .line 2610
    move-object/from16 v21, v13

    .line 2611
    .local v21, old:Lcom/android/launcher2/Hotseat;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 2612
    invoke-virtual {v11, v13}, Lcom/android/launcher2/DragLayer;->indexOfChild(Landroid/view/View;)I

    move-result v15

    .line 2613
    .local v15, idx:I
    invoke-virtual {v11, v15}, Lcom/android/launcher2/DragLayer;->removeViewAt(I)V

    .line 2614
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v27

    const v28, 0x7f030017

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .end local v13           #hotSeat:Lcom/android/launcher2/Hotseat;
    check-cast v13, Lcom/android/launcher2/Hotseat;

    .line 2615
    .restart local v13       #hotSeat:Lcom/android/launcher2/Hotseat;
    invoke-virtual {v11, v13, v15}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;I)V

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Lcom/android/launcher2/HomeFragment;->setHotseat(Lcom/android/launcher2/Hotseat;)V

    .line 2617
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/Workspace;->addStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V

    .line 2619
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v8

    .line 2622
    .local v8, clc:Lcom/android/launcher2/CellLayoutChildren;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2623
    .local v17, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    .line 2624
    .local v10, count:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v10, :cond_1

    .line 2625
    invoke-virtual {v8, v14}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    .line 2626
    .local v26, v:Landroid/view/View;
    move-object/from16 v0, v26

    instance-of v0, v0, Lcom/android/launcher2/AllappsIcon;

    move/from16 v27, v0

    if-nez v27, :cond_0

    .line 2627
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/HomeItem;

    .line 2628
    .local v16, item:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2624
    .end local v16           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2632
    .end local v26           #v:Landroid/view/View;
    :cond_1
    iget-boolean v0, v13, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 2633
    invoke-virtual {v13}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v28, 0x5

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2637
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v29

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/HomeFragment;->bindItems(Ljava/util/List;II)V

    .line 2638
    iget-object v0, v13, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v27, v0

    const v28, 0x7f0f0019

    invoke-virtual/range {v27 .. v28}, Lcom/android/launcher2/CellLayout;->applyAppIconViewStyles(I)V

    .line 2642
    .end local v8           #clc:Lcom/android/launcher2/CellLayoutChildren;
    .end local v10           #count:I
    .end local v14           #i:I
    .end local v15           #idx:I
    .end local v17           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .end local v21           #old:Lcom/android/launcher2/Hotseat;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeFragment;->setWorkspaceLoading()V

    .line 2644
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 2646
    .local v23, r:Landroid/content/res/Resources;
    const v27, 0x7f0a002a

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 2647
    const v27, 0x7f0a002b

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 2648
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 2650
    const v27, 0x7f0c000f

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mPageSpacingHint:I

    .line 2652
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v27

    sget-object v28, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 2653
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2659
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v24

    .line 2661
    .local v24, screenCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 2662
    .local v9, context:Landroid/content/Context;
    const v27, 0x7f0f0018

    sget-object v28, Landroid/R$styleable;->TextView:[I

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2663
    .local v4, appearance:Landroid/content/res/TypedArray;
    const v27, 0x7f0f0018

    sget-object v28, Landroid/R$styleable;->View:[I

    move/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 2665
    .local v5, appearance2:Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_2
    move/from16 v0, v24

    if-ge v14, v0, :cond_9

    .line 2666
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 2668
    .local v7, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2670
    .local v19, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    const v27, 0x7f0c000e

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2671
    const v27, 0x7f0c000c

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2672
    const v27, 0x7f0c000d

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2673
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2675
    const v27, 0x7f0c0013

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setCellWidth(I)V

    .line 2676
    const v27, 0x7f0c0014

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setCellHeight(I)V

    .line 2677
    const v27, 0x7f0c0015

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setGapX(I)V

    .line 2678
    const v27, 0x7f0c0016

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setGapY(I)V

    .line 2679
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    .line 2681
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v27

    add-int/lit8 v18, v27, -0x1

    .local v18, j:I
    :goto_3
    if-ltz v18, :cond_8

    .line 2682
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 2683
    .local v6, childView:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    .line 2684
    .local v25, tag:Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/launcher2/HomeWidgetItem;

    move/from16 v27, v0

    if-nez v27, :cond_4

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;

    move/from16 v27, v0

    if-eqz v27, :cond_5

    .line 2686
    :cond_4
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->removeViewOnPageAt(I)V

    move-object/from16 v27, v25

    .line 2687
    check-cast v27, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 2688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    move-object/from16 v27, v0

    check-cast v25, Lcom/android/launcher2/HomeItem;

    .end local v25           #tag:Ljava/lang/Object;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2690
    :cond_5
    instance-of v0, v6, Lcom/android/launcher2/AppIconView;

    move/from16 v27, v0

    if-eqz v27, :cond_6

    move-object v12, v6

    .line 2691
    check-cast v12, Lcom/android/launcher2/AppIconView;

    .line 2692
    .local v12, grandChild:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v12, v4, v5}, Lcom/android/launcher2/AppIconView;->applyStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 2681
    .end local v12           #grandChild:Lcom/android/launcher2/AppIconView;
    :cond_6
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 2635
    .end local v4           #appearance:Landroid/content/res/TypedArray;
    .end local v5           #appearance2:Landroid/content/res/TypedArray;
    .end local v6           #childView:Landroid/view/View;
    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    .end local v9           #context:Landroid/content/Context;
    .end local v18           #j:I
    .end local v19           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v23           #r:Landroid/content/res/Resources;
    .end local v24           #screenCount:I
    .restart local v8       #clc:Lcom/android/launcher2/CellLayoutChildren;
    .restart local v10       #count:I
    .restart local v15       #idx:I
    .restart local v17       #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .restart local v21       #old:Lcom/android/launcher2/Hotseat;
    :cond_7
    invoke-virtual {v13}, Lcom/android/launcher2/Hotseat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v28, 0x50

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 2665
    .end local v8           #clc:Lcom/android/launcher2/CellLayoutChildren;
    .end local v10           #count:I
    .end local v15           #idx:I
    .end local v17           #items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .end local v21           #old:Lcom/android/launcher2/Hotseat;
    .restart local v4       #appearance:Landroid/content/res/TypedArray;
    .restart local v5       #appearance2:Landroid/content/res/TypedArray;
    .restart local v7       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v9       #context:Landroid/content/Context;
    .restart local v18       #j:I
    .restart local v19       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v23       #r:Landroid/content/res/Resources;
    .restart local v24       #screenCount:I
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 2697
    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    .end local v18           #j:I
    .end local v19           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2698
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 2700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v22

    .line 2701
    .local v22, qvw:Lcom/android/launcher2/QuickViewWorkspace;
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    .line 2702
    if-eqz v13, :cond_a

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 2703
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Lcom/android/launcher2/Hotseat;->setAlpha(F)V

    .line 2704
    const/16 v27, 0x4

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 2707
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeFragment;->getEditBar()Lcom/android/launcher2/HomeEditBar;

    move-result-object v20

    .line 2708
    .local v20, mEditBar:Lcom/android/launcher2/HomeEditBar;
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeEditBar;->relayoutOnRotation()V

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/HomeFragment;->finishBindingItems()V

    .line 2716
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->handleScrollOnOrientationChange()V

    .line 2717
    const v27, 0x7f0c0018

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    const v28, 0x7f0c0017

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    .line 2719
    return-void

    .line 2713
    :cond_b
    sget-object v27, Lcom/android/launcher2/Workspace$BindWidgetsState;->BIND_CURRENT_PAGE:Lcom/android/launcher2/Workspace$BindWidgetsState;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mBindWidgetsState:Lcom/android/launcher2/Workspace$BindWidgetsState;

    goto :goto_4
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1136
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onDetachedFromWindow()V

    .line 1137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1138
    return-void
.end method

.method public onDragEndedWithItem(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 1327
    const-string v0, "Launcher.StuckInEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEndedWithItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 1330
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v0, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1332
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 1333
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1334
    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1336
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_3

    .line 1337
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_5

    .line 1339
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1340
    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDragFromMenu:Z

    if-eqz v0, :cond_3

    .line 1341
    :cond_2
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    .line 1351
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/HomeFragment;->setCurrentDragItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    .line 1343
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1344
    sget-object v0, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_1

    .line 1348
    :cond_5
    sget-object v0, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->changeState(Lcom/android/launcher2/Workspace$State;)V

    goto :goto_1
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1293
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-eqz v0, :cond_1

    .line 1319
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    if-eqz p1, :cond_0

    .line 1295
    const-string v0, "Launcher.StuckInEdit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStartedWithItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    new-instance v0, Lcom/android/launcher2/Workspace$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1317
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    .line 1318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 1164
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-nez v0, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1167
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1168
    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 1978
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_1

    .line 1979
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2019
    :cond_0
    :goto_0
    return v3

    .line 1983
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->onEnterScrollArea(III)Z

    .line 1985
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1986
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1987
    .local v2, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 1988
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1993
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/launcher2/Workspace;->setScrollDirection(I)V

    .line 1995
    const/4 v3, 0x0

    .line 1996
    .local v3, result:Z
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v4, :cond_0

    .line 1997
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez p3, :cond_5

    move v4, v5

    :goto_1
    add-int v1, v7, v4

    .line 1998
    .local v1, page:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1999
    if-ne v1, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 2002
    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2004
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 2006
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_4

    .line 2007
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2009
    :cond_4
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2010
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2014
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2015
    iput-boolean v6, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 2016
    const/4 v3, 0x1

    goto :goto_0

    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    .end local v1           #page:I
    :cond_5
    move v4, v6

    .line 1997
    goto :goto_1

    .line 2000
    .restart local v1       #page:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x0

    goto :goto_2
.end method

.method public onExitScrollArea()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2034
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onExitScrollArea()V

    .line 2035
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_1

    .line 2036
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2039
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2040
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2044
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 2046
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 2048
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 548
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_1

    move v3, v5

    .line 621
    :cond_0
    :goto_0
    return v3

    .line 551
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mHideItems:Z

    if-eqz v4, :cond_2

    move v3, v5

    .line 552
    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 616
    :cond_3
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 617
    .local v3, r:Z
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mOldState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 618
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setAllowLongPress(Z)V

    .line 619
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelLongPress()V

    goto :goto_0

    .line 556
    .end local v3           #r:Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    .line 558
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    .line 562
    :pswitch_2
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v4, :cond_4

    .line 563
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v4

    if-nez v4, :cond_4

    .line 564
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 567
    :cond_4
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto :goto_1

    .line 570
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 573
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    if-eqz v4, :cond_3

    .line 574
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 577
    iget v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v4, :cond_5

    .line 578
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->snapToDestination()V

    .line 580
    :cond_5
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v4

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 586
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 587
    .local v1, dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 588
    .local v0, dx:I
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMovePinchStart:I

    mul-int v6, v1, v1

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    sub-int v2, v4, v6

    .line 590
    .local v2, pinchDelta:I
    const/16 v4, 0x2710

    if-le v2, v4, :cond_3

    .line 591
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 592
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher2/HomeFragment;->openQuickViewWorkspace(Landroid/os/Bundle;Z)V

    .line 593
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    goto/16 :goto_0

    .line 600
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v2           #pinchDelta:I
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-gt v4, v7, :cond_3

    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    goto/16 :goto_1

    .line 604
    :pswitch_5
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mMultiTouchUsed:Z

    .line 605
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v1, v4

    .line 607
    .restart local v1       #dy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v0, v4

    .line 609
    .restart local v0       #dx:I
    mul-int v4, v1, v1

    mul-int v6, v0, v0

    add-int/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/Workspace;->mMovePinchStart:I

    .line 611
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    goto/16 :goto_1

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1145
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1149
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    if-eqz v0, :cond_1

    .line 1150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mSwitchStateAfterFirstLayout:Z

    .line 1153
    new-instance v0, Lcom/android/launcher2/Workspace$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1160
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .parameter "v"

    .prologue
    .line 2486
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onLongClick(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2487
    const/4 v11, 0x1

    .line 2528
    :goto_0
    return v11

    .line 2493
    :cond_0
    instance-of v11, p1, Lcom/android/launcher2/CellLayout;

    if-eqz v11, :cond_2

    .line 2496
    const/4 v11, 0x2

    new-array v0, v11, [I

    .line 2497
    .local v0, cellLayoutXY:[I
    const/4 v11, 0x2

    new-array v8, v11, [I

    .line 2498
    .local v8, pagedViewXY:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2499
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getLocationInWindow([I)V

    .line 2501
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    float-to-int v11, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x0

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int v9, v11, v12

    .line 2502
    .local v9, x:I
    iget v11, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    float-to-int v11, v11

    const/4 v12, 0x1

    aget v12, v8, v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v0, v12

    sub-int/2addr v11, v12

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int v10, v11, v12

    .local v10, y:I
    move-object v4, p1

    .line 2504
    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 2506
    .local v4, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v5

    .line 2507
    .local v5, cw:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v3

    .line 2508
    .local v3, ch:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v7

    .line 2509
    .local v7, gw:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v6

    .line 2511
    .local v6, gh:I
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->recalculateOccupiedCells()V

    .line 2513
    add-int v11, v5, v7

    div-int v1, v9, v11

    .line 2514
    .local v1, cellX:I
    add-int v11, v3, v6

    div-int v2, v10, v11

    .line 2519
    .local v2, cellY:I
    add-int v11, v5, v7

    mul-int/2addr v11, v1

    div-int/lit8 v12, v7, 0x2

    sub-int/2addr v11, v12

    sub-int v11, v9, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int v12, v3, v6

    mul-int/2addr v12, v2

    div-int/lit8 v13, v6, 0x2

    sub-int/2addr v12, v13

    sub-int v12, v10, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v11, v12, :cond_1

    .line 2520
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v4, v11, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2521
    const/4 v11, 0x1

    goto :goto_0

    .line 2523
    :cond_1
    invoke-virtual {v4, v1, v2}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v4, v1, v11}, Lcom/android/launcher2/CellLayout;->isOccupiedNoThrow(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2524
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2528
    .end local v0           #cellLayoutXY:[I
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    .end local v3           #ch:I
    .end local v4           #cl:Lcom/android/launcher2/CellLayout;
    .end local v5           #cw:I
    .end local v6           #gh:I
    .end local v7           #gw:I
    .end local v8           #pagedViewXY:[I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 3

    .prologue
    .line 662
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 663
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->pauseScreen(I)V

    .line 664
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 665
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Hotseat;->setLayerType(ILandroid/graphics/Paint;)V

    .line 668
    :cond_0
    return-void

    .line 664
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 2

    .prologue
    .line 672
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 673
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 675
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->resumeScreen(I)V

    .line 679
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 680
    new-instance v1, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v0

    .line 689
    .local v0, qw:Lcom/android/launcher2/QuickViewWorkspace;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 693
    :cond_2
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1209
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1210
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1212
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1939
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1940
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;I)V

    .line 1941
    return-void
.end method

.method public onScrollComplete()V
    .locals 0

    .prologue
    .line 2028
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onScrollComplete()V

    .line 2029
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->onExitScrollArea()V

    .line 2030
    return-void
.end method

.method public onStop()V
    .locals 8

    .prologue
    .line 2465
    const-string v6, "Launcher.Workspace"

    const-string v7, "onStop"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onStop()V

    .line 2469
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 2470
    .local v5, screenCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 2471
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 2473
    .local v4, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2474
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 2475
    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 2476
    .local v2, item:Ljava/lang/Object;
    instance-of v6, v2, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v6, :cond_0

    .line 2477
    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    .end local v2           #item:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 2474
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2470
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2481
    .end local v0           #count:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 539
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 543
    :goto_0
    return v0

    .line 525
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    .line 543
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 528
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-eqz v0, :cond_0

    .line 529
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    move v0, v1

    .line 530
    goto :goto_0

    .line 534
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInterceptedTouchEvent:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAddToScreenDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v1

    .line 535
    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 325
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onViewAdded(Landroid/view/View;)V

    .line 326
    instance-of v1, p1, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v1, :cond_0

    .line 327
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayoutWithResizableWidgets children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 329
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 330
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 331
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 334
    sget-boolean v1, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v1, :cond_3

    .line 335
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v1

    if-nez v1, :cond_1

    .line 336
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v1}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 344
    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_2
    return-void

    .line 338
    :cond_3
    sget-object v1, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v1}, Lcom/android/launcher2/PanelDrawer;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->onWindowVisibilityChanged(I)V

    .line 508
    return-void
.end method

.method pauseScreen(I)V
    .locals 8
    .parameter "which"

    .prologue
    .line 2407
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-lt p1, v5, :cond_2

    .line 2408
    :cond_0
    const-string v5, "Launcher.Workspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: trying to pause screen on invalid page index. passed in page number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", children count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :cond_1
    return-void

    .line 2413
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 2414
    .local v0, cl:Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v0, :cond_1

    .line 2416
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 2417
    .local v2, itemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2418
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2419
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 2420
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v5, :cond_3

    .line 2421
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    check-cast v3, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .end local v3           #tag:Ljava/lang/Object;
    invoke-virtual {v6, v5, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 2417
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public releaseShadows()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2540
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 2541
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 2542
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2543
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 2545
    .local v5, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 2546
    .local v0, ccout:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 2547
    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2548
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Lcom/android/launcher2/AppIconView;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 2549
    check-cast v7, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v7, v8}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 2550
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    iput-object v8, v7, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    .line 2546
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2541
    .end local v6           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2554
    .end local v0           #ccout:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v4           #j:I
    .end local v5           #l:Lcom/android/launcher2/CellLayoutChildren;
    :cond_2
    return-void
.end method

.method removeItems(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2097
    .local p1, removed:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2098
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeItem;

    .line 2099
    .local v8, item:Lcom/android/launcher2/HomeItem;
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2102
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/android/launcher2/HomeItem;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2103
    .local v2, viewsToRemove:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v6

    .line 2104
    .local v6, cellLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 2105
    .local v5, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 2108
    .local v3, layout:Landroid/view/ViewGroup;
    new-instance v0, Lcom/android/launcher2/Workspace$14;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace$14;-><init>(Lcom/android/launcher2/Workspace;Ljava/util/List;Landroid/view/ViewGroup;Ljava/util/List;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2163
    .end local v3           #layout:Landroid/view/ViewGroup;
    .end local v5           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public removeStateAnimatorProvider(Lcom/android/launcher2/Workspace$StateAnimatorProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mStateAnimatorProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1420
    return-void
.end method

.method public restoreOpenFolder(Lcom/android/launcher2/HomeFolderItem;)Z
    .locals 2
    .parameter "openFolder"

    .prologue
    const/4 v1, 0x0

    .line 2455
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->getViewForTag(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 2456
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2457
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0           #v:Landroid/view/View;
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->handleFolderClick(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    .line 2458
    const/4 v1, 0x1

    .line 2460
    :cond_0
    return v1
.end method

.method resumeScreen(I)V
    .locals 8
    .parameter "which"

    .prologue
    .line 2428
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2429
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    if-nez v0, :cond_1

    .line 2442
    :cond_0
    return-void

    .line 2430
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 2431
    .local v1, cl:Lcom/android/launcher2/CellLayoutChildren;
    if-eqz v1, :cond_0

    .line 2433
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2434
    .local v3, itemCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2435
    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2436
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 2437
    .local v4, tag:Ljava/lang/Object;
    instance-of v6, v4, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v6, :cond_2

    .line 2438
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    check-cast v4, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-virtual {v7, v6, v4}, Lcom/android/launcher2/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 2434
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method rotateFolder()V
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 2585
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->handleOrientationChange()V

    .line 2587
    :cond_0
    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1945
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 1946
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 1948
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1949
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 1950
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 1952
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1956
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 1957
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 1959
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1960
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 1961
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 1963
    :cond_1
    return-void
.end method

.method public sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "provider"
    .parameter "appWidgetId"

    .prologue
    .line 2445
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2446
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2447
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2448
    const-string v1, "widgetspanx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2449
    const-string v1, "widgetspany"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2450
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2451
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 2452
    return-void
.end method

.method setAllEmptyMessageVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 2591
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 2592
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2593
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2594
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/launcher2/WorkspacePages;->pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setEmptyMessageVisibility(I)V

    .line 2592
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2594
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 2596
    .end local v0           #cell:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public setBackgroundDarken(F)V
    .locals 2
    .parameter "darken"

    .prologue
    .line 1002
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    .line 1003
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getDarkenView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getDarkenView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1005
    :cond_0
    return-void
.end method

.method public setDragOutline(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1323
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 778
    return-void
.end method

.method public setPageZoom(F)V
    .locals 5
    .parameter "zoom"

    .prologue
    const/high16 v4, 0x3f80

    .line 2558
    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 2559
    iget v2, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/launcher2/Workspace;->mEditModeShrinkFactor:F

    sub-float v3, v4, v3

    div-float v0, v2, v3

    .line 2560
    .local v0, p:F
    iget v2, p0, Lcom/android/launcher2/Workspace;->mPageIndicatorTopShrunken:I

    int-to-float v2, v2

    sub-float v3, v4, v0

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorTop:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 2561
    .local v1, top:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setPageIndicatorTop(I)V

    .line 2563
    .end local v0           #p:F
    .end local v1           #top:I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->setPageZoom(F)V

    .line 2564
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    .line 772
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 5

    .prologue
    .line 734
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 735
    .local v2, size:Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/Utilities;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 736
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 737
    .local v0, maxDim:I
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 741
    .local v1, minDim:I
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v3, :cond_0

    .line 742
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 743
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 762
    :goto_0
    new-instance v3, Lcom/android/launcher2/Workspace$4;

    const-string v4, "setWallpaperDimension"

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$4;->start()V

    .line 768
    return-void

    .line 755
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 756
    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 757
    int-to-float v3, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenHeightRatio(II)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0

    .line 759
    :cond_1
    int-to-float v3, v1

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 760
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method setup(Lcom/android/launcher2/HomeFragment;)V
    .locals 1
    .parameter "home"

    .prologue
    .line 1927
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 1929
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 1933
    sget-object v0, Lcom/android/launcher2/PagedView$LayerOptions;->DEFAULT:Lcom/android/launcher2/PagedView$LayerOptions;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Lcom/android/launcher2/PagedView$LayerOptions;)V

    .line 1934
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 1935
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 994
    :cond_0
    return-void
.end method

.method protected snapToPage(III)V
    .locals 1
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 866
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    .line 867
    return-void
.end method

.method startDrag(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 1861
    if-nez p1, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1876
    :cond_2
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    .line 1879
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v0, :cond_3

    .line 1880
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungAppWidgetInfo;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->pauseWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    .line 1883
    :cond_3
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    const-wide/16 v1, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 2239
    return-void
.end method

.method public syncPages()V
    .locals 0

    .prologue
    .line 2235
    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 15
    .parameter "page"
    .parameter "scrollProgress"

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getFastScrollFactor()Lcom/android/launcher2/ScalarAnimator;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    .line 1025
    .local v3, factor:F
    const/high16 v12, 0x3f80

    cmpl-float v12, p2, v12

    if-gtz v12, :cond_0

    const/high16 v12, -0x4080

    cmpg-float v12, p2, v12

    if-gez v12, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget v12, p0, Lcom/android/launcher2/PagedView;->mPageZoom:F

    const v13, 0x3f4ccccd

    invoke-static {v12, v13, v3}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v11

    .line 1030
    .local v11, zoom:F
    const/high16 v12, 0x3f80

    const v13, 0x3f4ccccd

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v12

    mul-float/2addr v11, v12

    .line 1032
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1033
    .local v5, i:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v9

    .line 1036
    .local v9, scrollAlpha:F
    const/high16 v12, 0x3f80

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float/2addr v12, v13

    const v13, 0x3f333333

    mul-float/2addr v12, v13

    const v13, 0x3e99999a

    add-float v4, v12, v13

    .local v4, fastScrollBgAlpha:F
    move-object/from16 v2, p1

    .line 1038
    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1042
    .local v2, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->fastInvalidate()V

    .line 1044
    const/4 v1, 0x0

    .line 1048
    .local v1, blendBackground:Z
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v12

    or-int/2addr v1, v12

    .line 1052
    const v12, 0x3e4ccccd

    cmpl-float v12, v3, v12

    if-lez v12, :cond_2

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const v13, 0x3f19999a

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_2

    .line 1053
    const/4 v1, 0x1

    .line 1056
    :cond_2
    sget-boolean v12, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v12, :cond_4

    .line 1057
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v12

    if-eqz v12, :cond_3

    .line 1058
    const/high16 v12, 0x3f80

    iget v13, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v2, v12, v13, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    .line 1070
    :goto_1
    const/high16 v12, 0x3f80

    const/high16 v13, 0x3f80

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sub-float/2addr v13, v14

    const v14, 0x3e4ccccd

    add-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1072
    .local v0, alpha:F
    const/high16 v12, 0x41a0

    const/high16 v13, 0x4170

    invoke-static {v12, v13, v3}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v12

    mul-float v8, v12, p2

    .line 1074
    .local v8, rotation:F
    mul-float v12, v3, p2

    iget v13, p0, Lcom/android/launcher2/Workspace;->mFastScrollDrawInward:F

    mul-float/2addr v12, v13

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float v10, v12, v13

    .line 1075
    .local v10, translationX:F
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v7

    .line 1076
    .local v7, pageWidth:I
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v6

    .line 1078
    .local v6, pageHeight:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isLoopingEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1079
    int-to-float v12, v6

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-virtual {v2, v12}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1080
    int-to-float v12, v7

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-virtual {v2, v12}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1104
    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayout;->setFastAlpha(F)V

    .line 1105
    invoke-virtual {v2, v11}, Lcom/android/launcher2/CellLayout;->setFastScaleY(F)V

    .line 1106
    invoke-virtual {v2, v11}, Lcom/android/launcher2/CellLayout;->setFastScaleX(F)V

    .line 1108
    invoke-virtual {v2, v10}, Lcom/android/launcher2/CellLayout;->setFastTranslationX(F)V

    .line 1110
    invoke-virtual {v2, v8}, Lcom/android/launcher2/CellLayout;->setFastRotationY(F)V

    goto/16 :goto_0

    .line 1061
    .end local v0           #alpha:F
    .end local v6           #pageHeight:I
    .end local v7           #pageWidth:I
    .end local v8           #rotation:F
    .end local v10           #translationX:F
    :cond_3
    invoke-static {v9, v4, v3}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v12

    const/high16 v13, 0x3f80

    iget v14, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    invoke-static {v12, v13, v14}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v12

    iget v13, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v2, v12, v13, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    goto :goto_1

    .line 1065
    :cond_4
    invoke-static {v9, v4, v3}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v12

    const/high16 v13, 0x3f80

    iget v14, p0, Lcom/android/launcher2/PagedView;->mPageBackgroundAlpha:F

    invoke-static {v12, v13, v14}, Lcom/android/launcher2/Workspace;->mix(FFF)F

    move-result v12

    iget v13, p0, Lcom/android/launcher2/Workspace;->mBackgroundDarken:F

    invoke-virtual {v2, v12, v13, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(FFZ)V

    goto :goto_1

    .line 1082
    .restart local v0       #alpha:F
    .restart local v6       #pageHeight:I
    .restart local v7       #pageWidth:I
    .restart local v8       #rotation:F
    .restart local v10       #translationX:F
    :cond_5
    if-nez v5, :cond_6

    const/4 v12, 0x0

    cmpg-float v12, p2, v12

    if-gez v12, :cond_6

    .line 1084
    sget v12, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    int-to-float v13, v7

    mul-float/2addr v12, v13

    invoke-virtual {v2, v12}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1085
    sget v12, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    neg-float v12, v12

    mul-float v12, v12, p2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v13

    div-float v8, v12, v13

    .line 1087
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v12

    int-to-float v10, v12

    .line 1088
    const/high16 v11, 0x3f80

    .line 1089
    const/high16 v0, 0x3f80

    goto :goto_2

    .line 1090
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v5, v12, :cond_7

    const/4 v12, 0x0

    cmpl-float v12, p2, v12

    if-lez v12, :cond_7

    .line 1092
    const/high16 v12, 0x3f80

    sget v13, Lcom/android/launcher2/Workspace;->TRANSITION_PIVOT:F

    sub-float/2addr v12, v13

    int-to-float v13, v7

    mul-float/2addr v12, v13

    invoke-virtual {v2, v12}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 1093
    sget v12, Lcom/android/launcher2/Workspace;->TRANSITION_MAX_ROTATION:F

    neg-float v12, v12

    mul-float v12, v12, p2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v13

    div-float v8, v12, v13

    .line 1095
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v12

    iget v13, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v12, v13

    int-to-float v10, v12

    .line 1096
    const/high16 v11, 0x3f80

    .line 1097
    const/high16 v0, 0x3f80

    goto/16 :goto_2

    .line 1099
    :cond_7
    int-to-float v12, v6

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-virtual {v2, v12}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    .line 1100
    int-to-float v12, v7

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-virtual {v2, v12}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    goto/16 :goto_2
.end method

.method updateShortcuts(Ljava/util/List;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2166
    .local p1, apps:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v5

    .line 2167
    .local v5, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayoutChildren;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayoutChildren;

    .line 2168
    .local v12, layout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 2169
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    if-ge v11, v3, :cond_0

    .line 2170
    invoke-virtual {v12, v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 2171
    .local v15, view:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 2172
    .local v14, tag:Ljava/lang/Object;
    instance-of v0, v14, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object v10, v14

    .line 2173
    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    .line 2174
    .local v10, info:Lcom/android/launcher2/HomeShortcutItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 2175
    .local v1, app:Lcom/android/launcher2/HomeItem;
    if-ne v1, v10, :cond_1

    .line 2176
    iget-object v0, v10, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 2179
    :cond_2
    iget-object v0, v10, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 2180
    const-string v16, ""

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    :cond_3
    move-object/from16 v16, v15

    .line 2182
    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    .line 2183
    .local v13, oldTitle:Ljava/lang/CharSequence;
    if-nez v13, :cond_4

    .line 2184
    const-string v13, ""

    :cond_4
    move-object/from16 v16, v15

    .line 2186
    check-cast v16, Lcom/android/launcher2/AppIconView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/launcher2/AppIconView;->applyFromShortcutInfo(Lcom/android/launcher2/HomeShortcutItem;)V

    move-object/from16 v16, v15

    .line 2187
    check-cast v16, Lcom/android/launcher2/AppIconView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppIconView;->refreshBadge()V

    .line 2188
    iget-object v0, v10, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 2189
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_1

    .line 2193
    .end local v1           #app:Lcom/android/launcher2/HomeItem;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v13           #oldTitle:Ljava/lang/CharSequence;
    :cond_5
    instance-of v0, v14, Lcom/android/launcher2/HomeFolderItem;

    move/from16 v16, v0

    if-eqz v16, :cond_a

    move-object v10, v14

    .line 2194
    check-cast v10, Lcom/android/launcher2/HomeFolderItem;

    .line 2195
    .local v10, info:Lcom/android/launcher2/HomeFolderItem;
    const/4 v2, 0x0

    .line 2196
    .local v2, changed:Z
    invoke-virtual {v10}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v6

    .line 2197
    .local v6, folderItemCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v6, :cond_9

    .line 2198
    invoke-virtual {v10, v7}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    .line 2199
    .local v4, childItem:Lcom/android/launcher2/HomeShortcutItem;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 2200
    .restart local v1       #app:Lcom/android/launcher2/HomeItem;
    if-ne v1, v4, :cond_6

    .line 2201
    const/4 v2, 0x1

    .line 2202
    iget-object v0, v4, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2205
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2197
    .end local v1           #app:Lcom/android/launcher2/HomeItem;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2210
    .end local v4           #childItem:Lcom/android/launcher2/HomeShortcutItem;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_9
    if-eqz v2, :cond_a

    move-object/from16 v16, v15

    .line 2211
    check-cast v16, Lcom/android/launcher2/FolderIconView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/FolderIconView;->refreshBadge()V

    .line 2212
    check-cast v15, Lcom/android/launcher2/FolderIconView;

    .end local v15           #view:Landroid/view/View;
    invoke-virtual {v15, v10}, Lcom/android/launcher2/FolderIconView;->setFolderIcon(Lcom/android/launcher2/FolderItem;)Z

    .line 2213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v16

    move-object/from16 v0, v16

    if-ne v0, v10, :cond_a

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 2215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/Folder;->enableChildBadges()V

    .line 2169
    .end local v2           #changed:Z
    .end local v6           #folderItemCount:I
    .end local v7           #i:I
    .end local v10           #info:Lcom/android/launcher2/HomeFolderItem;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 2221
    .end local v3           #childCount:I
    .end local v11           #j:I
    .end local v12           #layout:Lcom/android/launcher2/CellLayoutChildren;
    .end local v14           #tag:Ljava/lang/Object;
    :cond_b
    return-void
.end method

.method protected updateWallpaperOffsets()V
    .locals 6

    .prologue
    .line 841
    const/4 v2, 0x0

    .line 842
    .local v2, updateNow:Z
    const/4 v0, 0x1

    .line 843
    .local v0, keepUpdating:Z
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v3, :cond_3

    .line 844
    const/4 v2, 0x1

    .line 845
    const/4 v0, 0x0

    .line 846
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 847
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 851
    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-boolean v3, v3, Lcom/android/launcher2/Launcher;->mAttached:Z

    if-eqz v3, :cond_1

    .line 852
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v3, :cond_1

    .line 853
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mFixedWallpaper:Z

    if-eqz v3, :cond_4

    const/high16 v1, 0x3f00

    .line 854
    .local v1, offsetX:F
    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 858
    .end local v1           #offsetX:F
    :cond_1
    if-eqz v0, :cond_2

    .line 859
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->fastInvalidate()V

    .line 861
    :cond_2
    return-void

    .line 849
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v2, v0

    goto :goto_0

    .line 853
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v1

    goto :goto_1
.end method
