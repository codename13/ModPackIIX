.class public Lcom/android/launcher2/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragState$2;,
        Lcom/android/launcher2/DragState$DropPos;,
        Lcom/android/launcher2/DragState$VisualMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DragState"


# instance fields
.field private mAnimateVied:Landroid/view/View;

.field private mBlockDeleteFromSource:Z

.field private mDeleted:Z

.field final mDragOrigin:Lcom/android/launcher2/DragOrigin;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFoundValidDrop:Z

.field private mHasEnded:Z

.field private mReceiver:Lcom/android/launcher2/DragReceivable;

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field mSkipAnimation:Z

.field private mSwapView:Landroid/view/View;

.field mUnderdragView:Landroid/view/View;

.field final mView:Landroid/view/View;

.field private mVisualMode:Lcom/android/launcher2/DragState$VisualMode;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 40
    invoke-static {p1}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V
    .locals 1
    .parameter "v"
    .parameter "origin"

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mSkipAnimation:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 559
    sget-object v0, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 44
    iput-object p2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    .line 45
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    .line 46
    return-void
.end method

.method private animateDrop()V
    .locals 4

    .prologue
    .line 599
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-nez v2, :cond_0

    .line 600
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 602
    .local v1, l:Lcom/android/launcher2/AnimationLayer;
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-static {v2}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v2, v2, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 603
    .local v0, fadeOutDrop:Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher2/AnimationLayer;->animateDrop(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Z)V

    .line 604
    return-void

    .line 602
    .end local v0           #fadeOutDrop:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deleteFromSource()V
    .locals 3

    .prologue
    .line 301
    iget-boolean v1, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    if-eqz v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/launcher2/DragOrigin;->removeView(Landroid/view/View;)V

    .line 307
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 308
    .local v0, info:Lcom/android/launcher2/BaseItem;
    instance-of v1, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .end local v0           #info:Lcom/android/launcher2/BaseItem;
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method

.method private findEmptySpanOnCurrentHomeScreen(Lcom/android/launcher2/DragState$DropPos;IIZ)Z
    .locals 9
    .parameter "dropPos"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "showFullToast"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 471
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 472
    .local v5, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v4

    .line 473
    .local v4, screen:I
    invoke-virtual {v5, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 474
    .local v1, currentPage:Lcom/android/launcher2/CellLayout;
    const/4 v3, 0x0

    .line 475
    .local v3, rc:Z
    if-eqz v1, :cond_0

    .line 476
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 477
    .local v2, pos:[I
    invoke-virtual {v1, v2, v7, v7}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 478
    iput-object v1, p1, Lcom/android/launcher2/DragState$DropPos;->mTarget:Lcom/android/launcher2/CellLayout;

    .line 479
    iput v4, p1, Lcom/android/launcher2/DragState$DropPos;->mScreen:I

    .line 480
    aget v6, v2, v8

    iput v6, p1, Lcom/android/launcher2/DragState$DropPos;->mCellX:I

    .line 481
    aget v6, v2, v7

    iput v6, p1, Lcom/android/launcher2/DragState$DropPos;->mCellY:I

    .line 484
    .end local v2           #pos:[I
    :cond_0
    if-nez v3, :cond_1

    .line 485
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 486
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f0e0023

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 489
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    return v3
.end method

.method public static findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;
    .locals 2
    .parameter "v"

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 515
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 516
    check-cast v0, Landroid/view/View;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    goto :goto_0

    .line 518
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_1

    .line 519
    check-cast v0, Lcom/android/launcher2/DragOrigin;

    .line 521
    .end local v0           #parent:Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private swapItems(Landroid/view/View;Landroid/view/View;)V
    .locals 12
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/HomeItem;

    .line 334
    .local v9, i1:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/HomeItem;

    .line 337
    .local v10, i2:Lcom/android/launcher2/HomeItem;
    iget v6, v9, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 338
    .local v6, cellX:I
    iget v7, v9, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 339
    .local v7, cellY:I
    iget v8, v9, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 340
    .local v8, screen:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v11

    .line 341
    .local v11, p1:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, p2}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    .line 343
    .local v2, p2:Lcom/android/launcher2/CellLayout;
    if-eqz v2, :cond_2

    .line 344
    invoke-virtual {v2, p2}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 346
    sget-boolean v0, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v9, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v0, :cond_0

    iget-wide v0, v10, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v3, -0x65

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-boolean v0, v10, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-nez v0, :cond_0

    iget-wide v0, v9, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v3, -0x65

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    .line 349
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 352
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    .line 354
    :cond_0
    iget v3, v10, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v4, v10, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v5, v10, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragState;->moveItemTo(Landroid/view/View;Lcom/android/launcher2/DragReceivable;III)Z

    move-object v3, p0

    move-object v4, p2

    move-object v5, v11

    .line 355
    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Landroid/view/View;Lcom/android/launcher2/DragReceivable;III)Z

    .line 357
    if-ne v11, v2, :cond_2

    .line 359
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3feeb851eb851eb8L

    cmpl-double v0, v0, v3

    if-ltz v0, :cond_1

    .line 360
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 362
    :cond_1
    const/high16 v0, 0x3f80

    const/16 v1, 0xfa

    invoke-static {p2, v0, v1}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 366
    :cond_2
    iget-wide v0, v9, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v3, v10, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    iget-wide v0, v9, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v3, -0x65

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    .line 373
    :cond_3
    return-void
.end method


# virtual methods
.method public cleanupSwap()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    goto :goto_0
.end method

.method public createHomeFolderFromDragItem()Z
    .locals 19

    .prologue
    .line 382
    const/4 v14, 0x0

    .line 383
    .local v14, folderCreated:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v16

    .line 384
    .local v16, item:Lcom/android/launcher2/BaseItem;
    if-eqz v16, :cond_2

    .line 385
    new-instance v13, Lcom/android/launcher2/DragState$DropPos;

    const/4 v5, 0x0

    invoke-direct {v13, v5}, Lcom/android/launcher2/DragState$DropPos;-><init>(Lcom/android/launcher2/DragState$1;)V

    .line 386
    .local v13, dropPos:Lcom/android/launcher2/DragState$DropPos;
    const-wide/16 v3, -0x64

    .line 387
    .local v3, container:J
    const/4 v15, 0x0

    .line 389
    .local v15, folderItem:Lcom/android/launcher2/HomeShortcutItem;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v7, :cond_3

    .line 392
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v7

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v7, v8}, Lcom/android/launcher2/DragState;->findEmptySpanOnCurrentHomeScreen(Lcom/android/launcher2/DragState$DropPos;IIZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 394
    check-cast v16, Lcom/android/launcher2/AppItem;

    .end local v16           #item:Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v15

    .line 429
    :cond_0
    :goto_0
    if-eqz v15, :cond_2

    .line 430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 431
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v2}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 432
    .local v2, newFolder:Lcom/android/launcher2/HomeFolderItem;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 434
    iget v5, v13, Lcom/android/launcher2/DragState$DropPos;->mScreen:I

    iget v6, v13, Lcom/android/launcher2/DragState$DropPos;->mCellX:I

    iget v7, v13, Lcom/android/launcher2/DragState$DropPos;->mCellY:I

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 436
    iget-wide v7, v2, Lcom/android/launcher2/BaseItem;->mId:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v1

    move-object v6, v15

    invoke-static/range {v5 .. v11}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 437
    invoke-virtual {v2, v15}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 438
    iget-object v5, v13, Lcom/android/launcher2/DragState$DropPos;->mTarget:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/CellLayout;->createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v6

    .line 439
    .local v6, v:Landroid/view/View;
    iget-object v5, v13, Lcom/android/launcher2/DragState$DropPos;->mTarget:Lcom/android/launcher2/CellLayout;

    iget v7, v13, Lcom/android/launcher2/DragState$DropPos;->mScreen:I

    iget v8, v13, Lcom/android/launcher2/DragState$DropPos;->mCellX:I

    iget v9, v13, Lcom/android/launcher2/DragState$DropPos;->mCellY:I

    iget v10, v15, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v11, v15, Lcom/android/launcher2/HomeItem;->spanY:I

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher2/CellLayout;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 441
    const/4 v14, 0x1

    .line 442
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 443
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v5, :cond_1

    .line 445
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {v5, v7}, Lcom/android/launcher2/DragOrigin;->show(Landroid/view/View;)V

    .line 448
    :cond_1
    iget-object v5, v13, Lcom/android/launcher2/DragState$DropPos;->mTarget:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    iget v7, v13, Lcom/android/launcher2/DragState$DropPos;->mCellX:I

    iget v8, v13, Lcom/android/launcher2/DragState$DropPos;->mCellY:I

    invoke-virtual {v5, v7, v8}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 449
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v17

    .line 450
    .local v17, l:Lcom/android/launcher2/AnimationLayer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v5, v7}, Lcom/android/launcher2/AnimationLayer;->animateDrop(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;Z)V

    .line 453
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #newFolder:Lcom/android/launcher2/HomeFolderItem;
    .end local v3           #container:J
    .end local v6           #v:Landroid/view/View;
    .end local v13           #dropPos:Lcom/android/launcher2/DragState$DropPos;
    .end local v15           #folderItem:Lcom/android/launcher2/HomeShortcutItem;
    .end local v17           #l:Lcom/android/launcher2/AnimationLayer;
    :cond_2
    return v14

    .line 396
    .restart local v3       #container:J
    .restart local v13       #dropPos:Lcom/android/launcher2/DragState$DropPos;
    .restart local v15       #folderItem:Lcom/android/launcher2/HomeShortcutItem;
    .restart local v16       #item:Lcom/android/launcher2/BaseItem;
    :cond_3
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v7, :cond_4

    move-object/from16 v0, v16

    instance-of v5, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v5, :cond_4

    .line 397
    check-cast v16, Lcom/android/launcher2/HomePendingItem;

    .end local v16           #item:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    .line 398
    .local v18, name:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v5, v5, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/android/launcher2/HomeFragment;->processItemDropToNewFolder(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 399
    .end local v18           #name:Landroid/content/ComponentName;
    .restart local v16       #item:Lcom/android/launcher2/BaseItem;
    :cond_4
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v7, :cond_5

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v7, :cond_0

    move-object/from16 v0, v16

    instance-of v5, v0, Lcom/android/launcher2/HomePendingItem;

    if-nez v5, :cond_0

    :cond_5
    move-object/from16 v15, v16

    .line 401
    check-cast v15, Lcom/android/launcher2/HomeShortcutItem;

    .line 402
    iget-wide v7, v15, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v9, -0x64

    cmp-long v5, v7, v9

    if-eqz v5, :cond_6

    iget-wide v7, v15, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v9, -0x65

    cmp-long v5, v7, v9

    if-nez v5, :cond_7

    .line 407
    :cond_6
    iget-wide v3, v15, Lcom/android/launcher2/HomeItem;->container:J

    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v5, Lcom/android/launcher2/CellLayout;

    iput-object v5, v13, Lcom/android/launcher2/DragState$DropPos;->mTarget:Lcom/android/launcher2/CellLayout;

    .line 409
    iget v5, v15, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v5, v13, Lcom/android/launcher2/DragState$DropPos;->mScreen:I

    .line 410
    iget v5, v15, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v5, v13, Lcom/android/launcher2/DragState$DropPos;->mCellX:I

    .line 411
    iget v5, v15, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v5, v13, Lcom/android/launcher2/DragState$DropPos;->mCellY:I

    .line 412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {v5, v7}, Lcom/android/launcher2/DragOrigin;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 418
    :cond_7
    iget v5, v15, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v7, v15, Lcom/android/launcher2/HomeItem;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v7, v8}, Lcom/android/launcher2/DragState;->findEmptySpanOnCurrentHomeScreen(Lcom/android/launcher2/DragState$DropPos;IIZ)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 420
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {v5, v7}, Lcom/android/launcher2/DragOrigin;->removeView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 422
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public foundValidDrop()Z
    .locals 1

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    return v0
.end method

.method getFolderParent()Lcom/android/launcher2/Folder;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 615
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 623
    :goto_0
    return-object v0

    .line 617
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 618
    .local v0, p:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 619
    instance-of v2, v0, Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_1

    .line 620
    check-cast v0, Lcom/android/launcher2/Folder;

    goto :goto_0

    .line 621
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 623
    goto :goto_0
.end method

.method public getItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 2
    .parameter "v"

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 497
    .local v0, parent:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 500
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getShadow()Lcom/android/launcher2/ShadowBuilder;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    return v0
.end method

.method public initiateSwap(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    .line 328
    :cond_2
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    .line 329
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public isMoveInsideOpenFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;)Z
    .locals 1
    .parameter "item"
    .parameter "receiver"

    .prologue
    .line 634
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logDebugInfo()V
    .locals 4

    .prologue
    .line 569
    const-string v0, "==============================================================================="

    .line 571
    .local v0, sep:Ljava/lang/String;
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v1, "DragState"

    const-string v2, "DragState member variables:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mView:           "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 576
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ...  parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragOrigin:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 580
    const-string v2, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ...  parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_1
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFoundValidDrop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasEnded:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwapView:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEndRunnable:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlockDeleteFromSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v1, "DragState"

    const-string v2, "details:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method moveItemTo(Landroid/view/View;Lcom/android/launcher2/DragReceivable;III)Z
    .locals 24
    .parameter "v"
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "screen"

    .prologue
    .line 96
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    .line 97
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v6

    .line 99
    .local v6, container:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/BaseItem;

    .line 100
    .local v23, item:Lcom/android/launcher2/BaseItem;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 102
    move-object/from16 v0, v23

    instance-of v5, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v4, v5, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 105
    .local v4, hf:Lcom/android/launcher2/HomeFragment;
    sget-object v5, Lcom/android/launcher2/DragState$2;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v8}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 125
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    move-object/from16 v5, v23

    .line 107
    check-cast v5, Lcom/android/launcher2/HomePendingWidget;

    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v8, 0x0

    aput p3, v9, v8

    const/4 v8, 0x1

    aput p4, v9, v8

    const/4 v10, 0x0

    move/from16 v8, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/HomeFragment;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;JI[I[I)V

    .line 129
    :goto_0
    const/4 v5, 0x1

    .line 197
    .end local v4           #hf:Lcom/android/launcher2/HomeFragment;
    :goto_1
    return v5

    .restart local v4       #hf:Lcom/android/launcher2/HomeFragment;
    :pswitch_1
    move-object/from16 v5, v23

    .line 113
    check-cast v5, Lcom/android/launcher2/HomePendingItem;

    iget-object v5, v5, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v8, 0x0

    aput p3, v9, v8

    const/4 v8, 0x1

    aput p4, v9, v8

    const/4 v10, 0x0

    move/from16 v8, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/HomeFragment;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v5, v23

    .line 119
    check-cast v5, Lcom/android/launcher2/HomePendingSamsungWidget;

    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v8, 0x0

    aput p3, v9, v8

    const/4 v8, 0x1

    aput p4, v9, v8

    const/4 v10, 0x0

    move/from16 v8, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/HomeFragment;->addSamsungAppWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;JI[I[I)V

    goto :goto_0

    .line 130
    .end local v4           #hf:Lcom/android/launcher2/HomeFragment;
    :cond_0
    move-object/from16 v0, v23

    instance-of v5, v0, Lcom/android/launcher2/AppItem;

    if-eqz v5, :cond_a

    const-wide/16 v8, -0x64

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    const-wide/16 v8, -0x65

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    move-object/from16 v0, p2

    instance-of v5, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_a

    move-object/from16 v5, p2

    check-cast v5, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v8, :cond_a

    .line 135
    :cond_1
    move-object/from16 v0, v23

    instance-of v5, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v5, :cond_9

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v9, v23

    check-cast v9, Lcom/android/launcher2/AppFolderItem;

    move-wide v10, v6

    move/from16 v12, p5

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-static/range {v8 .. v14}, Lcom/android/launcher2/HomeFolderItem;->createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v23

    .line 142
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object p1

    .line 148
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-nez v5, :cond_3

    .line 149
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 152
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p2

    if-ne v5, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_d

    .line 154
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Lcom/android/launcher2/DragOrigin;->removeView(Landroid/view/View;)V

    .line 157
    :cond_5
    const/4 v13, 0x1

    .local v13, spanX:I
    const/4 v14, 0x1

    .line 158
    .local v14, spanY:I
    move-object/from16 v0, v23

    instance-of v5, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v5, :cond_6

    move-object/from16 v5, v23

    .line 161
    check-cast v5, Lcom/android/launcher2/HomeItem;

    iget v13, v5, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v5, v23

    .line 162
    check-cast v5, Lcom/android/launcher2/HomeItem;

    iget v14, v5, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v5, v5, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v5, :cond_6

    .line 169
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object p1

    .line 172
    :cond_6
    sget-boolean v5, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v5, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/HomeItem;

    if-eqz v5, :cond_c

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/HomeItem;

    .line 174
    .local v22, homeItem:Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v5, :cond_b

    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcom/android/launcher2/HomeItem;->isSwapItemHotseatAndCP:Z

    if-eqz v5, :cond_b

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    iget-object v4, v5, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 176
    .restart local v4       #hf:Lcom/android/launcher2/HomeFragment;
    invoke-virtual {v4}, Lcom/android/launcher2/HomeFragment;->getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v10

    const/4 v15, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-interface/range {v8 .. v15}, Lcom/android/launcher2/DragReceivable;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 189
    .end local v4           #hf:Lcom/android/launcher2/HomeFragment;
    .end local v13           #spanX:I
    .end local v14           #spanY:I
    .end local v22           #homeItem:Lcom/android/launcher2/HomeItem;
    :cond_7
    :goto_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher2/DragReceivable;->onMove(Landroid/view/View;II)V

    .line 190
    move-object/from16 v0, v23

    instance-of v5, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/DragState;->isMoveInsideOpenFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v5, v23

    .line 192
    check-cast v5, Lcom/android/launcher2/HomeItem;

    iget v11, v5, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v5, v23

    check-cast v5, Lcom/android/launcher2/HomeItem;

    iget v12, v5, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v8, p5

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-static/range {v6 .. v12}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v16, v23

    check-cast v16, Lcom/android/launcher2/HomeItem;

    move-wide/from16 v17, v6

    move/from16 v19, p5

    move/from16 v20, p3

    move/from16 v21, p4

    invoke-static/range {v15 .. v21}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    .line 197
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 139
    :cond_9
    check-cast v23, Lcom/android/launcher2/AppItem;

    .end local v23           #item:Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v23

    .line 140
    .restart local v23       #item:Lcom/android/launcher2/BaseItem;
    move-object/from16 v0, v23

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    goto/16 :goto_2

    .line 143
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 145
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_3

    .line 178
    .restart local v13       #spanX:I
    .restart local v14       #spanY:I
    .restart local v22       #homeItem:Lcom/android/launcher2/HomeItem;
    :cond_b
    const/4 v15, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-interface/range {v8 .. v15}, Lcom/android/launcher2/DragReceivable;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto/16 :goto_4

    .line 180
    .end local v22           #homeItem:Lcom/android/launcher2/HomeItem;
    :cond_c
    const/4 v15, 0x0

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v10, p5

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-interface/range {v8 .. v15}, Lcom/android/launcher2/DragReceivable;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto/16 :goto_4

    .line 182
    .end local v13           #spanX:I
    .end local v14           #spanY:I
    :cond_d
    move-object/from16 v0, v23

    instance-of v5, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v5, :cond_7

    move-object/from16 v5, v23

    check-cast v5, Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p3

    if-ne v0, v5, :cond_7

    move-object/from16 v5, v23

    check-cast v5, Lcom/android/launcher2/HomeItem;

    iget v5, v5, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p4

    if-ne v0, v5, :cond_7

    .line 186
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;III)Z
    .locals 6
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "screen"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v0, :cond_2

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    .line 69
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reciever:        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz p1, :cond_1

    .line 71
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    ...  parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/launcher2/DragReceivable;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   y:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen:          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to move item after the drop was handled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragState;->moveItemTo(Landroid/view/View;Lcom/android/launcher2/DragReceivable;III)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    .line 80
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveItemToWithoutAnimation(Lcom/android/launcher2/DragReceivable;III)Z
    .locals 7
    .parameter "receiver"
    .parameter "x"
    .parameter "y"
    .parameter "screen"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragState;->moveItemTo(Landroid/view/View;Lcom/android/launcher2/DragReceivable;III)Z

    move-result v6

    .local v6, rc:Z
    if-eqz v6, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Landroid/view/View;)V

    .line 91
    :cond_0
    return v6
.end method

.method public onDelete()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 230
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v7, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    .line 232
    :cond_0
    iput-boolean v8, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 233
    iput-boolean v8, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 234
    iput-boolean v8, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 236
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    .line 237
    .local v4, item:Lcom/android/launcher2/BaseItem;
    instance-of v7, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v7, :cond_2

    .line 238
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v1, v7, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .local v1, hf:Lcom/android/launcher2/HomeFragment;
    move-object v2, v4

    .line 239
    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    .line 240
    .local v2, homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    .line 241
    .local v0, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v0, :cond_1

    .line 242
    new-instance v7, Lcom/android/launcher2/DragState$1;

    const-string v8, "deleteAppWidgetId"

    invoke-direct {v7, p0, v8, v0, v2}, Lcom/android/launcher2/DragState$1;-><init>(Lcom/android/launcher2/DragState;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v7}, Lcom/android/launcher2/DragState$1;->start()V

    .line 257
    .end local v0           #appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v1           #hf:Lcom/android/launcher2/HomeFragment;
    .end local v2           #homeWidgetItem:Lcom/android/launcher2/HomeWidgetItem;
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    instance-of v7, v4, Lcom/android/launcher2/SamsungAppWidgetInfo;

    if-eqz v7, :cond_1

    .line 250
    iget-object v7, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    iget-object v1, v7, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 251
    .restart local v1       #hf:Lcom/android/launcher2/HomeFragment;
    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    .local v5, mLauncher:Lcom/android/launcher2/Launcher;
    move-object v3, v4

    .line 252
    check-cast v3, Lcom/android/launcher2/SamsungAppWidgetInfo;

    .line 253
    .local v3, info:Lcom/android/launcher2/SamsungAppWidgetInfo;
    invoke-static {v5}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v6

    .line 254
    .local v6, manager:Lcom/android/launcher2/SamsungWidgetPackageManager;
    invoke-virtual {v6, v5, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V

    goto :goto_0
.end method

.method public onDragStartedSuccessfully()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->hide(Landroid/view/View;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to call DrageState.onDrop more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 210
    return-void
.end method

.method public onDropSetEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "runnable"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 218
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    .line 219
    return-void
.end method

.method public onEnd()V
    .locals 3

    .prologue
    .line 264
    iget-boolean v1, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/ShadowBuilder;->releaseSurface()V

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 268
    iget-boolean v1, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 269
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 270
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 274
    .end local v0           #handler:Landroid/os/Handler;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_0

    .line 276
    iget-boolean v1, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v1, :cond_3

    .line 277
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    goto :goto_0

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/launcher2/DragOrigin;->show(Landroid/view/View;)V

    .line 280
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/launcher2/DragOrigin;->onFailedDrop(Landroid/view/View;)V

    .line 281
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v1, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    goto :goto_0
.end method

.method public setShadow(Lcom/android/launcher2/ShadowBuilder;)V
    .locals 0
    .parameter "shadow"

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 528
    return-void
.end method

.method public setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    if-eq p1, v0, :cond_0

    .line 563
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragState$VisualMode;->enter(Lcom/android/launcher2/UpdateableShadowBuilder;)V

    .line 566
    :cond_0
    return-void
.end method
