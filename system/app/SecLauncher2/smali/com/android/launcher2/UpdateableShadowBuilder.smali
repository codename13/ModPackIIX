.class abstract Lcom/android/launcher2/UpdateableShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "UpdateableShadowBuilder.java"


# instance fields
.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 15
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_0

    .line 66
    :goto_0
    return-void

    .line 55
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 57
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    iget-object v2, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 61
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 62
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "UpdateableShadowBuilder"

    const-string v3, "Not enough memory to draw shadow"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .end local v1           #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v2
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 63
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_1
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "UpdateableShadowBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to draw shadow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public draw()V
    .locals 5

    .prologue
    .line 30
    iget-object v2, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    if-nez v2, :cond_0

    .line 44
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 34
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/launcher2/UpdateableShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :try_start_2
    iget-object v2, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 39
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "UpdateableShadowBuilder"

    const-string v3, "Not enough memory to draw shadow"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    .end local v1           #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v0       #canvas:Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v2
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 41
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_1
    move-exception v1

    .line 42
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "UpdateableShadowBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to draw shadow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract getPaint()Landroid/graphics/Paint;
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 19
    return-void
.end method

.method public releaseSurface()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    .line 27
    return-void
.end method

.method public abstract resetPaint()V
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/launcher2/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    .line 23
    return-void
.end method
