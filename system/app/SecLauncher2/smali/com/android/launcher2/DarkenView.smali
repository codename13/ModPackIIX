.class public Lcom/android/launcher2/DarkenView;
.super Landroid/view/View;
.source "DarkenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DarkenView$Drawer;
    }
.end annotation


# instance fields
.field final mDrawer:Lcom/android/launcher2/DarkenView$Drawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DarkenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Lcom/android/launcher2/DarkenView$Drawer;

    invoke-direct {v0}, Lcom/android/launcher2/DarkenView$Drawer;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    .line 20
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 24
    instance-of v0, p1, Landroid/view/HardwareCanvas;

    if-eqz v0, :cond_0

    .line 25
    check-cast p1, Landroid/view/HardwareCanvas;

    .end local p1
    iget-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    invoke-static {p1, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/view/HardwareCanvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 27
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 56
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    #getter for: Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F
    invoke-static {v0}, Lcom/android/launcher2/DarkenView$Drawer;->access$000(Lcom/android/launcher2/DarkenView$Drawer;)F

    move-result v0

    return v0
.end method

.method public onSetAlpha(I)Z
    .locals 3
    .parameter "a"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/launcher2/DarkenView;->mDrawer:Lcom/android/launcher2/DarkenView$Drawer;

    int-to-float v1, p1

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    #setter for: Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F
    invoke-static {v0, v1}, Lcom/android/launcher2/DarkenView$Drawer;->access$002(Lcom/android/launcher2/DarkenView$Drawer;F)F

    .line 32
    const/4 v0, 0x1

    return v0
.end method
