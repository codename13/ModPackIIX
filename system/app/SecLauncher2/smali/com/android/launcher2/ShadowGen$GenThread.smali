.class Lcom/android/launcher2/ShadowGen$GenThread;
.super Ljava/lang/Thread;
.source "ShadowGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ShadowGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenThread"
.end annotation


# static fields
.field private static final BITMAP_PROCESS_BLK_SIZE:I = 0x4

.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShadowGen$GenThread"

.field private static final sFragmentSource:Ljava/lang/String; = "precision mediump float;\nvarying vec3 vPosition;\nuniform sampler2D sTexture;\nvec4 light_intersect(vec3 worldPosition, sampler2D texture, float lightRadius, float angle) {\n    vec3 lightCenter = vec3(0., .23, 2.2);\n\n    float s = sin(angle);\n    float c = cos(angle);\n\n    vec3 lightPos = lightCenter + vec3(c*lightRadius, s*lightRadius, 0.);\n\n    vec3 lightDir = normalize(worldPosition - lightPos);\n    float d = 0. - worldPosition.z / lightDir.z;\n    vec3 plane = lightDir*d + worldPosition;\n\n    return texture2D(texture, plane.xy*vec2(1., -1.) + vec2(.5,.5));\n}\nvoid shadow(out vec4 alpha, in vec3 worldPosition, in sampler2D texture) {\n    vec4 shadow = vec4(0., 0., 0., 0.);\n    for (float i=0.; i< 20.; i+=1.) {\n        shadow += light_intersect(worldPosition, texture, .3, radians(360./20.*i));\n    }\n    for (float i=0.; i< 12.; i+=1.) {\n        shadow += light_intersect(worldPosition, texture, .2, radians(360./12.*i));\n    }\n    for (float i=0.; i< 10.; i+=1.) {\n        shadow += light_intersect(worldPosition, texture, .1, radians(360./10.*i));\n    }\n    shadow = shadow/(20.+12.+10.);\n\n    alpha = shadow*shadow;\n}\nvoid main() {\n    vec4 alpha;\n    vec3 worldPosition = vPosition;\n\n    shadow(alpha, worldPosition, sTexture);\n\n    gl_FragColor = alpha*.5;\n}\n"

.field private static final sVertexSource:Ljava/lang/String; = "attribute vec2 aPosition;\nvarying vec3 vPosition;\nuniform mat4 uProjMat;\nuniform mat4 uModMat;\nvoid main() {\n  vPosition = (uModMat * vec4(aPosition,0,1.)).xyz;\n  gl_Position = (uProjMat * uModMat) * vec4(aPosition,0,1.);\n}\n"


# instance fields
.field private mContinue:Z

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mProgram:I

.field private mShadowHeight:I

.field private mShadowWidth:I

.field private mTmpBitmap:Landroid/graphics/Bitmap;

.field private mTmpTex:Landroid/graphics/Bitmap;

.field maPositionHandle:I

.field muModMatHandle:I

.field muProjMatHandle:I

.field final synthetic this$0:Lcom/android/launcher2/ShadowGen;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ShadowGen;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mContinue:Z

    .line 138
    return-void
.end method

.method private checkCurrent()V
    .locals 5

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 451
    :cond_1
    return-void
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 423
    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 424
    const-string v1, "ShadowGen$GenThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 1

    .prologue
    .line 429
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/launcher2/ShadowGen$GenThread;->checkGlError(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 432
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 433
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 434
    const-string v1, "ShadowGen$GenThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 504
    new-array v5, v4, [I

    .line 505
    .local v5, configsCount:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 506
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen$GenThread;->getConfig()[I

    move-result-object v2

    .line 507
    .local v2, configSpec:[I
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 511
    aget-object v0, v3, v6

    .line 513
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 392
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/android/launcher2/ShadowGen$GenThread;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 393
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 418
    :cond_0
    :goto_0
    return v2

    .line 397
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/android/launcher2/ShadowGen$GenThread;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 398
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 399
    goto :goto_0

    .line 402
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 403
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 404
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 405
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/android/launcher2/ShadowGen$GenThread;->checkGlError(Ljava/lang/String;)V

    .line 406
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 407
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/android/launcher2/ShadowGen$GenThread;->checkGlError(Ljava/lang/String;)V

    .line 408
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 409
    new-array v0, v6, [I

    .line 410
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 411
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 412
    const-string v4, "ShadowGen$GenThread"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v4, "ShadowGen$GenThread"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 415
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private doBitmaps([Lcom/android/launcher2/ShadowGen$QueuedBitmap;[Landroid/graphics/Bitmap;)V
    .locals 16
    .parameter "sources"
    .parameter "res"

    .prologue
    .line 262
    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget-object v12, v12, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 263
    .local v10, w:I
    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget-object v12, v12, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 264
    .local v3, h:I
    div-int/lit8 v11, v10, 0x2

    .line 265
    .local v11, w2:I
    div-int/lit8 v4, v3, 0x2

    .line 269
    .local v4, h2:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    if-nez v12, :cond_0

    .line 270
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v4, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    .line 272
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 273
    new-instance v1, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    invoke-direct {v1, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 276
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x1

    add-int/lit8 v14, v3, -0x2

    invoke-direct {v9, v12, v13, v10, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 277
    .local v9, s:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v12, 0x1

    const/4 v13, 0x1

    add-int/lit8 v14, v11, -0x2

    add-int/lit8 v15, v4, -0x2

    invoke-direct {v2, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 278
    .local v2, d:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 279
    .local v8, paint:Landroid/graphics/Paint;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_1

    .line 283
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v3, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpBitmap:Landroid/graphics/Bitmap;

    .line 285
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpBitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 286
    const/4 v6, 0x0

    .line 287
    .local v6, last_i:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v12, v0

    if-ge v5, v12, :cond_2

    .line 288
    aget-object v12, p1, v5

    if-nez v12, :cond_3

    .line 292
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v12, v9, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 294
    const/16 v12, 0xde1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 296
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 297
    const/16 v12, 0x4000

    invoke-static {v12}, Landroid/opengl/GLES20;->glClear(I)V

    .line 299
    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v12, v13, v14}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 301
    const/4 v5, 0x0

    :goto_1
    if-gt v5, v6, :cond_4

    .line 302
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowHeight:I

    sget-object v14, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 303
    .local v7, out:Landroid/graphics/Bitmap;
    aput-object v7, p2, v5

    .line 301
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 289
    .end local v7           #out:Landroid/graphics/Bitmap;
    :cond_3
    aget-object v12, p1, v5

    iget-object v12, v12, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpBitmap:Landroid/graphics/Bitmap;

    invoke-static {v12, v5, v13}, Lcom/android/launcher2/ShadowGen;->nCompositeLayer(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Z

    .line 290
    move v6, v5

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 305
    :cond_4
    add-int/lit8 v12, v6, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/launcher2/ShadowGen;->nExtractLayers([Landroid/graphics/Bitmap;I)Z

    .line 306
    return-void
.end method

.method private finishGL()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 440
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 441
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 517
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private initGL()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 454
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 456
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 457
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v3, v4, :cond_0

    .line 458
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglGetDisplay failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 462
    :cond_0
    new-array v2, v6, [I

    .line 463
    .local v2, version:[I
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 464
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglInitialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen$GenThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 469
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v3, :cond_2

    .line 470
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "eglConfig not initialized"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/ShadowGen$GenThread;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 475
    const/4 v3, 0x5

    new-array v1, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x3057

    aput v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowWidth:I

    aput v4, v1, v3

    const/16 v3, 0x3056

    aput v3, v1, v6

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowHeight:I

    aput v4, v1, v3

    const/4 v3, 0x4

    const/16 v4, 0x3038

    aput v4, v1, v3

    .line 479
    .local v1, pbufferAttribs:[I
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 481
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_6

    .line 482
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 483
    .local v0, error:I
    const/16 v3, 0x300b

    if-ne v0, v3, :cond_5

    .line 484
    const-string v3, "ShadowGen$GenThread"

    const-string v4, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v0           #error:I
    :cond_4
    return-void

    .line 487
    .restart local v0       #error:I
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWindowSurface failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 491
    .end local v0           #error:I
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 492
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglMakeCurrent failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 375
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 376
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 377
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 378
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 379
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 380
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 381
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 382
    const-string v2, "ShadowGen$GenThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v2, "ShadowGen$GenThread"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 385
    const/4 v1, 0x0

    .line 388
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private notifyCallbacks([Lcom/android/launcher2/ShadowGen$QueuedBitmap;[Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "qbs"
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 252
    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 259
    :cond_0
    return-void

    .line 253
    :cond_1
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShadowGen$CallbackEntry;

    .line 254
    .local v2, qe:Lcom/android/launcher2/ShadowGen$CallbackEntry;
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ShadowGen$CallbackEntry;->post(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 256
    .end local v2           #qe:Lcom/android/launcher2/ShadowGen$CallbackEntry;
    :cond_2
    aput-object v4, p1, v0

    .line 257
    aput-object v4, p2, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compilePrograms()V
    .locals 2

    .prologue
    .line 367
    const-string v0, "attribute vec2 aPosition;\nvarying vec3 vPosition;\nuniform mat4 uProjMat;\nuniform mat4 uModMat;\nvoid main() {\n  vPosition = (uModMat * vec4(aPosition,0,1.)).xyz;\n  gl_Position = (uProjMat * uModMat) * vec4(aPosition,0,1.);\n}\n"

    const-string v1, "precision mediump float;\nvarying vec3 vPosition;\nuniform sampler2D sTexture;\nvec4 light_intersect(vec3 worldPosition, sampler2D texture, float lightRadius, float angle) {\n    vec3 lightCenter = vec3(0., .23, 2.2);\n\n    float s = sin(angle);\n    float c = cos(angle);\n\n    vec3 lightPos = lightCenter + vec3(c*lightRadius, s*lightRadius, 0.);\n\n    vec3 lightDir = normalize(worldPosition - lightPos);\n    float d = 0. - worldPosition.z / lightDir.z;\n    vec3 plane = lightDir*d + worldPosition;\n\n    return texture2D(texture, plane.xy*vec2(1., -1.) + vec2(.5,.5));\n}\nvoid shadow(out vec4 alpha, in vec3 worldPosition, in sampler2D texture) {\n    vec4 shadow = vec4(0., 0., 0., 0.);\n    for (float i=0.; i< 20.; i+=1.) {\n        shadow += light_intersect(worldPosition, texture, .3, radians(360./20.*i));\n    }\n    for (float i=0.; i< 12.; i+=1.) {\n        shadow += light_intersect(worldPosition, texture, .2, radians(360./12.*i));\n    }\n    for (float i=0.; i< 10.; i+=1.) {\n        shadow += light_intersect(worldPosition, texture, .1, radians(360./10.*i));\n    }\n    shadow = shadow/(20.+12.+10.);\n\n    alpha = shadow*shadow;\n}\nvoid main() {\n    vec4 alpha;\n    vec3 worldPosition = vPosition;\n\n    shadow(alpha, worldPosition, sTexture);\n\n    gl_FragColor = alpha*.5;\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    .line 368
    iget v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    const-string v1, "uProjMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->muProjMatHandle:I

    .line 369
    iget v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    const-string v1, "uModMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->muModMatHandle:I

    .line 370
    iget v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->maPositionHandle:I

    .line 371
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 372
    return-void
.end method

.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .parameter "egl"
    .parameter "eglDisplay"
    .parameter "eglConfig"

    .prologue
    .line 499
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 500
    .local v0, attrib_list:[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 499
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public run()V
    .locals 39

    .prologue
    .line 142
    const v7, 0x3dcccccd

    .line 143
    .local v7, near:F
    const/high16 v8, 0x4120

    .line 144
    .local v8, far:F
    const/high16 v5, 0x41f0

    .line 145
    .local v5, fov:F
    const/high16 v6, 0x3f80

    .line 146
    .local v6, aspect:F
    const/16 v4, 0x10

    new-array v3, v4, [F

    .line 147
    .local v3, proj:[F
    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    .line 148
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, -0x3fe0

    invoke-static {v3, v4, v11, v12, v13}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 149
    const/4 v4, 0x0

    const/high16 v11, 0x3f80

    const/high16 v12, -0x4080

    const/high16 v13, 0x3f80

    invoke-static {v3, v4, v11, v12, v13}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 151
    const/16 v4, 0x10

    new-array v9, v4, [F

    .line 152
    .local v9, modmat:[F
    const/4 v4, 0x0

    invoke-static {v9, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 153
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, -0x40b33333

    invoke-static {v9, v4, v11, v12, v13}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 154
    const/4 v10, 0x0

    const/high16 v11, 0x4248

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 158
    const/4 v4, 0x4

    new-array v14, v4, [F

    fill-array-data v14, :array_0

    .line 159
    .local v14, tl:[F
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    .line 160
    .local v19, br:[F
    const/4 v4, 0x4

    new-array v10, v4, [F

    .line 161
    .local v10, tlMultRes:[F
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v27, v0

    .line 162
    .local v27, brMultRes:[F
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v12, v3

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 163
    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, v27

    move-object/from16 v17, v3

    invoke-static/range {v15 .. v20}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 164
    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v11, 0x3

    aget v11, v10, v11

    div-float v30, v4, v11

    .line 165
    .local v30, l:F
    const/4 v4, 0x1

    aget v4, v10, v4

    const/4 v11, 0x3

    aget v11, v10, v11

    div-float v34, v4, v11

    .line 166
    .local v34, t:F
    const/4 v4, 0x0

    aget v4, v27, v4

    const/4 v11, 0x3

    aget v11, v27, v11

    div-float v32, v4, v11

    .line 167
    .local v32, r:F
    const/4 v4, 0x1

    aget v4, v27, v4

    const/4 v11, 0x3

    aget v11, v27, v11

    div-float v26, v4, v11

    .line 169
    .local v26, b:F
    const/high16 v4, 0x4000

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    #getter for: Lcom/android/launcher2/ShadowGen;->mSourceWidth:I
    invoke-static {v11}, Lcom/android/launcher2/ShadowGen;->access$200(Lcom/android/launcher2/ShadowGen;)I

    move-result v11

    int-to-float v11, v11

    sub-float v12, v32, v30

    div-float/2addr v11, v12

    mul-float/2addr v4, v11

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowWidth:I

    .line 170
    const/high16 v4, 0x4000

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    #getter for: Lcom/android/launcher2/ShadowGen;->mSourceHeight:I
    invoke-static {v11}, Lcom/android/launcher2/ShadowGen;->access$300(Lcom/android/launcher2/ShadowGen;)I

    move-result v11

    int-to-float v11, v11

    sub-float v12, v26, v34

    div-float/2addr v11, v12

    mul-float/2addr v4, v11

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowHeight:I

    .line 174
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/ShadowGen$GenThread;->initGL()V

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ShadowGen$GenThread;->compilePrograms()V

    .line 177
    const/16 v4, 0xb44

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 179
    const/16 v4, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v37

    .line 182
    .local v37, verticies:Ljava/nio/FloatBuffer;
    const/high16 v30, -0x3ee0

    const/high16 v34, 0x41f0

    const/high16 v32, 0x4120

    const/high16 v26, -0x3ee0

    .line 183
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v11, 0x0

    aput v30, v4, v11

    const/4 v11, 0x1

    aput v34, v4, v11

    const/4 v11, 0x2

    aput v32, v4, v11

    const/4 v11, 0x3

    aput v34, v4, v11

    const/4 v11, 0x4

    aput v32, v4, v11

    const/4 v11, 0x5

    aput v26, v4, v11

    const/4 v11, 0x6

    aput v30, v4, v11

    const/4 v11, 0x7

    aput v26, v4, v11

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v35, v0

    .line 192
    .local v35, temp:[I
    const/4 v4, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, v35

    invoke-static {v4, v0, v11}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 193
    const/4 v4, 0x0

    aget v38, v35, v4

    .line 195
    .local v38, verticiesBuffer:I
    const v4, 0x8892

    move/from16 v0, v38

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 196
    const v4, 0x8892

    invoke-virtual/range {v37 .. v37}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    const v12, 0x88e4

    move-object/from16 v0, v37

    invoke-static {v4, v11, v0, v12}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 198
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 200
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->maPositionHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 201
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/ShadowGen$GenThread;->maPositionHandle:I

    move/from16 v20, v0

    const/16 v21, 0x2

    const/16 v22, 0x1406

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v20 .. v25}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 203
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->muProjMatHandle:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v11, v12, v3, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 204
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->muModMatHandle:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v11, v12, v9, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 206
    const/4 v4, 0x4

    new-array v0, v4, [Lcom/android/launcher2/ShadowGen$QueuedBitmap;

    move-object/from16 v31, v0

    .line 207
    .local v31, qbs:[Lcom/android/launcher2/ShadowGen$QueuedBitmap;
    const/4 v4, 0x4

    new-array v0, v4, [Landroid/graphics/Bitmap;

    move-object/from16 v33, v0

    .line 209
    .local v33, res:[Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/ShadowGen$GenThread;->checkCurrent()V

    .line 211
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v36, v0

    .line 212
    .local v36, textures:[I
    const/4 v4, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, v36

    invoke-static {v4, v0, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 213
    const/16 v4, 0xde1

    const/4 v11, 0x0

    aget v11, v36, v11

    invoke-static {v4, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 215
    const/16 v4, 0xde1

    const/16 v11, 0x2801

    const v12, 0x46180400

    invoke-static {v4, v11, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 216
    const/16 v4, 0xde1

    const/16 v11, 0x2800

    const v12, 0x46180400

    invoke-static {v4, v11, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 217
    const/16 v4, 0xde1

    const/16 v11, 0x2802

    const v12, 0x47012f00

    invoke-static {v4, v11, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 218
    const/16 v4, 0xde1

    const/16 v11, 0x2803

    const v12, 0x47012f00

    invoke-static {v4, v11, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 220
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mContinue:Z

    if-eqz v4, :cond_3

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    #getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v11

    monitor-enter v11

    .line 222
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    #getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    #getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 225
    :catch_0
    move-exception v28

    .line 226
    .local v28, e:Ljava/lang/InterruptedException;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mContinue:Z

    .line 230
    .end local v28           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/16 v29, 0x0

    .local v29, i:I
    :goto_2
    move-object/from16 v0, v31

    array-length v4, v0

    move/from16 v0, v29

    if-ge v0, v4, :cond_2

    .line 231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    #getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    #getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShadowGen$QueuedBitmap;

    aput-object v4, v31, v29

    .line 230
    :goto_3
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 234
    :cond_1
    const/4 v4, 0x0

    aput-object v4, v31, v29

    goto :goto_3

    .line 237
    .end local v29           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v29       #i:I
    :cond_2
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ShadowGen$GenThread;->doBitmaps([Lcom/android/launcher2/ShadowGen$QueuedBitmap;[Landroid/graphics/Bitmap;)V

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ShadowGen$GenThread;->notifyCallbacks([Lcom/android/launcher2/ShadowGen$QueuedBitmap;[Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 245
    .end local v29           #i:I
    :cond_3
    const/4 v4, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, v36

    invoke-static {v4, v0, v11}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 247
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/ShadowGen$GenThread;->finishGL()V

    .line 248
    return-void

    .line 158
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 159
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
