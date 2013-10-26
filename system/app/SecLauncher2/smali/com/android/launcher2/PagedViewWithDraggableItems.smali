.class public abstract Lcom/android/launcher2/PagedViewWithDraggableItems;
.super Lcom/android/launcher2/PagedView;
.source "PagedViewWithDraggableItems.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDragSlopeThreshold:F

.field private mIsDragEnabled:Z

.field private mIsDragging:Z

.field private mLastTouchedItem:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->cancelDragging()V

    .line 70
    iput-boolean v2, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    goto :goto_0

    .line 73
    :pswitch_2
    iget v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->determineDraggingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 54
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 55
    .local v0, wasDragging:Z
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 56
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected cancelDragging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    .line 62
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    .line 63
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    .line 128
    .local v1, xDiff:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v2, v6

    .line 130
    .local v2, yDiff:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-le v2, v6, :cond_1

    move v3, v4

    .line 131
    .local v3, yMoved:Z
    :goto_0
    int-to-float v6, v2

    int-to-float v7, v1

    div-float/2addr v6, v7

    iget v7, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mDragSlopeThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    move v0, v4

    .line 133
    .local v0, isUpwardMotion:Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 135
    iget-object v4, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->cancelCurrentPageLongPress()V

    .line 140
    :cond_0
    return-void

    .end local v0           #isUpwardMotion:Z
    .end local v3           #yMoved:Z
    :cond_1
    move v3, v5

    .line 130
    goto :goto_0

    .restart local v3       #yMoved:Z
    :cond_2
    move v0, v5

    .line 131
    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->cancelDragging()V

    .line 149
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onDetachedFromWindow()V

    .line 150
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 83
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 89
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragSlopeThreshold(F)V
    .locals 0
    .parameter "dragSlopeThreshold"

    .prologue
    .line 143
    iput p1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mDragSlopeThreshold:F

    .line 144
    return-void
.end method
