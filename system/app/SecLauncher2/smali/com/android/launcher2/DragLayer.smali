.class public Lcom/android/launcher2/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragLayer$LayoutParams;
    }
.end annotation


# static fields
.field private static sFrameHitRect:Landroid/graphics/Rect;

.field static sIsDragState:Z

.field private static sTouchPt:Landroid/graphics/PointF;


# instance fields
.field private mShadow:Lcom/android/launcher2/ShadowBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/DragLayer;->sFrameHitRect:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/android/launcher2/DragLayer;->sTouchPt:Landroid/graphics/PointF;

    .line 162
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/DragLayer;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/DragState;

    if-nez v2, :cond_0

    .line 175
    :goto_0
    return v1

    .line 166
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragState;

    .line 168
    .local v0, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 169
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/DragLayer;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 170
    sput-boolean v3, Lcom/android/launcher2/DragLayer;->sIsDragState:Z

    .line 175
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 172
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/DragLayer;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 173
    sput-boolean v1, Lcom/android/launcher2/DragLayer;->sIsDragState:Z

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 127
    const/4 v4, 0x0

    .line 133
    .local v4, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v6, v6, Lcom/android/launcher2/Launcher;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v6}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    .line 135
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v6, v7, :cond_0

    .line 136
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 137
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 138
    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 140
    .local v0, cellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;

    move-result-object v3

    .line 141
    .local v3, resizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;
    if-eqz v3, :cond_2

    .line 142
    sget-object v6, Lcom/android/launcher2/DragLayer;->sFrameHitRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/AppWidgetResizeFrame;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 156
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #resizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;
    .end local v5           #workspace:Lcom/android/launcher2/Workspace;
    :cond_0
    :goto_1
    return v4

    .line 145
    .restart local v0       #cellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #resizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;
    .restart local v5       #workspace:Lcom/android/launcher2/Workspace;
    :cond_1
    sget-object v6, Lcom/android/launcher2/DragLayer;->sTouchPt:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 146
    sget-object v6, Lcom/android/launcher2/DragLayer;->sFrameHitRect:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/launcher2/DragLayer;->sTouchPt:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    sget-object v8, Lcom/android/launcher2/DragLayer;->sTouchPt:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 147
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 148
    const/4 v4, 0x1

    goto :goto_1

    .line 137
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result v1

    .line 103
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .local v2, flp:Landroid/widget/FrameLayout$LayoutParams;
    instance-of v6, v2, Lcom/android/launcher2/DragLayer$LayoutParams;

    if-eqz v6, :cond_0

    move-object v4, v2

    .line 107
    check-cast v4, Lcom/android/launcher2/DragLayer$LayoutParams;

    .line 108
    .local v4, lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    iget-boolean v6, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v6, :cond_0

    .line 109
    iget v6, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v7, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v8, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    iget v9, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v8, v9

    iget v9, v4, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    iget v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 103
    .end local v4           #lp:Lcom/android/launcher2/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v0           #child:Landroid/view/View;
    .end local v2           #flp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 116
    .local v5, rootView:Landroid/view/View;
    sget-object v6, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/PanelDrawer;->setViewport(II)V

    .line 118
    .end local v5           #rootView:Landroid/view/View;
    :cond_2
    sget-object v6, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v6}, Lcom/android/launcher2/PanelDrawer;->hasLoadedResources()Z

    move-result v6

    if-nez v6, :cond_3

    .line 119
    sget-object v6, Lcom/android/launcher2/HomeFragment;->sPanelDrawer:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/PanelDrawer;->loadResources(Landroid/content/res/Resources;)V

    .line 120
    :cond_3
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 180
    :cond_0
    if-nez p1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->draw()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowBuilder;->clear()V

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 52
    return-void
.end method
