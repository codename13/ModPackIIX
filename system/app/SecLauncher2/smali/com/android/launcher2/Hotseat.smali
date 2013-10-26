.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Lcom/android/launcher2/CellLayoutContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Hotseat$TrashCanFadeoutAdapter;,
        Lcom/android/launcher2/Hotseat$TrashCanUnfillAdapter;,
        Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;,
        Lcom/android/launcher2/Hotseat$TrashCanLidShakeAdapter;,
        Lcom/android/launcher2/Hotseat$TrashCanLidDownAdapter;,
        Lcom/android/launcher2/Hotseat$TrashCanLidUpAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Hotseat"

.field private static sAllAppsButtonRank:I


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field final kLidUpHeight:I

.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mAngleDirection:F

.field private mBackground:Landroid/view/View;

.field mCellCountX:I

.field mCellCountY:I

.field mContent:Lcom/android/launcher2/CellLayout;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDropped:Z

.field private mEntered:Z

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field mIsLandscape:Z

.field private mPreviousLidShakeValue:F

.field private mShowHotseatTitle:Z

.field private final mTmpXY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x4

    sput v0, Lcom/android/launcher2/Hotseat;->sAllAppsButtonRank:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/android/launcher2/Hotseat;->mTmpXY:[I

    .line 438
    iput-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 439
    iput-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mDropped:Z

    .line 579
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/launcher2/Hotseat;->kLidUpHeight:I

    .line 593
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/android/launcher2/Hotseat;->mAngleDirection:F

    .line 73
    sget-object v3, Lcom/sec/android/app/launcher/R$styleable;->Hotseat:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    .line 76
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    iget-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/launcher2/Hotseat;->sAllAppsButtonRank:I

    .line 85
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasPermanentMenuKey()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f090004

    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    .line 87
    return-void

    :cond_0
    move v1, v2

    .line 77
    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/launcher2/Hotseat;->sAllAppsButtonRank:I

    goto :goto_1

    .line 85
    :cond_2
    const v1, 0x7f090003

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Hotseat;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Hotseat;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/AllappsIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Hotseat;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/Hotseat;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/launcher2/Hotseat;->mPreviousLidShakeValue:F

    return p1
.end method

.method static synthetic access$602(Lcom/android/launcher2/Hotseat;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/launcher2/Hotseat;->mAngleDirection:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/Hotseat;IJLandroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Hotseat;->startAnimator(IJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static isAllAppsButtonRank(I)Z
    .locals 1
    .parameter "rank"

    .prologue
    .line 145
    sget v0, Lcom/android/launcher2/Hotseat;->sAllAppsButtonRank:I

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAnimator(IJLandroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .parameter "animatorId"
    .parameter "startDelay"
    .parameter "listener"

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 568
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 569
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 570
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 571
    invoke-virtual {v0, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 572
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 573
    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    .line 574
    return-void
.end method


# virtual methods
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
    .line 365
    iget-object v12, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    .line 368
    .local v12, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_0

    .line 370
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 371
    .local v14, tag:Ljava/lang/Object;
    instance-of v4, v14, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v4, :cond_5

    move-object v11, v14

    .line 372
    check-cast v11, Lcom/android/launcher2/HomeShortcutItem;

    .line 374
    .local v11, info:Lcom/android/launcher2/HomeShortcutItem;
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4, v11}, Lcom/android/launcher2/HomeFragment;->createHotseat(Lcom/android/launcher2/HomeShortcutItem;)Landroid/view/View;

    move-result-object p1

    .line 381
    .end local v11           #info:Lcom/android/launcher2/HomeShortcutItem;
    .end local v14           #tag:Ljava/lang/Object;
    :cond_0
    :goto_0
    if-gez p2, :cond_6

    .line 382
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result p2

    .line 390
    :goto_1
    new-instance v4, Lcom/android/launcher2/HotseatIconKeyEventListener;

    invoke-direct {v4}, Lcom/android/launcher2/HotseatIconKeyEventListener;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 393
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    if-nez v4, :cond_1

    move-object/from16 v4, p1

    .line 394
    check-cast v4, Lcom/android/launcher2/AppIconView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 398
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 399
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-nez v13, :cond_7

    .line 400
    new-instance v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 408
    .restart local v13       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    if-gez p5, :cond_2

    if-gez p6, :cond_2

    .line 409
    const/4 v4, 0x0

    iput-boolean v4, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 413
    :cond_2
    const-wide/16 v4, -0x65

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    .line 416
    .local v7, childId:I
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/Folder;

    if-nez v4, :cond_8

    const/4 v9, 0x1

    .line 417
    .local v9, markCellsAsOccupied:Z
    :goto_3
    if-eqz p7, :cond_9

    const/4 v6, 0x0

    :goto_4
    move-object v4, v12

    move-object/from16 v5, p1

    move-object v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 421
    const-string v4, "Hotseat"

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

    .line 424
    :cond_3
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/Folder;

    if-nez v4, :cond_4

    .line 425
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 426
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-nez v4, :cond_4

    .line 427
    sget-boolean v4, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getCurrentPageIndexbyContextualPage()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getNumPages()I

    move-result v5

    if-ge v4, v5, :cond_a

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getCurrentPageIndexbyContextualPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v4

    if-eqz v4, :cond_a

    .line 433
    :cond_4
    :goto_5
    return-void

    .line 375
    .end local v7           #childId:I
    .end local v9           #markCellsAsOccupied:Z
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v14       #tag:Ljava/lang/Object;
    :cond_5
    instance-of v4, v14, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_0

    move-object v11, v14

    .line 376
    check-cast v11, Lcom/android/launcher2/HomeFolderItem;

    .line 377
    .local v11, info:Lcom/android/launcher2/HomeFolderItem;
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4, v11}, Lcom/android/launcher2/HomeFragment;->createHotseatFolder(Lcom/android/launcher2/HomeFolderItem;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_0

    .line 386
    .end local v11           #info:Lcom/android/launcher2/HomeFolderItem;
    .end local v14           #tag:Ljava/lang/Object;
    :cond_6
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result p3

    .line 387
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result p4

    goto/16 :goto_1

    .line 402
    .restart local v13       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_7
    move/from16 v0, p3

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 403
    move/from16 v0, p4

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 404
    move/from16 v0, p5

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 405
    move/from16 v0, p6

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 416
    .restart local v7       #childId:I
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 417
    .restart local v9       #markCellsAsOccupied:Z
    :cond_9
    const/4 v6, -0x1

    goto/16 :goto_4

    .line 430
    :cond_a
    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5
.end method

.method public collectPreWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    return-void
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 238
    .local v1, context:Landroid/content/Context;
    const/4 v2, 0x0

    .line 239
    .local v2, dragFromMenu:Z
    const/4 v4, 0x0

    .line 240
    .local v4, shrink:Z
    sget-object v5, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v5, :cond_6

    .line 241
    const/4 v4, 0x1

    .line 250
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 251
    .local v3, mOnlyShowHomeEditBar:Z
    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v5, :cond_2

    .line 252
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v5

    if-eqz v5, :cond_a

    .line 254
    :cond_1
    const/4 v3, 0x1

    .line 259
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    if-eqz v2, :cond_b

    .line 260
    :cond_3
    const/high16 v5, 0x7f05

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 261
    .local v0, animator:Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v5, :cond_4

    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v5

    if-eqz v5, :cond_5

    .line 266
    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 294
    :cond_5
    :goto_2
    return-void

    .line 242
    .end local v0           #animator:Landroid/animation/Animator;
    .end local v3           #mOnlyShowHomeEditBar:Z
    :cond_6
    sget-object v5, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v5, :cond_0

    .line 243
    if-eqz p4, :cond_8

    iget-object v5, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v6, :cond_7

    iget-object v5, p4, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v6, :cond_7

    instance-of v5, p4, Lcom/android/launcher2/HomePendingItem;

    if-eqz v5, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 247
    :goto_3
    if-nez v2, :cond_9

    const/4 v4, 0x1

    :goto_4
    goto :goto_0

    .line 243
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 247
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 255
    .restart local v3       #mOnlyShowHomeEditBar:Z
    :cond_a
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 256
    const/4 v3, 0x1

    goto :goto_1

    .line 268
    :cond_b
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-nez v5, :cond_c

    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v5

    if-eqz v5, :cond_d

    .line 270
    :cond_c
    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 272
    :cond_d
    if-eqz v4, :cond_e

    .line 273
    const v5, 0x7f050001

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 274
    .restart local v0       #animator:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const v5, 0x7f050008

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 278
    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :goto_5
    const v5, 0x7f050001

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 290
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 281
    .end local v0           #animator:Landroid/animation/Animator;
    :cond_e
    const/high16 v5, 0x7f05

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 282
    .restart local v0       #animator:Landroid/animation/Animator;
    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    const v5, 0x7f050009

    invoke-static {v1, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 286
    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "aCanvas"

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 117
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 118
    return-void
.end method

.method getAllappsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCellXFromOrder(I)I
    .locals 1
    .parameter "rank"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method getCellYFromOrder(I)I
    .locals 2
    .parameter "rank"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "v"

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 359
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method getLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1
    :cond_0
    return p1
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 303
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 312
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 314
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 315
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 316
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 317
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 328
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 337
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 338
    .local v2, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 339
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 340
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 343
    return-void
.end method

.method public onDragEndedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 353
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Landroid/view/View;)V

    .line 354
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 454
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/DragState;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 560
    :goto_0
    return v3

    .line 455
    :cond_0
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_1

    .line 456
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getCurrentPage()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeFragment;->getPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    if-eqz v3, :cond_1

    .line 457
    const/4 v3, 0x1

    goto :goto_0

    .line 460
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/DragState;

    .line 462
    .local v7, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 464
    const/4 v3, 0x1

    goto :goto_0

    .line 467
    :cond_2
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v10

    .line 468
    .local v10, view:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    .line 470
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 471
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 472
    .local v2, y:I
    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->mTmpXY:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    .line 473
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mTmpXY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->mTmpXY:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 475
    .local v6, dragOverView:Landroid/view/View;
    iget-object v3, v7, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v8, v3, Lcom/android/launcher2/CellLayoutNoGap;

    .line 476
    .local v8, fromFolder:Z
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_3

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_5

    :cond_3
    const/4 v9, 0x1

    .line 480
    .local v9, isWidget:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 560
    :cond_4
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    .line 476
    .end local v9           #isWidget:Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 482
    .restart local v9       #isWidget:Z
    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mDropped:Z

    .line 483
    if-eqz v6, :cond_8

    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_8

    .line 484
    instance-of v3, v6, Lcom/android/launcher2/AllappsIcon;

    if-eqz v3, :cond_7

    .line 485
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->onDelete()V

    .line 486
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 487
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashCanShakeMode(Z)V

    .line 488
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setIconAlpha(F)V

    .line 489
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashCanAlpha(F)V

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashCanFillAlpha(F)V

    .line 491
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setAnimating(Z)V

    .line 492
    const v3, 0x7f050011

    const-wide/16 v4, 0xc8

    new-instance v11, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/launcher2/Hotseat$TrashCanFillAdapter;-><init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V

    invoke-direct {p0, v3, v4, v5, v11}, Lcom/android/launcher2/Hotseat;->startAnimator(IJLandroid/animation/Animator$AnimatorListener;)V

    .line 493
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 494
    :cond_7
    if-nez v8, :cond_9

    if-nez v9, :cond_9

    if-eq v6, v10, :cond_9

    .line 495
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/android/launcher2/DragState;->mSkipAnimation:Z

    .line 496
    invoke-virtual {v7, v6}, Lcom/android/launcher2/DragState;->initiateSwap(Landroid/view/View;)V

    .line 497
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 500
    :cond_8
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    .line 502
    :cond_9
    if-eqz v9, :cond_4

    .line 503
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 507
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    if-eqz v3, :cond_a

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const v4, 0x7f0e0005

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 509
    :cond_a
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 510
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mDropped:Z

    goto/16 :goto_2

    .line 513
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v3, :cond_4

    .line 514
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 515
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashIcon(Z)V

    .line 516
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v7, v3}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    .line 517
    invoke-virtual {v7}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AllappsIcon;->isTrashCanShakeMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 520
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashCanShakeMode(Z)V

    goto/16 :goto_2

    .line 524
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mDropped:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    .line 525
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 526
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/Hotseat;->mCurrentAnimator:Landroid/animation/Animator;

    .line 527
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AllappsIcon;->unsetTrashIcon()V

    .line 528
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setAnimating(Z)V

    .line 529
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashCanShakeMode(Z)V

    .line 530
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    goto/16 :goto_2

    .line 534
    :pswitch_4
    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v3, :cond_4

    .line 535
    instance-of v3, v6, Lcom/android/launcher2/AllappsIcon;

    if-eqz v3, :cond_d

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashIcon(Z)V

    .line 537
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->DELETE:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v7, v3}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    .line 538
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AllappsIcon;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_b

    .line 540
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashCanShakeMode(Z)V

    .line 541
    const v3, 0x7f050014

    const-wide/16 v4, 0x3c

    new-instance v11, Lcom/android/launcher2/Hotseat$TrashCanLidUpAdapter;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/android/launcher2/Hotseat$TrashCanLidUpAdapter;-><init>(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/Hotseat$1;)V

    invoke-direct {p0, v3, v4, v5, v11}, Lcom/android/launcher2/Hotseat;->startAnimator(IJLandroid/animation/Animator$AnimatorListener;)V

    .line 552
    :cond_b
    :goto_3
    if-nez v8, :cond_4

    if-nez v9, :cond_c

    if-eqz v6, :cond_4

    if-eq v6, v10, :cond_4

    .line 556
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 544
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashIcon(Z)V

    .line 545
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    invoke-virtual {v7, v3}, Lcom/android/launcher2/DragState;->setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/AllappsIcon;->isTrashCanShakeMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 548
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setTrashCanShakeMode(Z)V

    goto :goto_3

    .line 480
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 347
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    .line 348
    .local v0, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 349
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 136
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    .line 137
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    iget v1, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 139
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-static {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->create(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/HotseatSwapAnimator;

    .line 141
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 142
    return-void
.end method

.method resetLayout()V
    .locals 12

    .prologue
    const v11, 0x7f0e002a

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    const-string v0, "Hotseat"

    const-string v1, "resetLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v7, 0x0

    .line 151
    .local v7, d:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 155
    .local v6, context:Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 156
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030003

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AllappsIcon;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    .line 158
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 160
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.twlauncher.application"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 161
    if-eqz v7, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, v4, v7, v4, v4}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 169
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, v11}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v1, Lcom/android/launcher2/HotseatIconKeyEventListener;

    invoke-direct {v1}, Lcom/android/launcher2/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v1, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget v0, Lcom/android/launcher2/Hotseat;->sAllAppsButtonRank:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v9

    .line 207
    .local v9, x:I
    sget v0, Lcom/android/launcher2/Hotseat;->sAllAppsButtonRank:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result v10

    .line 208
    .local v10, y:I
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const/4 v2, -0x1

    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v4, v9, v10, v5, v5}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 210
    return-void

    .line 166
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v4, v4}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setFadeOutTrashCan(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setTrashCanAlpha(F)V

    .line 635
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllappsIcon;->setIconAlpha(F)V

    .line 636
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 637
    return-void
.end method

.method public setTrashCanFill(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setTrashCanAlpha(F)V

    .line 621
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllappsIcon;->setTrashCanFillAlpha(F)V

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 623
    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 4
    .parameter "value"

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4080

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllappsIcon;->setTrashCanLidOffset(II)V

    .line 587
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setTrashCanLidAngle(F)V

    .line 588
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 589
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 8
    .parameter "value"

    .prologue
    const/high16 v7, -0x3ec0

    const/high16 v6, -0x4080

    const/high16 v5, 0x4140

    .line 596
    const/high16 v2, 0x4100

    .line 597
    .local v2, kHalfCycles:F
    const/high16 v4, 0x4100

    mul-float/2addr p1, v4

    .line 598
    const/high16 v3, 0x4140

    .line 599
    .local v3, kShakeMaxAngle:F
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/AllappsIcon;->getTrashCanLidAngle()F

    move-result v0

    .line 600
    .local v0, angle:F
    iget v4, p0, Lcom/android/launcher2/Hotseat;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    .line 601
    .local v1, dv:F
    iput p1, p0, Lcom/android/launcher2/Hotseat;->mPreviousLidShakeValue:F

    .line 602
    iget v4, p0, Lcom/android/launcher2/Hotseat;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 603
    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    .line 604
    sub-float v4, v0, v5

    sub-float v0, v5, v4

    .line 605
    iget v4, p0, Lcom/android/launcher2/Hotseat;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/Hotseat;->mAngleDirection:F

    .line 611
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/AllappsIcon;->setTrashCanLidAngle(F)V

    .line 612
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 613
    return-void

    .line 607
    :cond_1
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    .line 608
    add-float v4, v0, v5

    sub-float v0, v7, v4

    .line 609
    iget v4, p0, Lcom/android/launcher2/Hotseat;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/Hotseat;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 3
    .parameter "value"

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x4080

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllappsIcon;->setTrashCanLidOffset(II)V

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 583
    return-void
.end method

.method public setTrashCanUnfill(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllappsIcon;->setTrashCanAlpha(F)V

    .line 628
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllappsIcon;->setTrashCanFillAlpha(F)V

    .line 629
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getAllappsIcon()Lcom/android/launcher2/AllappsIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AllappsIcon;->invalidate()V

    .line 630
    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeFragment;)V
    .locals 7
    .parameter "homeFragment"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 90
    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 91
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayout;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 92
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/AllappsIcon;->setHomeFragment(Lcom/android/launcher2/HomeFragment;)V

    .line 95
    :cond_0
    new-instance v3, Lcom/android/launcher2/HotseatIconKeyEventListener;

    invoke-direct {v3}, Lcom/android/launcher2/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 98
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->attrs:Landroid/util/AttributeSet;

    sget-object v6, Lcom/sec/android/app/launcher/R$styleable;->Hotseat:[I

    invoke-virtual {v1, v3, v6, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    .line 103
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 105
    .local v2, maxCellCount:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f090004

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    .line 108
    return-void

    .end local v2           #maxCellCount:I
    :cond_1
    move v3, v5

    .line 100
    goto :goto_0

    .line 106
    .restart local v2       #maxCellCount:I
    :cond_2
    const v3, 0x7f090003

    goto :goto_1
.end method
