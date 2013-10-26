.class Lcom/android/launcher2/DynamicShadowMixin;
.super Ljava/lang/Object;
.source "DynamicShadowMixin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DynamicShadowMixin$Holder;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDestRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowBitmapDirty:Z

.field private mSourceRect:Landroid/graphics/Rect;

.field private mView:Landroid/view/View;

.field private mViewToInvalidateOnShadowDirty:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mSourceRect:Landroid/graphics/Rect;

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mDestRect:Landroid/graphics/Rect;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mPaint:Landroid/graphics/Paint;

    .line 14
    iput-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBitmapDirty:Z

    .line 16
    iput-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mViewToInvalidateOnShadowDirty:Landroid/view/View;

    .line 17
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    .line 24
    iput-object p1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    .line 25
    return-void
.end method

.method public static native nGaussianBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 28
    iget-object v13, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    .line 29
    .local v13, v:Landroid/view/View;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->AA:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    .line 33
    .local v6, alpha:F
    iget-boolean v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBitmapDirty:Z

    if-eqz v0, :cond_3

    .line 34
    const/4 v8, 0x3

    .line 35
    .local v8, border:I
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v10, v0, 0x6

    .line 36
    .local v10, neededWidth:I
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v9, v0, 0x6

    .line 37
    .local v9, neededHeight:I
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v9, :cond_2

    .line 39
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    .line 44
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    .line 45
    .local v7, b:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 47
    const/high16 v12, 0x3f00

    .line 48
    .local v12, scale:F
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 49
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v0, v8, v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 50
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v8

    int-to-float v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 52
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v12, v12}, Landroid/graphics/Canvas;->scale(FF)V

    .line 54
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 58
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 60
    invoke-static {v7, v7}, Lcom/android/launcher2/DynamicShadowMixin;->nGaussianBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    .line 62
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mSourceRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    const/16 v11, 0x8

    .line 64
    .local v11, offset:I
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mDestRect:Landroid/graphics/Rect;

    neg-int v1, v8

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v11

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBitmapDirty:Z

    .line 71
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v8           #border:I
    .end local v9           #neededHeight:I
    .end local v10           #neededWidth:I
    .end local v11           #offset:I
    .end local v12           #scale:F
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4316

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mSourceRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher2/DynamicShadowMixin;->mDestRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DynamicShadowMixin;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mShadowBitmapDirty:Z

    .line 80
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mViewToInvalidateOnShadowDirty:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/DynamicShadowMixin;->mViewToInvalidateOnShadowDirty:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 83
    :cond_0
    return-void
.end method

.method public setViewToInvalidate(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/launcher2/DynamicShadowMixin;->mViewToInvalidateOnShadowDirty:Landroid/view/View;

    .line 92
    return-void
.end method
