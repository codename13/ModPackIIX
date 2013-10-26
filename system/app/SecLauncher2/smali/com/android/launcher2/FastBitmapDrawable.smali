.class public Lcom/android/launcher2/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "FastBitmapDrawable"

    sput-object v0, Lcom/android/launcher2/FastBitmapDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 38
    const-string v0, "FastBitmapDrawable Constructor"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;->ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 39
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    .line 40
    iput-object p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    .line 43
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method private ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "msg"
    .parameter "bitmap"

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NULL bitmap, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycled bitmap bmp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 62
    iget v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v1, "FastBitmapDrawable draw"

    iget-object v2, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;->ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 64
    iget-object v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 66
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mAlpha:I

    .line 83
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 84
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 116
    const-string v0, "FastBitmapDrawable setBitmap"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/FastBitmapDrawable;->ensureBitmapIntegrity(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 117
    iput-object p1, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    .line 120
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mHeight:I

    iput v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 73
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .parameter "filterBitmap"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 89
    return-void
.end method
