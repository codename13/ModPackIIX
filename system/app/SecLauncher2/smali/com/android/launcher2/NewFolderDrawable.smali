.class public Lcom/android/launcher2/NewFolderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NewFolderDrawable.java"


# static fields
.field public static final OPEN_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewFolderDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mBack:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mCamera:Landroid/graphics/Camera;

.field private mFront:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOpenFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-class v0, Lcom/android/launcher2/NewFolderDrawable;

    const-class v1, Ljava/lang/Float;

    const-string v2, "openFactor"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    .line 20
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 21
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    .line 34
    iput-object p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, 0xcccccc

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 37
    return-void
.end method

.method private drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V
    .locals 7
    .parameter "canvas"
    .parameter "d"
    .parameter "openAngle"

    .prologue
    const/4 v6, 0x0

    .line 46
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 47
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    .line 48
    .local v1, focalX:F
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 52
    .local v2, focalY:F
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f451eb8

    mul-float/2addr v3, v4

    sub-float v0, v3, v2

    .line 54
    .local v0, bottomOfFolder:F
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    const/high16 v4, -0x3e10

    iget v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 55
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    const/high16 v4, -0x3ee0

    iget v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateZ(F)V

    .line 56
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    neg-float v4, v0

    invoke-virtual {v3, v6, v4, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 57
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 58
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v6, v0, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 62
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 63
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 64
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 65
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 68
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 70
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x41a0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/NewFolderDrawable;->drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 42
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x3e10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/NewFolderDrawable;->drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;F)V

    .line 43
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, -0x3

    return v0
.end method

.method public getOpenFactor()F
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 103
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5
    .parameter "level"

    .prologue
    const/4 v4, 0x1

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 75
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 80
    :cond_0
    sget-object v1, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v2, v4, [F

    const/4 v3, 0x0

    if-ne p1, v4, :cond_1

    const/high16 v0, 0x3f80

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mAnimator:Landroid/animation/Animator;

    .line 81
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 84
    return v4

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 88
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 91
    return-void
.end method

.method public setOpenFactor(F)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 27
    iput p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    .line 28
    invoke-virtual {p0}, Lcom/android/launcher2/NewFolderDrawable;->invalidateSelf()V

    .line 29
    return-void
.end method
