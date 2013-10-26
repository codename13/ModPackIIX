.class Lcom/android/launcher2/PanelDrawer$PanelDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PanelDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelDrawable"
.end annotation


# instance fields
.field private mAlpha:I

.field private mBackgroundDarken:F

.field private mBlend:Z

.field private mBounds:Landroid/graphics/Rect;

.field private mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

.field final synthetic this$0:Lcom/android/launcher2/PanelDrawer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PanelDrawer;)V
    .locals 1
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 403
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 406
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 411
    instance-of v0, p1, Landroid/view/HardwareCanvas;

    if-nez v0, :cond_1

    .line 414
    const-string v0, "PanelDrawer"

    const-string v1, "PanelDrawable only works with a HardwareCanvas."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 422
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 423
    .local v2, width:I
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 424
    .local v3, height:I
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float v4, v0, v1

    .line 426
    .local v4, alpha:F
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 433
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 434
    new-instance v0, Lcom/android/launcher2/PanelDrawer$Functor;

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v5, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    iget-boolean v6, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer$Functor;-><init>(Lcom/android/launcher2/PanelDrawer;IIFFZ)V

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    move-object v7, p1

    .line 436
    check-cast v7, Landroid/view/HardwareCanvas;

    .line 438
    .local v7, hwcanvas:Landroid/view/HardwareCanvas;
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v7, v0}, Lcom/android/launcher2/DrawGLFunction;->call(Landroid/view/HardwareCanvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 480
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 481
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mFunctor:Lcom/android/launcher2/PanelDrawer$Functor;

    invoke-static {v0}, Lcom/android/launcher2/DrawGLFunction;->destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V

    .line 483
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 445
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "padding"

    .prologue
    .line 488
    const/16 v0, 0x14

    .line 489
    .local v0, p:I
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 490
    const/4 v1, 0x1

    return v1
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 476
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 450
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 451
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mAlpha:I

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 454
    :cond_0
    return-void
.end method

.method public setBackgroundDarken(F)V
    .locals 1
    .parameter "d"

    .prologue
    .line 457
    iget v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 458
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBackgroundDarken:F

    .line 459
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 461
    :cond_0
    return-void
.end method

.method public setBlend(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    if-eq v0, p1, :cond_0

    .line 465
    iput-boolean p1, p0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->mBlend:Z

    .line 466
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;->invalidateSelf()V

    .line 468
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 471
    return-void
.end method
