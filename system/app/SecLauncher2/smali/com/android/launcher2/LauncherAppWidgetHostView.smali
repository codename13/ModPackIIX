.class public Lcom/android/launcher2/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private final lastSpanBitmap:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final mLastTouch:[I

.field private mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 46
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 41
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    .line 43
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private getViewBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->clearFocus()V

    .line 82
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setPressed(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->willNotCacheDrawing()Z

    move-result v4

    .line 85
    .local v4, willNotCache:Z
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setWillNotCacheDrawing(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 90
    .local v3, color:I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setDrawingCacheBackgroundColor(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAlpha()F

    move-result v0

    .line 92
    .local v0, alpha:F
    const/high16 v5, 0x3f80

    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setAlpha(F)V

    .line 94
    if-eqz v3, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->destroyDrawingCache()V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->buildDrawingCache()V

    .line 98
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 99
    .local v2, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 111
    :goto_0
    return-object v1

    .line 103
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->destroyDrawingCache()V

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setAlpha(F)V

    .line 108
    invoke-virtual {p0, v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setWillNotCacheDrawing(Z)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 195
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    return-void
.end method


# virtual methods
.method public bitmapNeedsUpdated(II)Z
    .locals 3
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 51
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    aget v2, v2, v1

    if-eq p2, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 203
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 206
    :cond_0
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 210
    const/high16 v0, 0x6

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v2, :cond_0

    .line 123
    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 153
    :goto_0
    return v0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 153
    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 132
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 133
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_1

    .line 139
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 140
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    :cond_2
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_1

    .line 145
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 3
    .parameter "wMeasureSpec"
    .parameter "hMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    const/high16 v1, -0x8000

    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 161
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 163
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 164
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 166
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onMeasure(II)V

    .line 167
    return-void
.end method

.method public updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "cl"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "sb"

    .prologue
    .line 55
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    :goto_0
    return-object v5

    .line 56
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const/4 v6, 0x0

    aput p2, v5, v6

    .line 57
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const/4 v6, 0x1

    aput p3, v5, v6

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 61
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 62
    .local v3, tempSpanX:I
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 63
    .local v4, tempSpanY:I
    iput p2, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 64
    iput p3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 66
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 68
    iget v0, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 69
    .local v0, childLeft:I
    iget v1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 70
    .local v1, childTop:I
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v5, v0

    iget v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v6, v1

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/android/launcher2/LauncherAppWidgetHostView;->layout(IIII)V

    .line 72
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    .line 73
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v5}, Lcom/android/launcher2/ShadowBuilder;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iput v3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 76
    iput v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 77
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
