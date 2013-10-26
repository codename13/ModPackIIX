.class Lcom/android/launcher2/PanelDrawer$Functor;
.super Lcom/android/launcher2/DrawGLFunction$Callback;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PanelDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Functor"
.end annotation


# instance fields
.field mAlpha:F

.field mBackgroundDarken:F

.field mBlend:Z

.field mHeight:I

.field mWidth:I

.field final synthetic this$0:Lcom/android/launcher2/PanelDrawer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PanelDrawer;IIFFZ)V
    .locals 0
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "alpha"
    .parameter "backgroundDarken"
    .parameter "blend"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    invoke-direct {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;-><init>()V

    .line 265
    iput p4, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mAlpha:F

    .line 266
    iput p5, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBackgroundDarken:F

    .line 267
    iput-boolean p6, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBlend:Z

    .line 268
    iput p2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mWidth:I

    .line 269
    iput p3, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mHeight:I

    .line 270
    return-void
.end method


# virtual methods
.method public drawGL([F)V
    .locals 9
    .parameter "transform"

    .prologue
    const/4 v1, 0x2

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    #getter for: Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I
    invoke-static {v0}, Lcom/android/launcher2/PanelDrawer;->access$000(Lcom/android/launcher2/PanelDrawer;)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mWidth:I

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    #getter for: Lcom/android/launcher2/PanelDrawer;->mLastWidth:I
    invoke-static {v2}, Lcom/android/launcher2/PanelDrawer;->access$100(Lcom/android/launcher2/PanelDrawer;)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mHeight:I

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    #getter for: Lcom/android/launcher2/PanelDrawer;->mLastHeight:I
    invoke-static {v2}, Lcom/android/launcher2/PanelDrawer;->access$200(Lcom/android/launcher2/PanelDrawer;)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mWidth:I

    #setter for: Lcom/android/launcher2/PanelDrawer;->mLastWidth:I
    invoke-static {v0, v2}, Lcom/android/launcher2/PanelDrawer;->access$102(Lcom/android/launcher2/PanelDrawer;I)I

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mHeight:I

    #setter for: Lcom/android/launcher2/PanelDrawer;->mLastHeight:I
    invoke-static {v0, v2}, Lcom/android/launcher2/PanelDrawer;->access$202(Lcom/android/launcher2/PanelDrawer;I)I

    .line 277
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    #calls: Lcom/android/launcher2/PanelDrawer;->loadVBOs()V
    invoke-static {v0}, Lcom/android/launcher2/PanelDrawer;->access$300(Lcom/android/launcher2/PanelDrawer;)V

    .line 280
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBlend:Z

    if-eqz v0, :cond_2

    .line 281
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 282
    const v0, 0x8006

    invoke-static {v0}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    .line 283
    const/16 v0, 0x303

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 290
    const v0, 0x8892

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    #getter for: Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I
    invoke-static {v2}, Lcom/android/launcher2/PanelDrawer;->access$000(Lcom/android/launcher2/PanelDrawer;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 291
    const v0, 0x8893

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    #getter for: Lcom/android/launcher2/PanelDrawer;->mIndiciesBuffer:I
    invoke-static {v2}, Lcom/android/launcher2/PanelDrawer;->access$400(Lcom/android/launcher2/PanelDrawer;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 293
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 294
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 296
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x10

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 298
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 301
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muMVMatrixHandle:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 302
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muPMatrixHandle:I

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget-object v1, v1, Lcom/android/launcher2/PanelDrawer;->mProjectionMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 303
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muAlpha:I

    iget v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 304
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBlend:Z

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBackgroundDarken:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muHighlightXMLHandle:I

    invoke-static {v0, v8, v8}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 315
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->msTextureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 316
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->msHighlightHandle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 318
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 319
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v1, v1, Lcom/android/launcher2/PanelDrawer;->mTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 320
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 321
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v1, v1, Lcom/android/launcher2/PanelDrawer;->mHighlightTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 323
    const/4 v0, 0x4

    const/16 v1, 0x36

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 325
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 326
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 329
    const v0, 0x8892

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 330
    const v0, 0x8893

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 331
    return-void

    .line 285
    :cond_2
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget-boolean v0, v0, Lcom/android/launcher2/PanelDrawer;->mIgnoreDarken:Z

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBackgroundDarken:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBackgroundDarken:I

    iget v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBackgroundDarken:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1
.end method
