.class Lcom/android/launcher2/BlendedDarkenView$Drawer;
.super Lcom/android/launcher2/DrawGLFunction$Callback;
.source "BlendedDarkenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BlendedDarkenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Drawer"
.end annotation


# instance fields
.field private mAlpha:F

.field final synthetic this$0:Lcom/android/launcher2/BlendedDarkenView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/BlendedDarkenView;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->this$0:Lcom/android/launcher2/BlendedDarkenView;

    invoke-direct {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/BlendedDarkenView$Drawer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 208
    iget v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/BlendedDarkenView$Drawer;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 208
    iput p1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    return p1
.end method


# virtual methods
.method public drawGL([F)V
    .locals 8
    .parameter "transform"

    .prologue
    const v7, 0x8893

    const v6, 0x8892

    const/4 v3, 0x0

    .line 215
    iget v0, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 217
    :cond_0
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 218
    const v0, 0x8006

    invoke-static {v0}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    .line 219
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 221
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$100()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 223
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$200()I

    move-result v0

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 224
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$300()I

    move-result v0

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 226
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$400()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 228
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$400()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 231
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$500()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/BlendedDarkenView$Drawer;->mAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 233
    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 235
    invoke-static {}, Lcom/android/launcher2/BlendedDarkenView;->access$400()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 238
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 239
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto :goto_0
.end method
