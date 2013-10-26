.class public Lcom/android/launcher2/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mGapX:I

.field private mGapY:I

.field private mPaint:Landroid/graphics/Paint;

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mPaint:Landroid/graphics/Paint;

    .line 47
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .parameter "v"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 232
    .local v0, grandParent:Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v3, :cond_0

    .line 233
    instance-of v3, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 234
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 235
    .local v1, icon:Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 236
    .local v2, item:Lcom/android/launcher2/BaseItem;
    if-eqz v2, :cond_2

    .line 237
    const-string v3, "CellLayoutChildren"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addView() adding view to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v1           #icon:Lcom/android/launcher2/AppIconView;
    .end local v2           #item:Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 244
    instance-of v3, p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v3, :cond_1

    .line 245
    check-cast p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    .end local p1
    invoke-interface {p1}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Lcom/android/launcher2/DynamicShadowMixin;->setViewToInvalidate(Landroid/view/View;)V

    .line 248
    :cond_1
    return-void

    .line 238
    .restart local v1       #icon:Lcom/android/launcher2/AppIconView;
    .restart local v2       #item:Lcom/android/launcher2/BaseItem;
    .restart local p1
    :cond_2
    instance-of v3, v1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v3, :cond_0

    .line 239
    const-string v3, "CellLayoutChildren"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addView() adding all apps icon to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " child count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 180
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 181
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public disableHardwareLayers()V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    :cond_0
    return-void
.end method

.method public drawShadows(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    .end local v1           #v:Landroid/view/View;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    .restart local v1       #v:Landroid/view/View;
    :cond_1
    instance-of v2, v1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v2, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    check-cast v1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    .end local v1           #v:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/DynamicShadowMixin;->draw(Landroid/graphics/Canvas;)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 262
    :cond_2
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 59
    :cond_0
    return-void
.end method

.method public findFolderIcon(J)Lcom/android/launcher2/FolderIconView;
    .locals 5
    .parameter "id"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 220
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 221
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, c:Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getContainerType()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 223
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .line 226
    .end local v0           #c:Landroid/view/View;
    :goto_1
    return-object v0

    .line 220
    .restart local v0       #c:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v0           #c:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 76
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/android/launcher2/AllappsIcon;

    if-nez v4, :cond_1

    .line 76
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 81
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 86
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 8
    .parameter "item"

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 91
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 92
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 94
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    .line 95
    check-cast v3, Lcom/android/launcher2/BaseItem;

    .end local v3           #tag:Ljava/lang/Object;
    iget-wide v4, v3, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v6, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 98
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v0

    .line 91
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 7
    .parameter "child"

    .prologue
    .line 118
    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    .line 119
    .local v1, cellWidth:I
    iget v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    .line 120
    .local v0, cellHeight:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 122
    .local v4, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {v4, v1, v0, v5, v6}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 123
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v6, 0x4000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 124
    .local v2, childWidthMeasureSpec:I
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 126
    .local v3, childheightMeasureSpec:I
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 127
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 132
    .local v11, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v11, :cond_1

    .line 133
    invoke-virtual {p0, v13}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 134
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 135
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 137
    .local v14, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 138
    .local v9, childLeft:I
    iget v10, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 140
    .local v10, childTop:I
    :try_start_0
    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    iget-boolean v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 148
    iget-object v7, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 149
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayoutChildren;->getLocationOnScreen([I)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 132
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v14           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 141
    .restart local v9       #childLeft:I
    .restart local v10       #childTop:I
    .restart local v14       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :catch_0
    move-exception v12

    .line 142
    .local v12, e:Ljava/lang/Exception;
    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child layout exception. child tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    .end local v8           #child:Landroid/view/View;
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v12           #e:Ljava/lang/Exception;
    .end local v14           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 104
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v0           #child:Landroid/view/View;
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 109
    .local v4, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 110
    .local v2, heightSpecSize:I
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->setMeasuredDimension(II)V

    .line 111
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 169
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 172
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 0
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "gapX"
    .parameter "gapY"

    .prologue
    .line 68
    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    .line 69
    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    .line 70
    iput p3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    .line 71
    iput p4, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    .line 72
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 189
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 193
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 194
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 189
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 202
    return-void
.end method

.method public setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 4
    .parameter "lp"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 115
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public updateChildrenToNewPage(ILjava/util/List;)V
    .locals 4
    .parameter "page"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p2, ls:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 206
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 207
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 209
    .local v2, item:Lcom/android/launcher2/HomeItem;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->UseContextualPageFeature:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/android/launcher2/HomeItem;->isContextualPageItem:Z

    if-eqz v3, :cond_0

    .line 214
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iput p1, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    goto :goto_1

    .line 216
    .end local v2           #item:Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method
