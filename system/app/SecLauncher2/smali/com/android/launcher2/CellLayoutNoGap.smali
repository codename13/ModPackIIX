.class public Lcom/android/launcher2/CellLayoutNoGap;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutNoGap.java"


# static fields
.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final TAG:Ljava/lang/String; = "CellLayoutNoGap"


# instance fields
.field mDragOutline:Landroid/graphics/Bitmap;

.field mDraggingView:Landroid/view/View;

.field private mEmptyCell:[I

.field mFolder:Lcom/android/launcher2/Folder;

.field private mHiddenView:Landroid/view/View;

.field private mPreviousTargetCell:[I

.field private mReOrderingEnabled:Z

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

.field mTargetCell:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x2

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/android/launcher2/Alarm;

    invoke-direct {v0}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 22
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    .line 23
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:[I

    .line 24
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:[I

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    .line 408
    new-instance v0, Lcom/android/launcher2/CellLayoutNoGap$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutNoGap$1;-><init>(Lcom/android/launcher2/CellLayoutNoGap;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    .line 41
    return-void
.end method

.method private readingOrderGreaterThan([I[I)Z
    .locals 4
    .parameter "v1"
    .parameter "v2"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 476
    aget v2, p1, v1

    aget v3, p2, v1

    if-gt v2, v3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_1

    aget v2, p1, v0

    aget v3, p2, v0

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 479
    :cond_1
    return v0
.end method


# virtual methods
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
    .line 301
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 302
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v1, 0x0

    aput p3, v0, v1

    .line 303
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v1, 0x1

    aput p4, v0, v1

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 307
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput p3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 308
    iput p4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContainerType()J

    move-result-wide v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 311
    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutNoGap;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 312
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher2/CellLayoutNoGap;->updateItem(Landroid/view/View;III)V

    .line 314
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-interface {v1, v0}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 318
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    .line 320
    :cond_0
    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"

    .prologue
    const/4 v3, -0x1

    .line 337
    iget v2, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-eq v2, v3, :cond_0

    iget v2, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ne v2, v3, :cond_1

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageChildCount()I

    move-result v0

    .line 339
    .local v0, idx:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v2

    rem-int v2, v0, v2

    iput v2, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 340
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v2

    div-int v2, v0, v2

    iput v2, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 343
    .end local v0           #idx:I
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    .line 346
    .local v1, l:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v1, p1, p2, p4}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 348
    const/4 v2, 0x1

    return v2
.end method

.method cancelRealTimeReorder()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 417
    return-void
.end method

.method protected closeLayoutGap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    .line 46
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 49
    :cond_0
    return-void
.end method

.method existsEmptyCell()Z
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageChildCount()I

    move-result v0

    .line 385
    .local v0, c:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 386
    add-int/lit8 v0, v0, -0x1

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findDropLocation(IIILjava/lang/Object;)V
    .locals 18
    .parameter "x"
    .parameter "y"
    .parameter "action"
    .parameter "localState"

    .prologue
    .line 57
    move-object/from16 v9, p4

    check-cast v9, Lcom/android/launcher2/DragState;

    .line 59
    .local v9, dragState:Lcom/android/launcher2/DragState;
    packed-switch p3, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    const/4 v1, 0x2

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v9}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderItem;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/FolderIconView;

    if-nez v1, :cond_2

    .line 109
    :cond_1
    invoke-virtual {v9}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    .line 112
    :cond_2
    return-void

    .line 61
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v17

    .line 62
    .local v17, ws:Lcom/android/launcher2/Workspace;
    invoke-virtual {v9}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    sget v3, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {v9}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v16

    .line 67
    .local v16, view:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 68
    const/4 v1, 0x2

    new-array v15, v1, [I

    .line 69
    .local v15, r:[I
    invoke-virtual {v9}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v13

    .line 70
    .local v13, position:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    rem-int v1, v13, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v2

    div-int v2, v13, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/launcher2/CellLayoutNoGap;->cellToPoint(II[I)V

    .line 71
    invoke-virtual {v9}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v11

    .line 72
    .local v11, o:[I
    const/4 v1, 0x0

    aget v1, v15, v1

    const/4 v2, 0x0

    aget v2, v11, v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getWidthGap()I

    move-result v2

    add-int p1, v1, v2

    .line 73
    const/4 v1, 0x1

    aget v1, v15, v1

    const/4 v2, 0x1

    aget v2, v11, v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getHeightGap()I

    move-result v2

    add-int p2, v1, v2

    .line 80
    .end local v11           #o:[I
    .end local v13           #position:I
    .end local v15           #r:[I
    .end local v16           #view:Landroid/view/View;
    .end local v17           #ws:Lcom/android/launcher2/Workspace;
    :pswitch_1
    const/4 v14, 0x0

    .line 81
    .local v14, previousScreen:Z
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenView:Landroid/view/View;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/CellLayoutNoGap;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 85
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/BaseItem;

    .line 86
    .local v10, item:Lcom/android/launcher2/BaseItem;
    iget v1, v10, Lcom/android/launcher2/BaseItem;->mScreen:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->getScreenForXY([I)I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v14, 0x1

    .line 87
    :goto_1
    instance-of v1, v10, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_7

    move-object v1, v10

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v1, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_7

    .line 88
    check-cast v10, Lcom/android/launcher2/AppItem;

    .end local v10           #item:Lcom/android/launcher2/BaseItem;
    iget-object v1, v10, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppFolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v14, 0x0

    .line 94
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v3

    mul-int/2addr v2, v3

    add-int v12, v1, v2

    .line 95
    .local v12, pos:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageChildCount()I

    move-result v1

    if-lt v12, v1, :cond_0

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageChildCount()I

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v14, :cond_8

    .line 97
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageChildCount()I

    move-result v12

    .line 101
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v3

    rem-int v3, v12, v3

    aput v3, v1, v2

    .line 102
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v3

    div-int v3, v12, v3

    aput v3, v1, v2

    goto/16 :goto_0

    .line 86
    .end local v12           #pos:I
    .restart local v10       #item:Lcom/android/launcher2/BaseItem;
    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    .line 88
    .end local v10           #item:Lcom/android/launcher2/BaseItem;
    :cond_6
    const/4 v14, 0x1

    goto :goto_2

    .line 89
    .restart local v10       #item:Lcom/android/launcher2/BaseItem;
    :cond_7
    instance-of v1, v10, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_3

    .line 90
    const/4 v14, 0x0

    goto :goto_2

    .line 99
    .end local v10           #item:Lcom/android/launcher2/BaseItem;
    .restart local v12       #pos:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutNoGap;->getPageChildCount()I

    move-result v1

    add-int/lit8 v12, v1, -0x1

    goto :goto_3

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findDropLocation(Landroid/view/DragEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public findFirstEmptySpace()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace([I)V

    .line 393
    return-void
.end method

.method public findFirstEmptySpace([I)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 396
    const/4 v1, 0x0

    .local v1, y:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountY()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 397
    const/4 v0, 0x0

    .local v0, x:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 398
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenView:Landroid/view/View;

    if-eq v2, v3, :cond_0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 399
    :cond_0
    aput v0, p1, v5

    .line 400
    aput v1, p1, v6

    .line 406
    .end local v0           #x:I
    :goto_2
    return-void

    .line 396
    .restart local v0       #x:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0           #x:I
    :cond_2
    aput v4, p1, v5

    .line 405
    aput v4, p1, v6

    goto :goto_2
.end method

.method public getContainerType()J
    .locals 3

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v0

    .line 325
    .local v0, parent:Lcom/android/launcher2/CellLayoutContainer;
    instance-of v1, v0, Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Lcom/android/launcher2/Folder;

    .end local v0           #parent:Lcom/android/launcher2/CellLayoutContainer;
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getContainerType()J

    move-result-wide v1

    .line 329
    :goto_0
    return-wide v1

    .restart local v0       #parent:Lcom/android/launcher2/CellLayoutContainer;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method getScreenForXY([I)I
    .locals 3
    .parameter "xy"

    .prologue
    .line 489
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public hide(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 281
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenView:Landroid/view/View;

    .line 283
    return-void
.end method

.method public isReOrderingEnabled()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher2/DragState;

    if-nez v9, :cond_0

    .line 131
    const/4 v9, 0x0

    .line 260
    :goto_0
    return v9

    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 142
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1

    .line 143
    iget-object v9, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v9, p0, :cond_1

    iget-object v9, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v9, v9, Lcom/android/launcher2/CellLayout;

    if-eqz v9, :cond_1

    .line 144
    iget-object v6, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 145
    .local v6, l:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 146
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 152
    .end local v6           #l:Lcom/android/launcher2/CellLayout;
    :cond_1
    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    if-eqz v9, :cond_2

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(Landroid/view/DragEvent;)V

    .line 156
    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 260
    const/4 v9, 0x0

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    .line 159
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:[I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace([I)V

    .line 161
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 162
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->setIsDragOverlapping(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEnter()V

    .line 165
    :cond_3
    const/4 v9, 0x1

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v9}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    .line 170
    const/4 v9, 0x1

    goto :goto_0

    .line 172
    :pswitch_2
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:[I

    const/4 v10, 0x0

    const/4 v11, -0x1

    aput v11, v9, v10

    .line 173
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:[I

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v9, v10

    .line 175
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v2

    .line 176
    .local v2, folder:Lcom/android/launcher2/Folder;
    if-eqz v2, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eq v2, v9, :cond_4

    .line 177
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->parentLayoutEntered()V

    .line 179
    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    .line 181
    .end local v2           #folder:Lcom/android/launcher2/Folder;
    :pswitch_3
    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_0

    .line 183
    :cond_5
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ne v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-eq v9, v10, :cond_a

    .line 184
    :cond_6
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v9}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 185
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 186
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 187
    .local v1, dragedOverChild:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v7

    .line 188
    .local v7, p:Lcom/android/launcher2/Folder;
    if-eqz v7, :cond_8

    iget-object v9, v7, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-eq v9, p0, :cond_8

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 189
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget v10, v7, Lcom/android/launcher2/Folder;->mExpandDuration:I

    add-int/lit16 v10, v10, 0x320

    add-int/lit8 v10, v10, 0x64

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 195
    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:[I

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    aput v11, v9, v10

    .line 196
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mPreviousTargetCell:[I

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    aput v11, v9, v10

    .line 202
    .end local v1           #dragedOverChild:Landroid/view/View;
    .end local v7           #p:Lcom/android/launcher2/Folder;
    :cond_7
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 190
    .restart local v1       #dragedOverChild:Landroid/view/View;
    .restart local v7       #p:Lcom/android/launcher2/Folder;
    :cond_8
    instance-of v9, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v9, :cond_9

    .line 191
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_1

    .line 193
    :cond_9
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_1

    .line 198
    .end local v1           #dragedOverChild:Landroid/view/View;
    .end local v7           #p:Lcom/android/launcher2/Folder;
    :cond_a
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v9}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v9

    if-nez v9, :cond_7

    .line 199
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v10, 0xfa

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto :goto_2

    .line 205
    :pswitch_4
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v9}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 206
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    .line 208
    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    if-nez v9, :cond_b

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0e0086

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 212
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 214
    :cond_b
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->getScreenForXY([I)I

    move-result v8

    .line 216
    .local v8, screen:I
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:[I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace([I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 219
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v0, p0, v9, v10, v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;III)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 220
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 221
    iget-object v9, v0, Lcom/android/launcher2/DragState;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    .line 223
    .local v5, item:Lcom/android/launcher2/BaseItem;
    iget v9, v5, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-le v8, v9, :cond_c

    add-int/lit8 v8, v8, 0x1

    .line 225
    :cond_c
    instance-of v9, v5, Lcom/android/launcher2/AppItem;

    if-eqz v9, :cond_e

    move-object v9, v5

    check-cast v9, Lcom/android/launcher2/AppItem;

    iget-object v9, v9, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v9, :cond_e

    move-object v9, v5

    .line 226
    check-cast v9, Lcom/android/launcher2/AppItem;

    iget-object v9, v9, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v9, v5, v8}, Lcom/android/launcher2/AppFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 240
    :cond_d
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 227
    :cond_e
    instance-of v9, v5, Lcom/android/launcher2/HomeItem;

    if-eqz v9, :cond_d

    move-object v4, v5

    .line 228
    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 229
    .local v4, homeItem:Lcom/android/launcher2/HomeItem;
    invoke-static {v4}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 230
    iget-wide v9, v4, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v9, v10}, Lcom/android/launcher2/HomeFragment;->getFolderById(J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v3

    .line 231
    .local v3, folderItem:Lcom/android/launcher2/HomeFolderItem;
    if-eqz v3, :cond_d

    .line 232
    invoke-virtual {v3, v5, v8}, Lcom/android/launcher2/HomeFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v3, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_3

    .line 242
    .end local v3           #folderItem:Lcom/android/launcher2/HomeFolderItem;
    .end local v4           #homeItem:Lcom/android/launcher2/HomeItem;
    .end local v5           #item:Lcom/android/launcher2/BaseItem;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 246
    .end local v8           #screen:I
    :pswitch_5
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    .line 247
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 248
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v9}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 250
    iget-boolean v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    if-nez v9, :cond_10

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 252
    :cond_10
    iget-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:[I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace([I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    .line 255
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenView:Landroid/view/View;

    .line 256
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDragOutline:Landroid/graphics/Bitmap;

    .line 257
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->clearDragOutlines()V

    .line 258
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFailedDrop(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 267
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mOnExitAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 270
    :cond_0
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 7
    .parameter "event"
    .parameter "fiv"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 116
    .local v2, y:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 117
    .local v0, temp:Landroid/graphics/Rect;
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    invoke-virtual {p0, p2, v0}, Lcom/android/launcher2/CellLayoutNoGap;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 121
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    if-eqz v3, :cond_0

    .line 122
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/launcher2/CellLayoutNoGap;->findDropLocation(IIILjava/lang/Object;)V

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 125
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarmListener:Lcom/android/launcher2/Alarm$OnAlarmListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/Alarm$OnAlarmListener;)V

    .line 126
    return-void
.end method

.method public onMove(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "newCellX"
    .parameter "newCellY"

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;->onMove(Landroid/view/View;II)V

    .line 355
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->getScreenForXY([I)I

    move-result v0

    .line 356
    .local v0, screen:I
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;->updateItem(Landroid/view/View;III)V

    .line 357
    return-void
.end method

.method realTimeReorder()V
    .locals 14

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->existsEmptyCell()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->snake()V

    .line 427
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/CellLayoutNoGap;->mEmptyCell:[I

    .line 428
    .local v6, empty:[I
    iget-object v10, p0, Lcom/android/launcher2/CellLayoutNoGap;->mTargetCell:[I

    .line 433
    .local v10, target:[I
    const/4 v5, 0x0

    .line 434
    .local v5, delay:I
    invoke-direct {p0, v10, v6}, Lcom/android/launcher2/CellLayoutNoGap;->readingOrderGreaterThan([I[I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 435
    const/4 v0, 0x0

    aget v0, v6, v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    const/4 v11, 0x1

    .line 436
    .local v11, wrap:Z
    :goto_0
    if-eqz v11, :cond_3

    const/4 v0, 0x1

    aget v0, v6, v0

    add-int/lit8 v9, v0, 0x1

    .line 437
    .local v9, startY:I
    :goto_1
    move v13, v9

    .local v13, y:I
    :goto_2
    const/4 v0, 0x1

    aget v0, v10, v0

    if-gt v13, v0, :cond_10

    .line 438
    const/4 v0, 0x1

    aget v0, v6, v0

    if-ne v13, v0, :cond_4

    const/4 v0, 0x0

    aget v0, v6, v0

    add-int/lit8 v8, v0, 0x1

    .line 439
    .local v8, startX:I
    :goto_3
    const/4 v0, 0x1

    aget v0, v10, v0

    if-ge v13, v0, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 440
    .local v7, endX:I
    :goto_4
    move v12, v8

    .local v12, x:I
    :goto_5
    if-gt v12, v7, :cond_7

    .line 441
    invoke-virtual {p0, v12, v13}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 442
    .local v1, v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    if-ne v1, v0, :cond_6

    .line 440
    :cond_1
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 435
    .end local v1           #v:Landroid/view/View;
    .end local v7           #endX:I
    .end local v8           #startX:I
    .end local v9           #startY:I
    .end local v11           #wrap:Z
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 436
    .restart local v11       #wrap:Z
    :cond_3
    const/4 v0, 0x1

    aget v9, v6, v0

    goto :goto_1

    .line 438
    .restart local v9       #startY:I
    .restart local v13       #y:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 439
    .restart local v8       #startX:I
    :cond_5
    const/4 v0, 0x0

    aget v7, v10, v0

    goto :goto_4

    .line 443
    .restart local v1       #v:Landroid/view/View;
    .restart local v7       #endX:I
    .restart local v12       #x:I
    :cond_6
    const/4 v0, 0x0

    aget v2, v6, v0

    const/4 v0, 0x1

    aget v3, v6, v0

    const/16 v4, 0xe6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutNoGap;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v2, 0x1

    aget v2, v6, v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->onMove(Landroid/view/View;II)V

    .line 446
    const/4 v0, 0x0

    aput v12, v6, v0

    .line 447
    const/4 v0, 0x1

    aput v13, v6, v0

    goto :goto_6

    .line 437
    .end local v1           #v:Landroid/view/View;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 454
    .end local v7           #endX:I
    .end local v8           #startX:I
    .end local v9           #startY:I
    .end local v11           #wrap:Z
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_8
    const/4 v0, 0x0

    aget v0, v6, v0

    if-nez v0, :cond_a

    const/4 v11, 0x1

    .line 455
    .restart local v11       #wrap:Z
    :goto_7
    if-eqz v11, :cond_b

    const/4 v0, 0x1

    aget v0, v6, v0

    add-int/lit8 v9, v0, -0x1

    .line 456
    .restart local v9       #startY:I
    :goto_8
    move v13, v9

    .restart local v13       #y:I
    :goto_9
    const/4 v0, 0x1

    aget v0, v10, v0

    if-lt v13, v0, :cond_10

    .line 457
    const/4 v0, 0x1

    aget v0, v6, v0

    if-ne v13, v0, :cond_c

    const/4 v0, 0x0

    aget v0, v6, v0

    add-int/lit8 v8, v0, -0x1

    .line 458
    .restart local v8       #startX:I
    :goto_a
    const/4 v0, 0x1

    aget v0, v10, v0

    if-le v13, v0, :cond_d

    const/4 v7, 0x0

    .line 459
    .restart local v7       #endX:I
    :goto_b
    move v12, v8

    .restart local v12       #x:I
    :goto_c
    if-lt v12, v7, :cond_f

    .line 460
    invoke-virtual {p0, v12, v13}, Lcom/android/launcher2/CellLayoutNoGap;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 461
    .restart local v1       #v:Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDraggingView:Landroid/view/View;

    if-ne v1, v0, :cond_e

    .line 459
    :cond_9
    :goto_d
    add-int/lit8 v12, v12, -0x1

    goto :goto_c

    .line 454
    .end local v1           #v:Landroid/view/View;
    .end local v7           #endX:I
    .end local v8           #startX:I
    .end local v9           #startY:I
    .end local v11           #wrap:Z
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_a
    const/4 v11, 0x0

    goto :goto_7

    .line 455
    .restart local v11       #wrap:Z
    :cond_b
    const/4 v0, 0x1

    aget v9, v6, v0

    goto :goto_8

    .line 457
    .restart local v9       #startY:I
    .restart local v13       #y:I
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    goto :goto_a

    .line 458
    .restart local v8       #startX:I
    :cond_d
    const/4 v0, 0x0

    aget v7, v10, v0

    goto :goto_b

    .line 462
    .restart local v1       #v:Landroid/view/View;
    .restart local v7       #endX:I
    .restart local v12       #x:I
    :cond_e
    const/4 v0, 0x0

    aget v2, v6, v0

    const/4 v0, 0x1

    aget v3, v6, v0

    const/16 v4, 0xe6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayoutNoGap;->animateChildToPosition(Landroid/view/View;IIII)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 464
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v2, 0x1

    aget v2, v6, v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher2/CellLayoutNoGap;->onMove(Landroid/view/View;II)V

    .line 465
    const/4 v0, 0x0

    aput v12, v6, v0

    .line 466
    const/4 v0, 0x1

    aput v13, v6, v0

    goto :goto_d

    .line 456
    .end local v1           #v:Landroid/view/View;
    :cond_f
    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    .line 473
    .end local v7           #endX:I
    .end local v8           #startX:I
    .end local v12           #x:I
    :cond_10
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mCurrentDragInfo:Lcom/android/launcher2/BaseItem;

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 292
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-interface {v1, v0}, Lcom/android/launcher2/FolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    .line 294
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->refreshIconView()V

    goto :goto_0
.end method

.method public setEnableReOrdering(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 493
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReOrderingEnabled:Z

    .line 494
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenView:Landroid/view/View;

    .line 277
    return-void
.end method

.method protected snake()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method updateCustomViewToCellLayout()V
    .locals 7

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    .line 517
    .local v1, countX:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 518
    .local v3, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 519
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 518
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 522
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    .line 523
    .local v5, pos:I
    rem-int v6, v5, v1

    iput v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 524
    div-int v6, v5, v1

    iput v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 525
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 527
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v5           #pos:I
    :cond_1
    return-void
.end method

.method updateItem(Landroid/view/View;III)V
    .locals 8
    .parameter "view"
    .parameter "screen"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/BaseItem;

    .line 364
    .local v7, item:Lcom/android/launcher2/BaseItem;
    invoke-static {v7}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v0

    mul-int/2addr v0, p4

    add-int/2addr v0, p3

    invoke-virtual {v7, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 372
    instance-of v0, v7, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result p2

    move-object v1, v7

    .line 375
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 377
    .local v1, h:Lcom/android/launcher2/HomeItem;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v2, v1, Lcom/android/launcher2/HomeItem;->container:J

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIII)V

    goto :goto_0
.end method

.method updateViewToCellLayout(I)V
    .locals 8
    .parameter "oldCountX"

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getCountX()I

    move-result v1

    .line 502
    .local v1, countX:I
    if-lez p1, :cond_0

    if-eq p1, v1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 504
    .local v4, l:Lcom/android/launcher2/CellLayoutChildren;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 505
    invoke-virtual {v4, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 507
    .local v5, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr v6, p1

    iget v7, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int v2, v6, v7

    .line 508
    .local v2, gridPosition:I
    rem-int v6, v2, v1

    iput v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 509
    div-int v6, v2, v1

    iput v6, v5, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 510
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 513
    .end local v0           #child:Landroid/view/View;
    .end local v2           #gridPosition:I
    .end local v3           #i:I
    .end local v4           #l:Lcom/android/launcher2/CellLayoutChildren;
    .end local v5           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method
