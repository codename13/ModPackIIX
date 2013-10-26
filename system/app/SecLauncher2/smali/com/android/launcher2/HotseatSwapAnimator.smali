.class Lcom/android/launcher2/HotseatSwapAnimator;
.super Ljava/lang/Object;
.source "HotseatSwapAnimator.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HotseatSwapAnimator$6;,
        Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;
    }
.end annotation


# instance fields
.field final kFolderScaleDuration:I

.field final kFolderScaleFactor:F

.field final kFolderScalingFactor:F

.field final kIconFastFadeInDuration:I

.field final kIconFastFadeOutDuration:I

.field final kIconSlowFadeInDuration:I

.field final kIconSlowFadeOutDuration:I

.field private mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

.field private final mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private final mDragCell:[I

.field private mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

.field private mDragSourceFolder:Lcom/android/launcher2/Folder;

.field private mDropped:Z

.field private mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

.field private final mHotseat:Lcom/android/launcher2/Hotseat;

.field private mHotseatSwapIcon:Landroid/view/View;

.field private final mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLayout:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)V
    .locals 3
    .parameter "hotseat"
    .parameter "layout"

    .prologue
    const/16 v2, 0x1f4

    const/16 v1, 0x64

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 109
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconFastFadeInDuration:I

    .line 110
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconFastFadeOutDuration:I

    .line 111
    iput v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconSlowFadeInDuration:I

    .line 112
    iput v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kIconSlowFadeOutDuration:I

    .line 113
    iput v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kFolderScaleDuration:I

    .line 114
    const v0, 0x3fb33333

    iput v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kFolderScaleFactor:F

    .line 115
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->kFolderScalingFactor:F

    .line 33
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseat:Lcom/android/launcher2/Hotseat;

    .line 34
    iput-object p2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 35
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 36
    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/HotseatSwapAnimator;)Lcom/android/launcher2/CellLayoutChildren;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    return-object v0
.end method

.method private animateMoveFade(Lcom/android/launcher2/DragState;)V
    .locals 13
    .parameter "dragState"

    .prologue
    .line 437
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->getWorkspaceParent(Landroid/view/View;)Lcom/android/launcher2/Workspace;

    move-result-object v12

    .line 440
    .local v12, ws:Lcom/android/launcher2/Workspace;
    if-eqz v12, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    .line 446
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-nez v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 449
    .local v0, overlay:Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v1, v1, v5

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 451
    .local v2, b:Landroid/graphics/Bitmap;
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 452
    .local v3, from:[I
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v4

    .line 453
    .local v4, to:[I
    const v9, 0x3f4ccccd

    .line 454
    .local v9, pageScale:F
    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 456
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 459
    .local v8, page:Landroid/view/View;
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v9

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    aget v6, v4, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v10, v1, v5

    .line 460
    .local v10, pageScaleDx:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v9

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v4, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v11, v1, v5

    .line 461
    .local v11, pageScaleDy:F
    const/4 v1, 0x0

    aget v5, v4, v1

    int-to-float v5, v5

    add-float/2addr v5, v10

    float-to-int v5, v5

    aput v5, v4, v1

    .line 462
    const/4 v1, 0x1

    aget v5, v4, v1

    int-to-float v5, v5

    add-float/2addr v5, v11

    float-to-int v5, v5

    aput v5, v4, v1

    .line 464
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v1, :cond_2

    .line 465
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "We already have an mAnimInfo!"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_2
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    const/4 v5, 0x1

    const/16 v6, 0x140

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer;->animateIcon(Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 468
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 469
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    goto/16 :goto_0
.end method

.method private animateOverlayIconBack(Lcom/android/launcher2/DragState;)V
    .locals 16
    .parameter "dragState"

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v13, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v13}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v13, v13, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-nez v13, :cond_2

    .line 352
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 355
    :cond_2
    const/16 v7, 0x78

    .line 356
    .local v7, kFadeOutDuration:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    const-string v14, "alpha"

    const/4 v15, 0x2

    new-array v15, v15, [F

    fill-array-data v15, :array_0

    invoke-static {v13, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 357
    .local v4, fadeAnim:Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v13}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v14}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v15}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13, v14, v15}, Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Landroid/view/View;[I[I)V

    .line 359
    .local v12, overlayFadeAdapter:Lcom/android/launcher2/HotseatSwapAnimator$OverlayFadeAdapter;
    const-wide/16 v13, 0x78

    invoke-virtual {v4, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 360
    invoke-virtual {v4, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v13, :cond_3

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    instance-of v13, v13, Lcom/android/launcher2/FolderIconView;

    if-eqz v13, :cond_3

    const/4 v5, 0x1

    .line 362
    .local v5, isOverFolder:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v13}, Lcom/android/launcher2/AnimationLayer$Anim;->isAnimating()Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v5, :cond_4

    .line 363
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 387
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0

    .line 361
    .end local v5           #isOverFolder:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 366
    .restart local v5       #isOverFolder:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v13}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v14}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    sub-int/2addr v13, v14

    int-to-float v2, v13

    .line 367
    .local v2, dx:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v13}, Lcom/android/launcher2/AnimationLayer$Anim;->getTo()[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v14}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    int-to-float v3, v13

    .line 368
    .local v3, dy:F
    mul-float v13, v2, v2

    mul-float v14, v3, v3

    add-float/2addr v13, v14

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v6, v13

    .line 369
    .local v6, kDistance:F
    const v9, 0x3dcccccd

    .line 370
    .local v9, kFadeOutStartFactor:F
    const v13, 0x3dcccccd

    const/high16 v14, 0x428c

    div-float/2addr v14, v6

    add-float v8, v13, v14

    .line 371
    .local v8, kFadeOutEndFactor:F
    const/4 v13, 0x2

    new-array v13, v13, [F

    const/4 v14, 0x0

    const v15, 0x3dcccccd

    aput v15, v13, v14

    const/4 v14, 0x1

    aput v8, v13, v14

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 372
    .local v11, moveAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v13, 0x78

    invoke-virtual {v11, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 373
    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 376
    .local v10, l:Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-static {v4, v11}, Lcom/android/launcher2/AnimationLayer;->createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 377
    .local v1, animator:Landroid/animation/Animator;
    new-instance v13, Lcom/android/launcher2/HotseatSwapAnimator$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v10}, Lcom/android/launcher2/HotseatSwapAnimator$2;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v1, v13}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 385
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 356
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static create(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/HotseatSwapAnimator;
    .locals 1
    .parameter "hotseat"
    .parameter "layout"

    .prologue
    .line 28
    new-instance v0, Lcom/android/launcher2/HotseatSwapAnimator;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/HotseatSwapAnimator;-><init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)V

    .line 29
    .local v0, inst:Lcom/android/launcher2/HotseatSwapAnimator;
    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 30
    return-object v0
.end method

.method private displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V
    .locals 14
    .parameter "dragState"
    .parameter "underView"

    .prologue
    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    .line 474
    .local v3, item:Lcom/android/launcher2/BaseItem;
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 476
    if-eqz v3, :cond_0

    iget-object v10, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 480
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 484
    .local v1, folderView:Landroid/view/View;
    iget-object v10, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v10, v11, :cond_2

    .line 485
    const/high16 v10, 0x3f80

    invoke-direct {p0, v1, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 489
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->getWorkspaceParent(Landroid/view/View;)Lcom/android/launcher2/Workspace;

    move-result-object v9

    .line 490
    .local v9, ws:Lcom/android/launcher2/Workspace;
    if-eqz v9, :cond_0

    .line 493
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 494
    .local v6, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 498
    const v10, 0x3fb33333

    invoke-direct {p0, v1, v10}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 500
    iget-object v10, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v4

    .line 501
    .local v4, l:Lcom/android/launcher2/AnimationLayer;
    iget-object v10, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v1, v10}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(Landroid/view/View;Landroid/graphics/Bitmap;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 502
    iget-object v10, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    .line 505
    .local v2, icon:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 506
    .local v7, sx:F
    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v8

    .line 507
    .local v8, sy:F
    const/high16 v10, 0x3f80

    invoke-virtual {v1, v10}, Landroid/view/View;->setScaleX(F)V

    .line 508
    const/high16 v10, 0x3f80

    invoke-virtual {v1, v10}, Landroid/view/View;->setScaleY(F)V

    .line 509
    iget-object v10, v3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v1, v10}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I

    move-result-object v5

    .line 510
    .local v5, loc:[I
    invoke-virtual {v1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 511
    invoke-virtual {v1, v8}, Landroid/view/View;->setScaleY(F)V

    .line 513
    const/4 v10, 0x0

    aget v10, v5, v10

    int-to-float v10, v10

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 514
    const/4 v10, 0x1

    aget v10, v5, v10

    int-to-float v10, v10

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 515
    const v10, 0x3f4ccccd

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 516
    const v10, 0x3f4ccccd

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 518
    iget-object v10, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/launcher2/AnimationLayer$Anim;->addAlphaAnimator(FFZ)V

    .line 519
    iget-object v10, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v10

    const-wide/16 v11, 0xdc

    invoke-virtual {v10, v11, v12}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 520
    iget-object v10, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v10}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {v10}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0
.end method

.method static fadeAnimate(Landroid/view/View;FI)V
    .locals 3
    .parameter "v"
    .parameter "endAlpha"
    .parameter "duration"

    .prologue
    .line 332
    if-eqz p0, :cond_0

    .line 333
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 334
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HotseatSwapAnimator$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HotseatSwapAnimator$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 342
    :cond_0
    return-void
.end method

.method private fadeOutAndRemoveOverlayIcon(Lcom/android/launcher2/DragState;)V
    .locals 3
    .parameter "dragState"

    .prologue
    const/high16 v1, 0x3f80

    .line 392
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HotseatSwapAnimator$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HotseatSwapAnimator$3;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 409
    :cond_0
    return-void
.end method

.method private getCellLayoutParent(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 623
    if-nez p1, :cond_0

    move-object v0, v1

    .line 631
    :goto_0
    return-object v0

    .line 625
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 626
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 627
    instance-of v2, v0, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_1

    .line 628
    check-cast v0, Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 629
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 631
    goto :goto_0
.end method

.method private getWorkspaceParent(Landroid/view/View;)Lcom/android/launcher2/Workspace;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 611
    if-nez p1, :cond_0

    move-object v0, v1

    .line 619
    :goto_0
    return-object v0

    .line 613
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 614
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 615
    instance-of v2, v0, Lcom/android/launcher2/Workspace;

    if-eqz v2, :cond_1

    .line 616
    check-cast v0, Lcom/android/launcher2/Workspace;

    goto :goto_0

    .line 617
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 619
    goto :goto_0
.end method

.method private handleDragOverViewDrop(Lcom/android/launcher2/DragState;)Z
    .locals 19
    .parameter "dragState"

    .prologue
    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 210
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 213
    .local v2, v:Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 214
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    const/high16 v4, 0x3f80

    const/16 v5, 0xc8

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 215
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 218
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 221
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    const/4 v3, 0x0

    .line 275
    :goto_0
    return v3

    .line 224
    :cond_1
    if-eqz v2, :cond_2

    .line 225
    const/high16 v3, 0x3f80

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 229
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v11

    .line 230
    .local v11, folder:Lcom/android/launcher2/Folder;
    if-eqz v11, :cond_6

    .line 232
    if-eqz v2, :cond_3

    .line 234
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/HomeItem;

    .line 236
    .local v18, tempItem:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_3

    .line 237
    const/4 v3, 0x1

    goto :goto_0

    .line 240
    .end local v18           #tempItem:Lcom/android/launcher2/HomeItem;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->getCellLayoutParent(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 241
    .local v1, folderParent:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->getCellLayoutParent(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v12

    .line 242
    .local v12, hotseatParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 244
    if-eqz v2, :cond_4

    .line 246
    invoke-virtual {v12, v2}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 248
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 249
    .local v16, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 251
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 252
    const/4 v3, 0x1

    move-object/from16 v0, v16

    iput v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/HomeItem;

    .line 255
    .local v13, item1:Lcom/android/launcher2/HomeItem;
    if-eqz v2, :cond_5

    .line 256
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/HomeItem;

    .line 257
    .local v15, itemV:Lcom/android/launcher2/HomeItem;
    iget v3, v13, Lcom/android/launcher2/BaseItem;->mScreen:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayout;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 258
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v5, v13, Lcom/android/launcher2/HomeItem;->container:J

    iget v7, v13, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v8, v13, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v9, v13, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object v4, v15

    invoke-static/range {v3 .. v9}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 262
    .end local v15           #itemV:Lcom/android/launcher2/HomeItem;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, v13}, Lcom/android/launcher2/CellLayout;->createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v10

    .line 263
    .local v10, copyView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/HomeItem;

    .line 264
    .local v14, itemCopy:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v14, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v14, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 266
    const/4 v3, 0x1

    iput v3, v14, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 267
    const/4 v3, 0x1

    iput v3, v14, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseat:Lcom/android/launcher2/Hotseat;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v17

    .line 269
    .local v17, screen:I
    move/from16 v0, v17

    iput v0, v14, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 270
    const-wide/16 v3, -0x65

    iput-wide v3, v14, Lcom/android/launcher2/HomeItem;->container:J

    .line 275
    .end local v1           #folderParent:Lcom/android/launcher2/CellLayout;
    .end local v10           #copyView:Landroid/view/View;
    .end local v12           #hotseatParent:Lcom/android/launcher2/CellLayout;
    .end local v13           #item1:Lcom/android/launcher2/HomeItem;
    .end local v14           #itemCopy:Lcom/android/launcher2/HomeItem;
    .end local v16           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v17           #screen:I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private handleDragOverViewEnded(Lcom/android/launcher2/DragState;)V
    .locals 6
    .parameter "dragState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 279
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 282
    .local v0, overlay:Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-boolean v1, v1, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    if-nez v1, :cond_3

    .line 284
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 287
    :cond_0
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 289
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 293
    :cond_1
    if-eqz v0, :cond_2

    .line 294
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 295
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 300
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 301
    iput-object v4, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragSourceFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_4

    .line 307
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragSourceFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 308
    iput-object v4, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragSourceFolder:Lcom/android/launcher2/Folder;

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_5

    .line 313
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v5, v1, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 314
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    const/16 v2, 0xc8

    invoke-static {v1, v3, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 315
    iput-object v4, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    .line 319
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 321
    iput-boolean v5, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDropped:Z

    .line 322
    return-void
.end method

.method private handleDragOverViewExit(Lcom/android/launcher2/DragState;)V
    .locals 4
    .parameter "dragState"

    .prologue
    const/high16 v3, 0x3f80

    .line 195
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    const/16 v2, 0x1f4

    invoke-static {v1, v3, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 198
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 199
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 200
    .local v0, folder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 203
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 205
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 206
    return-void
.end method

.method private handleDragOverViewMove(Lcom/android/launcher2/DragState;)V
    .locals 11
    .parameter "dragState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x1f4

    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    .line 120
    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v4, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v4, v4, v10

    iget-object v5, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 121
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 122
    :cond_0
    const/4 v2, 0x0

    .line 126
    :cond_1
    if-eqz v2, :cond_3

    instance-of v3, v2, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 127
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 128
    .local v0, fiv:Lcom/android/launcher2/FolderIconView;
    iput-boolean v6, v0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 129
    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v10, v3, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 132
    :cond_2
    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIconView;

    .line 133
    invoke-direct {p0, v6}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 137
    .end local v0           #fiv:Lcom/android/launcher2/FolderIconView;
    :cond_3
    if-nez v2, :cond_7

    .line 138
    iget-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 140
    iget-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-static {v3, v7, v8}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 141
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 142
    .local v1, folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_4

    .line 143
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    .line 147
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/HotseatSwapAnimator;->removeFolderOverlay()V

    .line 149
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    :cond_5
    invoke-direct {p0, v6}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 191
    :cond_6
    :goto_0
    iput-object v2, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    .line 192
    return-void

    .line 154
    :cond_7
    iget-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v3, :cond_9

    .line 156
    invoke-direct {p0, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8

    instance-of v3, v2, Lcom/android/launcher2/FolderIconView;

    if-nez v3, :cond_8

    .line 157
    invoke-static {v2, v9, v8}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 158
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    .line 160
    :cond_8
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 161
    .restart local v1       #folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_6

    .line 162
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    goto :goto_0

    .line 166
    .end local v1           #folder:Lcom/android/launcher2/Folder;
    :cond_9
    iget-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eq v3, v2, :cond_6

    .line 167
    invoke-direct {p0, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_c

    instance-of v3, v2, Lcom/android/launcher2/FolderIconView;

    if-nez v3, :cond_c

    .line 169
    invoke-static {v2, v9, v8}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 170
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    .line 177
    :cond_a
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 187
    :cond_b
    :goto_2
    iget-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-static {v3, v7, v8}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 188
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->displaySwapItemOverFolder(Lcom/android/launcher2/DragState;Landroid/view/View;)V

    goto :goto_0

    .line 172
    :cond_c
    invoke-direct {p0, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d

    instance-of v3, v2, Landroid/widget/ImageView;

    if-nez v3, :cond_d

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a

    .line 173
    :cond_d
    invoke-direct {p0, v6}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    goto :goto_1

    .line 180
    :cond_e
    invoke-direct {p0, v2}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p1, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 181
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v1

    .line 182
    .restart local v1       #folder:Lcom/android/launcher2/Folder;
    if-eqz v1, :cond_b

    .line 183
    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->getIconView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method

.method private hideHotseatSwapIcon(Z)V
    .locals 5
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-nez v1, :cond_0

    .line 596
    :goto_0
    return-void

    .line 582
    :cond_0
    if-eqz p1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 584
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 585
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/HotseatSwapAnimator$5;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator$5;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 595
    .end local v0           #v:Landroid/view/View;
    :goto_1
    iput-object v4, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    goto :goto_0

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private isAppIcon(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 345
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFolderOverlay()V
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addAlphaAnimator(FFZ)V

    .line 527
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mFolderOverlay:Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private scaleAnimate(Landroid/view/View;F)Landroid/view/ViewPropertyAnimator;
    .locals 3
    .parameter "v"
    .parameter "endScale"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showHotseatSwapIcon(Lcom/android/launcher2/DragState;Landroid/view/View;)V
    .locals 10
    .parameter "dragState"
    .parameter "underView"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 537
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 539
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    .line 541
    .local v7, item:Lcom/android/launcher2/BaseItem;
    iget-object v0, p1, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    if-eq v0, p2, :cond_0

    .line 543
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p1, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->hasHotSeatAncestor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeItem;

    .line 549
    .local v6, homeItem:Lcom/android/launcher2/HomeItem;
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->hideHotseatSwapIcon(Z)V

    .line 551
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    check-cast v7, Lcom/android/launcher2/HomeShortcutItem;

    .end local v7           #item:Lcom/android/launcher2/BaseItem;
    invoke-virtual {v0, v7}, Lcom/android/launcher2/HomeFragment;->createHotseat(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 556
    .local v1, imageView:Lcom/android/launcher2/AppIconView;
    check-cast p2, Lcom/android/launcher2/AppIconView;

    .end local p2
    invoke-virtual {p2}, Lcom/android/launcher2/AppIconView;->getTextVisible()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 561
    invoke-virtual {v1, v9}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    .line 563
    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v0, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v2, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v6, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v8, v6, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-direct {v4, v0, v2, v5, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 564
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 566
    iput-object v1, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseatSwapIcon:Landroid/view/View;

    .line 568
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v9}, Lcom/android/launcher2/AppIconView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 569
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    .line 570
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/HotseatSwapAnimator$4;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/HotseatSwapAnimator$4;-><init>(Lcom/android/launcher2/HotseatSwapAnimator;Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0
.end method


# virtual methods
.method hasHotSeatAncestor(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 603
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 604
    instance-of v1, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 607
    :goto_1
    return v1

    .line 605
    :cond_0
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    goto :goto_0

    .line 607
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/DragState;

    if-nez v0, :cond_0

    move v4, v11

    .line 104
    :goto_0
    return v4

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/DragState;

    .line 44
    .local v7, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    .line 45
    .local v6, dragItem:Lcom/android/launcher2/BaseItem;
    sget-object v0, Lcom/android/launcher2/HotseatSwapAnimator$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, v6, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v4, v11

    .line 51
    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v9, v0, v11

    .line 55
    .local v9, lastCellX:I
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v10, v0, v4

    .line 56
    .local v10, lastCellY:I
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findDragCell(Lcom/android/launcher2/DragState;II[I)V

    .line 58
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v8

    .line 59
    .local v8, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_1
    move v4, v11

    .line 104
    goto :goto_0

    .line 61
    :pswitch_1
    iput-object v8, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragSourceFolder:Lcom/android/launcher2/Folder;

    goto :goto_1

    .line 64
    :pswitch_2
    if-eqz v8, :cond_1

    .line 65
    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->ignoreShrinkingFolder()V

    .line 66
    invoke-virtual {v8, v11}, Lcom/android/launcher2/Folder;->close(Z)V

    goto :goto_1

    .line 70
    :pswitch_3
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewMove(Lcom/android/launcher2/DragState;)V

    .line 71
    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->isAppIcon(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mHotseat:Lcom/android/launcher2/Hotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Hotseat;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 79
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v0, v0, v11

    if-ne v9, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mDragCell:[I

    aget v0, v0, v4

    if-ne v10, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mAnimInfo:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v0, :cond_1

    .line 80
    :cond_2
    iget-object v0, v7, Lcom/android/launcher2/DragState;->mUnderdragView:Landroid/view/View;

    if-nez v0, :cond_4

    .line 81
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto :goto_1

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HotseatSwapAnimator;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto :goto_2

    .line 84
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateMoveFade(Lcom/android/launcher2/DragState;)V

    goto :goto_1

    .line 90
    :pswitch_4
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewExit(Lcom/android/launcher2/DragState;)V

    .line 91
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto :goto_1

    .line 94
    :pswitch_5
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeOutAndRemoveOverlayIcon(Lcom/android/launcher2/DragState;)V

    .line 95
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewDrop(Lcom/android/launcher2/DragState;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 98
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->handleDragOverViewEnded(Lcom/android/launcher2/DragState;)V

    .line 99
    invoke-direct {p0, v7}, Lcom/android/launcher2/HotseatSwapAnimator;->animateOverlayIconBack(Lcom/android/launcher2/DragState;)V

    goto :goto_1

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 59
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
