.class public Lcom/android/launcher2/NewPageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NewPageDrawable.java"


# static fields
.field public static final OPEN_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewPageDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private mBack:Landroid/graphics/drawable/Drawable;

.field private mFront:Landroid/graphics/drawable/Drawable;

.field private mOpenFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const-class v0, Lcom/android/launcher2/NewPageDrawable;

    const-class v1, Ljava/lang/Float;

    const-string v2, "openFactor"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/NewPageDrawable;->OPEN_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "d"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    .line 29
    iput-object p1, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object p1, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 32
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, 0xcccccc

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 33
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const v3, 0x3d4ccccd

    const v2, -0x42b33333

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 38
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 46
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 48
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, -0x3

    return v0
.end method

.method public getOpenFactor()F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "bounds"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5
    .parameter "level"

    .prologue
    const/4 v4, 0x1

    .line 52
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 53
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 58
    :cond_0
    sget-object v1, Lcom/android/launcher2/NewPageDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v2, v4, [F

    const/4 v3, 0x0

    if-ne p1, v4, :cond_1

    const/high16 v0, 0x3f80

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    .line 59
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 60
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 61
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 62
    return v4

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 66
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 69
    return-void
.end method

.method public setOpenFactor(F)V
    .locals 0
    .parameter "factor"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    .line 23
    invoke-virtual {p0}, Lcom/android/launcher2/NewPageDrawable;->invalidateSelf()V

    .line 24
    return-void
.end method
