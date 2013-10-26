.class public Lcom/android/launcher2/CellLayoutWithResizableWidgets;
.super Lcom/android/launcher2/CellLayout;
.source "CellLayoutWithResizableWidgets.java"


# instance fields
.field private mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public clearResizeFrame()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->realRemoveView(Landroid/view/View;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 58
    return-void
.end method

.method public getResizeFrame()Lcom/android/launcher2/AppWidgetResizeFrame;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    return-object v0
.end method

.method public isPointInRegion(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 66
    .local v0, temp:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 68
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    .line 72
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHitRect(Landroid/graphics/Rect;)V

    .line 73
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    goto :goto_0
.end method

.method public setResizeFrame(Lcom/android/launcher2/LauncherAppWidgetHostView;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "widget"
    .parameter "onFinish"

    .prologue
    const/4 v4, 0x0

    .line 27
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    new-instance v2, Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    invoke-direct {v2, v3, v1, p1, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher2/HomeWidgetItem;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayoutWithResizableWidgets;)V

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 31
    if-eqz p2, :cond_2

    .line 32
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    new-instance v2, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;

    invoke-direct {v2, p0, p2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets$1;-><init>(Lcom/android/launcher2/CellLayoutWithResizableWidgets;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->addView(Landroid/view/View;)V

    .line 44
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->mFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 46
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setClipChildren(Z)V

    .line 47
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setClipToPadding(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 49
    .local v0, p:Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 50
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 51
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #p:Landroid/view/ViewParent;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0
.end method
