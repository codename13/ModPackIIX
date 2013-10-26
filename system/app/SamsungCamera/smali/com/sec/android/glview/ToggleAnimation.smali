.class Lcom/sec/android/glview/ToggleAnimation;
.super Landroid/view/animation/Animation;
.source "TwGLUtil.java"


# static fields
.field static final ORIENTATION_0:I = 0x0

.field static final ORIENTATION_180:I = 0x2

.field static final ORIENTATION_270:I = 0x3

.field static final ORIENTATION_90:I = 0x1


# instance fields
.field cx:F

.field cy:F

.field mOrientation:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/high16 v3, 0x4334

    .line 745
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 747
    .local v0, cam:Landroid/graphics/Camera;
    iget v2, p0, Lcom/sec/android/glview/ToggleAnimation;->mOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 759
    :goto_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 760
    .local v1, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 762
    iget v2, p0, Lcom/sec/android/glview/ToggleAnimation;->cx:F

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/ToggleAnimation;->cy:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 763
    iget v2, p0, Lcom/sec/android/glview/ToggleAnimation;->cx:F

    iget v3, p0, Lcom/sec/android/glview/ToggleAnimation;->cy:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 764
    return-void

    .line 750
    .end local v1           #matrix:Landroid/graphics/Matrix;
    :pswitch_0
    mul-float v2, v3, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_0

    .line 754
    :pswitch_1
    mul-float v2, v3, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    const/high16 v1, 0x4000

    .line 736
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 737
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/ToggleAnimation;->cx:F

    .line 738
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/ToggleAnimation;->cy:F

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/ToggleAnimation;->mOrientation:I

    .line 740
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/ToggleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 741
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 767
    iput p1, p0, Lcom/sec/android/glview/ToggleAnimation;->mOrientation:I

    .line 768
    return-void
.end method
