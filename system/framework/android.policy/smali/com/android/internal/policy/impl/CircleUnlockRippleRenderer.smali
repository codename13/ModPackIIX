.class public Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field public static final MISSED_CALL:I = 0x0

.field public static final MISSED_SMS:I = 0x1

.field public static final NORMAL_EVENT:I = -0x1

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private INV_NUM_DETAILS_HEIGHT:F

.field private INV_NUM_DETAILS_WIDTH:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field MISSED_DRAG_THRESHOLD:D

.field MISSED_RELEASE_THRESHOLD:D

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field RIPPLE_DRAG_THRESHOLD:D

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field UNLOCK_DRAG_THRESHOLD:D

.field UNLOCK_RELEASE_THRESHOLD:D

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field private bVelocityCheck:Ljava/lang/Boolean;

.field private bVelocityChecks:[Z

.field bitmapOriginal:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private boxHeight:F

.field private diffPressTime:J

.field private distance:D

.field private downX:F

.field private downX2:F

.field private downY:F

.field private downY2:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private heights:[F

.field private i:Ljava/nio/ShortBuffer;

.field private i_buf:I

.field private indices:[S

.field intensityForLandscape:F

.field intensityForLandscapeTicker:F

.field intensityForPortrait:F

.field intensityForPortraitTicker:F

.field intensityForRipple:F

.field private isSystemSoundChecked:Z

.field private isUnlocked:Z

.field mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

.field mFragmentShader:Ljava/lang/String;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mRDownId:I

.field private mRUpId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTouchedView:Landroid/view/View;

.field private mVelocityCheckCnt:I

.field mVertexShader:Ljava/lang/String;

.field private m_handle:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private shader:I

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field startLocation:I

.field private texture0:I

.field private texture1:I

.field textures0:[I

.field textures1:[I

.field tickerAjustYForLandscape:F

.field tickerAjustYForPortrait:F

.field private tickerCloseLandscapeY:F

.field private tickerClosePortraitY:F

.field private tickerMoveCriteria:I

.field private tickerOpenLandscapeY:F

.field private tickerOpenPortraitY:F

.field private tickerTotalCount:I

.field private tmp_buffer:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field private u0:Ljava/nio/FloatBuffer;

.field private u1:Ljava/nio/FloatBuffer;

.field unitCellHeight:F

.field unitCellWidth:F

.field unlockDragThreshold:D

.field unlockReleaseThreshold:D

.field private uv0:[F

.field private uv0_buf:I

.field private uv1:[F

.field private uv1_buf:I

.field private uv_handle0:I

.field private uv_handle1:I

.field private v:Ljava/nio/FloatBuffer;

.field private v_buf:I

.field private v_handle:I

.field private velocity:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "view"
    .parameter "callback"

    .prologue
    const/high16 v7, 0x3f80

    const/16 v3, 0x10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 346
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->DBG:Z

    .line 115
    const-string v2, "CircleUnlockRippleRenderer"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 117
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    .line 120
    const-string v2, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexture0Coord;\nattribute vec2 aTexture1Coord;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform float uRotate;\n void main() {\n  gl_Position = uMVPMatrix * aPosition;\n  float radian = radians( uRotate ); \n  float sinv = sin( radian ); \n   float cosv = cos( radian ); \n   vTexture0Coord = aTexture0Coord - vec2( 0.5, 0.5 );\n  vTexture1Coord = aTexture1Coord + vec2( 0.0, 1.0 ) - vec2( 0.5, 0.5 );\n  vTexture0Coord = vec2( vTexture0Coord.x * cosv - vTexture0Coord.y * sinv, vTexture0Coord.y * cosv + vTexture0Coord.x * sinv ); \n  vTexture1Coord = vec2( vTexture1Coord.x * cosv - vTexture1Coord.y * sinv, vTexture1Coord.y * cosv + vTexture1Coord.x * sinv ); \n  vTexture0Coord = vTexture0Coord + vec2( 0.5, 0.5 );\n  vTexture1Coord = vTexture1Coord + vec2( 0.5, 0.5 );\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    .line 142
    const-string v2, "precision mediump float;\nvarying vec2 vTexture0Coord;\nvarying vec2 vTexture1Coord;\nuniform sampler2D texture0;\nuniform sampler2D texture1;\nuniform highp float reflectionRatio;\nuniform highp float alphaRatio1;\nuniform highp float alphaRatio2;\nvoid main() {\n  highp float iReflectionRatio = 1.0 - reflectionRatio;\n  vec4 texCoord0 = texture2D(texture0, vec2(vTexture0Coord.s, vTexture0Coord.t));\n  vec4 texCoord1 = texture2D(texture1, vec2(vTexture1Coord.s, vTexture1Coord.t));\n  gl_FragColor = texCoord0 * reflectionRatio * (alphaRatio1) + texCoord1 * iReflectionRatio * (alphaRatio2);\n}\n"

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    .line 152
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 153
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 154
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 155
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 156
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 157
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 158
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 159
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 160
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 166
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    .line 171
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    .line 172
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    .line 173
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    .line 174
    new-array v2, v4, [S

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    .line 198
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    .line 199
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    .line 200
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    .line 201
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    .line 213
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 214
    const v2, 0x3e051eb8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 215
    const/4 v2, 0x0

    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 216
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 227
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    .line 228
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 237
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 238
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 242
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 243
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 246
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 247
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 250
    const/high16 v2, -0x3dd0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 251
    const/high16 v2, -0x3e48

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 254
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 255
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 256
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 257
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 260
    const/high16 v2, 0x4234

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 261
    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 262
    const/high16 v2, 0x41c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 263
    const/high16 v2, 0x4238

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 264
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 265
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 268
    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 269
    const/high16 v2, 0x42c8

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 274
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 281
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    .line 282
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 283
    iput v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 284
    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 285
    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 286
    const/high16 v2, 0x4416

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 287
    const/high16 v2, 0x44a0

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 288
    const/16 v2, 0x19

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 291
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    .line 292
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    .line 293
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    .line 294
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    .line 295
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    .line 296
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 297
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 298
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 305
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    .line 306
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    .line 307
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 308
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 311
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    .line 312
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 313
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 315
    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 316
    const-wide/high16 v2, 0x407b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 317
    const-wide v2, 0x4062c00000000000L

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 319
    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 320
    const-wide/high16 v2, 0x406b

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    .line 321
    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 322
    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 323
    iget-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 329
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    .line 330
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 1438
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 347
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 348
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 350
    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 351
    new-instance v2, Landroid/media/SoundPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v6, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 352
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    .line 354
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 355
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 356
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 357
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    .line 358
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    .line 359
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->initWaters()V

    .line 362
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->checkSound()V

    .line 363
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    .line 365
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    invoke-static {}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getInstance()Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    .line 368
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2024
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2025
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 2029
    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2037
    :goto_0
    if-ne v2, v4, :cond_0

    .line 2038
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 2042
    :goto_1
    return-void

    .line 2031
    :catch_0
    move-exception v1

    .line 2033
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 2040
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private clearRipple()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1975
    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int v1, v2, v3

    .line 1977
    .local v1, max:I
    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v2, :cond_1

    .line 1992
    :cond_0
    return-void

    .line 1980
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 1986
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1988
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aput v4, v2, v0

    .line 1989
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aput v4, v2, v0

    .line 1986
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createBuffers()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1212
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    .line 1213
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 1215
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1297
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 1299
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 1330
    :cond_0
    :goto_0
    return v2

    .line 1303
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 1305
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 1306
    goto :goto_0

    .line 1311
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 1313
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 1315
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1316
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1317
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1318
    new-array v0, v6, [I

    .line 1319
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1321
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 1323
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1324
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private initWaters()V
    .locals 11

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 1382
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v6, v6, 0x3

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    .line 1383
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    .line 1384
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, cnt:I
    const/4 v0, 0x0

    .line 1388
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellWidth:F

    .line 1389
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellHeight:F

    .line 1391
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    if-ge v1, v6, :cond_0

    .line 1394
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    rem-int v6, v1, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellHeight:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    sub-float v5, v6, v7

    .line 1395
    .local v5, ypos:F
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    div-int v6, v1, v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unitCellWidth:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v7, v7

    div-float/2addr v7, v10

    sub-float v4, v6, v7

    .line 1399
    .local v4, xpos:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    aput v4, v6, v0

    .line 1400
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    add-int/lit8 v7, v0, 0x1

    neg-float v8, v5

    aput v8, v6, v7

    .line 1401
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    add-int/lit8 v7, v0, 0x2

    aput v9, v6, v7

    .line 1403
    add-int/lit8 v0, v0, 0x3

    .line 1391
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1406
    .end local v4           #xpos:F
    .end local v5           #ypos:F
    :cond_0
    const/4 v0, 0x0

    .line 1407
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x6

    new-array v6, v6, [S

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    .line 1409
    const/4 v1, 0x1

    :goto_1
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v1, v6, :cond_2

    .line 1411
    const/4 v3, 0x1

    .local v3, j:I
    :goto_2
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v3, v6, :cond_1

    .line 1413
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v6, v3

    add-int v2, v6, v1

    .line 1414
    .local v2, idx:I
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v7, v2, v7

    add-int/lit8 v7, v7, -0x1

    int-to-short v7, v7

    aput-short v7, v6, v0

    .line 1415
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v8, v2, v8

    int-to-short v8, v8

    aput-short v8, v6, v7

    .line 1416
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x2

    int-to-short v8, v2

    aput-short v8, v6, v7

    .line 1417
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x3

    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    sub-int v8, v2, v8

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    aput-short v8, v6, v7

    .line 1418
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x4

    int-to-short v8, v2

    aput-short v8, v6, v7

    .line 1419
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    add-int/lit8 v7, v0, 0x5

    add-int/lit8 v8, v2, -0x1

    int-to-short v8, v8

    aput-short v8, v6, v7

    .line 1420
    add-int/lit8 v0, v0, 0x6

    .line 1411
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1409
    .end local v2           #idx:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1425
    .end local v3           #j:I
    :cond_2
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v6, v7

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    .line 1426
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v6, v7

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    .line 1428
    const/4 v1, 0x0

    :goto_3
    iget v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v6, v7

    if-ge v1, v6, :cond_3

    .line 1430
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aput v9, v6, v1

    .line 1431
    iget-object v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aput v9, v6, v1

    .line 1428
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1433
    :cond_3
    return-void
.end method

.method private loadBuffers()V
    .locals 6

    .prologue
    const v5, 0x8893

    const v4, 0x88e4

    const/4 v3, 0x0

    const v2, 0x8892

    .line 1237
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1238
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1239
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 1240
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1242
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1243
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1245
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 1246
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 1248
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1249
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1250
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1251
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1252
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1253
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    invoke-static {v5, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1254
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1255
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1256
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1257
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1258
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1259
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v1, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 1260
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 1262
    return-void
.end method

.method private static loadShader(ILjava/lang/String;)I
    .locals 4
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 1338
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 1340
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 1342
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 1343
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 1344
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 1345
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 1347
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 1349
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 1350
    const/4 v1, 0x0

    .line 1356
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private loadShaderProp()V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    .line 1363
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    .line 1364
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture0Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    .line 1365
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture1Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    .line 1366
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->m_handle:I

    .line 1368
    return-void
.end method

.method private loadTexture()V
    .locals 7

    .prologue
    const v6, 0x47012f00

    const/4 v5, 0x1

    const v4, 0x46180400

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 1266
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    .line 1267
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1268
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture0:I

    .line 1269
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture0:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1270
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1271
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1273
    const/16 v0, 0x2802

    const v1, 0x47037000

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1274
    const/16 v0, 0x2803

    const v1, 0x47037000

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1276
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1277
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1279
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    .line 1280
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    invoke-static {v5, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 1281
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures1:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    .line 1283
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1284
    const/16 v0, 0x2801

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1285
    const/16 v0, 0x2800

    invoke-static {v2, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1287
    const/16 v0, 0x2802

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1288
    const/16 v0, 0x2803

    invoke-static {v2, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 1289
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v2, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 1290
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1293
    :cond_0
    return-void
.end method

.method private makeBuffers()V
    .locals 2

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v:Ljava/nio/FloatBuffer;

    .line 1222
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeShortBuffer([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i:Ljava/nio/ShortBuffer;

    .line 1223
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u0:Ljava/nio/FloatBuffer;

    .line 1224
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->u1:Ljava/nio/FloatBuffer;

    .line 1226
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    .line 1227
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    .line 1228
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmp_buffer:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    .line 1231
    return-void
.end method

.method public static final makeFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1806
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1807
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1808
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 1809
    .local v1, fb:Ljava/nio/FloatBuffer;
    return-object v1
.end method

.method public static final makeShortBuffer([S)Ljava/nio/ShortBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 1815
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1816
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1817
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 1818
    .local v1, fb:Ljava/nio/ShortBuffer;
    return-object v1
.end method

.method private move()V
    .locals 13

    .prologue
    .line 1445
    const/4 v8, 0x1

    .line 1446
    .local v8, xSpan:I
    const/4 v9, 0x1

    .line 1448
    .local v9, ySpan:I
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v10, v11, :cond_1

    .line 1449
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1450
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1451
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v3, v10, v9

    .line 1452
    .local v3, imax:I
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v10, v8

    .line 1461
    .local v5, jmax:I
    :goto_0
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    .line 1463
    move v1, v9

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1464
    move v4, v8

    .local v4, j:I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 1465
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v10, v4

    add-int v2, v10, v1

    .line 1466
    .local v2, idx:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v11, v10, v2

    iget-object v12, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v12, v12, v2

    add-float/2addr v11, v12

    aput v11, v10, v2

    .line 1468
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    const/high16 v11, 0x42c8

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 1469
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    const/high16 v11, 0x42c8

    aput v11, v10, v2

    .line 1464
    :cond_0
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1455
    .end local v1           #i:I
    .end local v2           #idx:I
    .end local v3           #imax:I
    .end local v4           #j:I
    .end local v5           #jmax:I
    :cond_1
    iget v8, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1456
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1457
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v3, v10, v9

    .line 1458
    .restart local v3       #imax:I
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v10, v8

    .restart local v5       #jmax:I
    goto :goto_0

    .line 1470
    .restart local v1       #i:I
    .restart local v2       #idx:I
    .restart local v4       #j:I
    :cond_2
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    const/high16 v11, -0x3d38

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 1471
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    const/high16 v11, -0x3d38

    aput v11, v10, v2

    goto :goto_3

    .line 1463
    .end local v2           #idx:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1475
    .end local v4           #j:I
    :cond_4
    move v1, v9

    :goto_4
    if-ge v1, v3, :cond_8

    .line 1476
    move v4, v8

    .restart local v4       #j:I
    :goto_5
    if-ge v4, v5, :cond_7

    .line 1478
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v10, v4

    add-int v2, v10, v1

    .line 1479
    .restart local v2       #idx:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    neg-float v10, v10

    const/high16 v11, 0x4080

    mul-float v6, v10, v11

    .line 1480
    .local v6, tempVelocity:F
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int/2addr v2, v10

    .line 1481
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    add-float/2addr v6, v10

    .line 1482
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v2, v10

    .line 1483
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    add-float/2addr v6, v10

    .line 1484
    add-int/lit8 v2, v2, 0x2

    .line 1485
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    add-float/2addr v6, v10

    .line 1486
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v2, v10

    .line 1487
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    aget v10, v10, v2

    add-float/2addr v6, v10

    .line 1488
    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int/2addr v2, v10

    .line 1489
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v11, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v11, v11, v2

    const/high16 v12, 0x3f00

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    aput v11, v10, v2

    .line 1491
    const v0, 0x3a03126f

    .line 1492
    .local v0, clip:F
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v10, v10, v2

    const v11, 0x3a03126f

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    aget v10, v10, v2

    const v11, -0x45fced91

    cmpg-float v10, v10, v11

    if-gez v10, :cond_6

    .line 1493
    :cond_5
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    .line 1476
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1475
    .end local v0           #clip:F
    .end local v2           #idx:I
    .end local v6           #tempVelocity:F
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1498
    .end local v4           #j:I
    :cond_8
    iget-object v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bVelocityCheck:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1500
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v7, Landroid/opengl/GLSurfaceView;

    .line 1501
    .local v7, view:Landroid/opengl/GLSurfaceView;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1502
    const-string v10, "dirty"

    const-string v11, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    .end local v7           #view:Landroid/opengl/GLSurfaceView;
    :cond_9
    return-void
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    .line 1783
    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1784
    .local v0, f:F
    sub-float v1, p4, p5

    .line 1785
    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1786
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 1787
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 1788
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 1789
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 1790
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1791
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 1792
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 1793
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 1794
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 1795
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 1796
    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    .line 1797
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 1798
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 1799
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 1800
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 1802
    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1109
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1112
    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    .line 1113
    new-instance v7, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;I)V

    .line 1114
    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1118
    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1097
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1103
    :cond_0
    return-void
.end method

.method private ripple(FFF)V
    .locals 13
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"

    .prologue
    .line 1517
    const/4 v0, 0x0

    .line 1519
    .local v0, acc:F
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v9, v9

    div-float v9, p1, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v10, v10

    mul-float p1, v9, v10

    .line 1520
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    div-float v9, p2, v9

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v10, v10

    mul-float p2, v9, v10

    .line 1522
    const/high16 v9, 0x40a0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_1

    const/high16 v9, 0x4040

    sub-float v9, p1, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v5, v9

    .line 1523
    .local v5, imin:I
    :goto_0
    const/high16 v9, 0x40a0

    cmpl-float v9, p2, v9

    if-lez v9, :cond_2

    const/high16 v9, 0x4040

    sub-float v9, p2, v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v8, v9

    .line 1525
    .local v8, jmin:I
    :goto_1
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v9, v9, -0x5

    int-to-float v9, v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_3

    const/high16 v9, 0x4080

    add-float/2addr v9, p1

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v4, v9

    .line 1526
    .local v4, imax:I
    :goto_2
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v9, v9, -0x5

    int-to-float v9, v9

    cmpg-float v9, p2, v9

    if-gez v9, :cond_4

    const/high16 v9, 0x4080

    add-float/2addr v9, p2

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 1528
    .local v7, jmax:I
    :goto_3
    move v3, v5

    .local v3, i:I
    :goto_4
    if-ge v3, v4, :cond_6

    .line 1530
    move v6, v8

    .local v6, j:I
    :goto_5
    if-ge v6, v7, :cond_5

    .line 1532
    int-to-float v9, v3

    sub-float v1, p1, v9

    .line 1533
    .local v1, dx:F
    int-to-float v9, v6

    sub-float v2, p2, v9

    .line 1534
    .local v2, dy:F
    const/high16 v9, 0x4040

    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    sub-float v0, v9, v10

    .line 1536
    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-lez v9, :cond_0

    .line 1537
    iget-object v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->velocity:[F

    iget v10, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v10, v6

    add-int/2addr v10, v3

    aget v11, v9, v10

    mul-float v12, v0, p3

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 1530
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1522
    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v3           #i:I
    .end local v4           #imax:I
    .end local v5           #imin:I
    .end local v6           #j:I
    .end local v7           #jmax:I
    .end local v8           #jmin:I
    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    .line 1523
    .restart local v5       #imin:I
    :cond_2
    const/4 v8, 0x2

    goto :goto_1

    .line 1525
    .restart local v8       #jmin:I
    :cond_3
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v4, v9, -0x1

    goto :goto_2

    .line 1526
    .restart local v4       #imax:I
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v7, v9, -0x1

    goto :goto_3

    .line 1528
    .restart local v3       #i:I
    .restart local v6       #j:I
    .restart local v7       #jmax:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1540
    .end local v6           #j:I
    :cond_6
    return-void
.end method

.method private setBackground()V
    .locals 9

    .prologue
    .line 2070
    const/4 v3, 0x0

    .line 2071
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2073
    .local v6, wallpaperFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2074
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .line 2096
    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2097
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 2098
    .local v5, tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v7, v5}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 2099
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 2104
    .end local v5           #tempBitmap:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2105
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10805fd

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 2112
    .end local v6           #wallpaperFile:Ljava/io/File;
    :goto_2
    return-void

    .line 2078
    .restart local v6       #wallpaperFile:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v7, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2079
    .local v0, defaultWallpaperFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v7, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2081
    .local v1, defaultWallpaperFileMultiCSC:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2083
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 2085
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2087
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 2091
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108041b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 2101
    .end local v0           #defaultWallpaperFile:Ljava/io/File;
    .end local v1           #defaultWallpaperFileMultiCSC:Ljava/io/File;
    :cond_3
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2107
    .end local v6           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 2109
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private setEnhancedBackground()V
    .locals 2

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mEnhancedWallpaper:Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnhancedWallpaperWidget;->getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 2057
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10805fd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V

    .line 2058
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Re-used Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :goto_0
    return-void

    .line 2060
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setBackground()V

    .line 2061
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "Created Wallpaper bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMesh()V
    .locals 36

    .prologue
    .line 1553
    const/16 v23, 0x0

    .local v23, u:F
    const/16 v25, 0x0

    .line 1558
    .local v25, v:F
    const/4 v13, 0x0

    .line 1559
    .local v13, len1:F
    const/4 v14, 0x0

    .line 1567
    .local v14, len2:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    move/from16 v32, v0

    const/high16 v33, 0x3f80

    sub-float v19, v32, v33

    .line 1569
    .local v19, rimo:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f00

    mul-float v30, v32, v33

    .line 1571
    .local v30, xmax:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3f00

    mul-float v31, v32, v33

    .line 1573
    .local v31, ymax:F
    const/high16 v32, 0x3f80

    div-float v9, v32, v30

    .line 1575
    .local v9, ixmax:F
    const/high16 v32, 0x3f80

    div-float v10, v32, v31

    .line 1577
    .local v10, iymax:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v6, v0, :cond_12

    .line 1579
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v11, v0, :cond_11

    .line 1581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v32, v0

    mul-int v32, v32, v11

    add-int v32, v32, v6

    mul-int/lit8 v7, v32, 0x3

    .line 1583
    .local v7, index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    move/from16 v32, v0

    mul-int v32, v32, v11

    add-int v32, v32, v6

    mul-int/lit8 v8, v32, 0x2

    .line 1585
    .local v8, index2:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-gt v0, v1, :cond_2

    .line 1587
    const/4 v12, 0x0

    .line 1589
    .local v12, len:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    aget v26, v32, v7

    .line 1591
    .local v26, vx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v7, 0x1

    aget v28, v32, v33

    .line 1593
    .local v28, vy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v7, 0x2

    const/16 v29, 0x0

    aput v29, v32, v33

    .line 1597
    .local v29, vz:F
    const/4 v15, 0x0

    .line 1599
    .local v15, nx:F
    const/16 v16, 0x0

    .line 1601
    .local v16, ny:F
    const/16 v17, 0x0

    .line 1603
    .local v17, nz:F
    const/4 v15, 0x0

    .line 1605
    const/16 v16, 0x0

    .line 1607
    move/from16 v2, v26

    .line 1609
    .local v2, dx:F
    move/from16 v3, v28

    .line 1611
    .local v3, dy:F
    const/high16 v4, 0x41f0

    .line 1613
    .local v4, dz:F
    const/high16 v12, 0x3e80

    .line 1615
    mul-float/2addr v2, v12

    .line 1617
    mul-float/2addr v3, v12

    .line 1619
    mul-float/2addr v4, v12

    .line 1623
    mul-float v22, v4, v19

    .line 1657
    .local v22, t:F
    :goto_2
    const/16 v32, 0x0

    cmpl-float v32, v2, v32

    if-nez v32, :cond_5

    .line 1658
    const/16 v32, 0x0

    cmpl-float v32, v3, v32

    if-nez v32, :cond_3

    .line 1659
    const/high16 v25, 0x3f00

    move/from16 v23, v25

    .line 1660
    const/16 v21, 0x0

    .line 1702
    .local v21, sign:F
    :goto_3
    const/16 v32, 0x0

    cmpl-float v32, v21, v32

    if-eqz v32, :cond_1

    .line 1704
    mul-float v32, v21, v31

    sub-float v32, v32, v28

    div-float v22, v32, v3

    .line 1705
    mul-float v32, v22, v2

    add-float v20, v32, v26

    .line 1706
    .local v20, s:F
    mul-float v32, v22, v4

    add-float v5, v32, v29

    .line 1708
    .local v5, hitz:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v32, v0

    cmpl-float v32, v5, v32

    if-lez v32, :cond_10

    .line 1710
    const v32, 0x41f73333

    sub-float v32, v32, v29

    div-float v18, v32, v4

    .line 1711
    .local v18, r:F
    mul-float v32, v2, v18

    add-float v32, v32, v26

    mul-float v32, v32, v10

    const/high16 v33, 0x3e80

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v23, v32, v33

    .line 1712
    mul-float v32, v3, v18

    add-float v32, v32, v28

    mul-float v32, v32, v10

    const/high16 v33, 0x3e80

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v25, v32, v33

    .line 1714
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_e

    .line 1715
    const/high16 v23, 0x3f80

    .line 1719
    :cond_0
    :goto_4
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_f

    .line 1720
    const/high16 v25, 0x3f80

    .line 1734
    .end local v5           #hitz:F
    .end local v18           #r:F
    .end local v20           #s:F
    :cond_1
    :goto_5
    const/high16 v32, 0x3f00

    mul-float v32, v32, v15

    const/high16 v33, 0x3f00

    add-float v32, v32, v33

    int-to-float v0, v6

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x3f00

    mul-float v34, v34, v35

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    const/high16 v34, 0x3e80

    mul-float v33, v33, v34

    add-float v24, v32, v33

    .line 1735
    .local v24, uxx:F
    const/high16 v32, 0x3f00

    mul-float v32, v32, v16

    const/high16 v33, 0x3f00

    add-float v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x3f00

    mul-float v33, v33, v34

    int-to-float v0, v11

    move/from16 v34, v0

    sub-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    const/high16 v34, 0x3e80

    mul-float v33, v33, v34

    add-float v27, v32, v33

    .line 1737
    .local v27, vxx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    move-object/from16 v32, v0

    aput v24, v32, v8

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v8, 0x1

    aput v27, v32, v33

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    move-object/from16 v32, v0

    aput v23, v32, v8

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v8, 0x1

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v34, v0

    aput v34, v32, v33

    .line 1579
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1629
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #dz:F
    .end local v12           #len:F
    .end local v15           #nx:F
    .end local v16           #ny:F
    .end local v17           #nz:F
    .end local v21           #sign:F
    .end local v22           #t:F
    .end local v24           #uxx:F
    .end local v26           #vx:F
    .end local v27           #vxx:F
    .end local v28           #vy:F
    .end local v29           #vz:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    add-int v33, v33, v6

    add-int/lit8 v33, v33, 0x2

    aget v12, v32, v33

    .line 1630
    .restart local v12       #len:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    aget v26, v32, v7

    .line 1631
    .restart local v26       #vx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v7, 0x1

    aget v28, v32, v33

    .line 1632
    .restart local v28       #vy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v7, 0x2

    const/high16 v34, 0x3e80

    mul-float v29, v12, v34

    aput v29, v32, v33

    .line 1635
    .restart local v29       #vz:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    add-int v33, v33, v6

    add-int/lit8 v33, v33, 0x1

    aget v32, v32, v33

    sub-float v32, v12, v32

    const/high16 v33, 0x3e80

    mul-float v15, v32, v33

    .line 1636
    .restart local v15       #nx:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->heights:[F

    move-object/from16 v32, v0

    add-int/lit8 v33, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move/from16 v34, v0

    mul-int v33, v33, v34

    add-int v33, v33, v6

    add-int/lit8 v33, v33, 0x2

    aget v32, v32, v33

    sub-float v32, v12, v32

    const/high16 v33, 0x3e80

    mul-float v16, v32, v33

    .line 1638
    .restart local v16       #ny:F
    const-wide/high16 v32, 0x3ff0

    mul-float v34, v15, v15

    mul-float v35, v16, v16

    add-float v34, v34, v35

    const/high16 v35, 0x3f80

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v17, v0

    .line 1639
    .restart local v17       #nz:F
    mul-float v15, v15, v17

    .line 1640
    mul-float v16, v16, v17

    .line 1641
    move/from16 v2, v26

    .line 1642
    .restart local v2       #dx:F
    move/from16 v3, v28

    .line 1643
    .restart local v3       #dy:F
    const/high16 v32, 0x41f0

    add-float v4, v29, v32

    .line 1644
    .restart local v4       #dz:F
    const-wide/high16 v32, 0x3ff0

    mul-float v34, v2, v2

    mul-float v35, v3, v3

    add-float v34, v34, v35

    mul-float v35, v4, v4

    add-float v34, v34, v35

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    div-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v12, v0

    .line 1645
    mul-float/2addr v2, v12

    .line 1646
    mul-float/2addr v3, v12

    .line 1647
    mul-float/2addr v4, v12

    .line 1650
    mul-float v32, v2, v15

    mul-float v33, v3, v16

    add-float v32, v32, v33

    add-float v32, v32, v4

    mul-float v22, v32, v19

    .line 1651
    .restart local v22       #t:F
    mul-float v32, v15, v22

    add-float v2, v2, v32

    .line 1652
    mul-float v32, v16, v22

    add-float v3, v3, v32

    goto/16 :goto_2

    .line 1662
    :cond_3
    const/16 v32, 0x0

    cmpg-float v32, v3, v32

    if-gez v32, :cond_4

    const/high16 v21, -0x4080

    .restart local v21       #sign:F
    :goto_6
    goto/16 :goto_3

    .end local v21           #sign:F
    :cond_4
    const/high16 v21, 0x3f80

    goto :goto_6

    .line 1667
    :cond_5
    const/16 v32, 0x0

    cmpg-float v32, v2, v32

    if-gez v32, :cond_8

    const/high16 v21, -0x4080

    .line 1668
    .restart local v21       #sign:F
    :goto_7
    mul-float v32, v21, v30

    sub-float v32, v32, v26

    div-float v22, v32, v2

    .line 1669
    mul-float v32, v22, v3

    add-float v20, v32, v28

    .line 1670
    .restart local v20       #s:F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v32, v20

    if-gez v32, :cond_c

    cmpg-float v32, v20, v30

    if-gez v32, :cond_c

    .line 1671
    mul-float v32, v22, v4

    add-float v5, v32, v29

    .line 1672
    .restart local v5       #hitz:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v32, v0

    cmpl-float v32, v5, v32

    if-lez v32, :cond_b

    .line 1673
    const v32, 0x41f73333

    sub-float v32, v32, v29

    div-float v18, v32, v4

    .line 1674
    .restart local v18       #r:F
    mul-float v32, v2, v18

    add-float v32, v32, v26

    mul-float v32, v32, v9

    const/high16 v33, 0x3e80

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v23, v32, v33

    .line 1675
    mul-float v32, v3, v18

    add-float v32, v32, v28

    mul-float v32, v32, v9

    const/high16 v33, 0x3e80

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v25, v32, v33

    .line 1677
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_9

    .line 1678
    const/high16 v23, 0x3f80

    .line 1682
    :cond_6
    :goto_8
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/high16 v34, 0x3ff0

    cmpl-double v32, v32, v34

    if-lez v32, :cond_a

    .line 1683
    const/high16 v25, 0x3f80

    .line 1694
    :cond_7
    :goto_9
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1667
    .end local v5           #hitz:F
    .end local v18           #r:F
    .end local v20           #s:F
    .end local v21           #sign:F
    :cond_8
    const/high16 v21, 0x3f80

    goto :goto_7

    .line 1679
    .restart local v5       #hitz:F
    .restart local v18       #r:F
    .restart local v20       #s:F
    .restart local v21       #sign:F
    :cond_9
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_6

    .line 1680
    const/16 v23, 0x0

    goto :goto_8

    .line 1684
    :cond_a
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_7

    .line 1685
    const/16 v25, 0x0

    goto :goto_9

    .line 1689
    .end local v18           #r:F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v33, v0

    add-float v33, v33, v5

    div-float v18, v32, v33

    .line 1690
    .restart local v18       #r:F
    mul-float v32, v21, v18

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v23, v32, v33

    .line 1691
    mul-float v32, v20, v9

    mul-float v32, v32, v18

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v25, v32, v33

    goto :goto_9

    .line 1697
    .end local v5           #hitz:F
    .end local v18           #r:F
    :cond_c
    const/16 v32, 0x0

    cmpg-float v32, v3, v32

    if-gez v32, :cond_d

    const/high16 v21, -0x4080

    :goto_a
    goto/16 :goto_3

    :cond_d
    const/high16 v21, 0x3f80

    goto :goto_a

    .line 1716
    .restart local v5       #hitz:F
    .restart local v18       #r:F
    :cond_e
    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_0

    .line 1717
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 1721
    :cond_f
    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmpg-double v32, v32, v34

    if-gez v32, :cond_1

    .line 1722
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 1726
    .end local v18           #r:F
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->boxHeight:F

    move/from16 v33, v0

    add-float v33, v33, v5

    div-float v18, v32, v33

    .line 1727
    .restart local v18       #r:F
    mul-float v32, v20, v10

    mul-float v32, v32, v18

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v23, v32, v33

    .line 1728
    mul-float v32, v21, v18

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    const/high16 v33, 0x3f00

    add-float v25, v32, v33

    goto/16 :goto_5

    .line 1577
    .end local v2           #dx:F
    .end local v3           #dy:F
    .end local v4           #dz:F
    .end local v5           #hitz:F
    .end local v7           #index:I
    .end local v8           #index2:I
    .end local v12           #len:F
    .end local v15           #nx:F
    .end local v16           #ny:F
    .end local v17           #nz:F
    .end local v18           #r:F
    .end local v20           #s:F
    .end local v21           #sign:F
    .end local v22           #t:F
    .end local v26           #vx:F
    .end local v28           #vy:F
    .end local v29           #vz:F
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1746
    .end local v11           #j:I
    :cond_12
    return-void
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const/16 v6, 0x68

    const/16 v5, 0x32

    const/high16 v4, 0x42c8

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 373
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_4

    .line 375
    :cond_1
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 376
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 377
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 378
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 379
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 380
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 381
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 382
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 383
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 386
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 387
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 391
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 392
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 395
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 396
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 399
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 400
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 403
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 404
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 405
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 406
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 409
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 410
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 411
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 412
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 413
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 414
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 417
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 418
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 419
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 420
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 421
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 422
    const/high16 v0, 0x44a0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 423
    const/high16 v0, 0x43a9

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 424
    const/high16 v0, 0x4434

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 425
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 668
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTMODevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 671
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 672
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 676
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isCanadaFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 679
    const-wide v0, 0x4063e00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 680
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 684
    :cond_3
    return-void

    .line 428
    :cond_4
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_6

    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x3c0

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x21c

    if-ne v0, v1, :cond_7

    .line 431
    :cond_6
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 432
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 433
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 434
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 435
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 436
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 437
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 438
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 439
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 442
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 443
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 447
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 448
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 451
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 452
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 455
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 456
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 459
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 460
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 461
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 462
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 465
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 466
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 467
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 468
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 469
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 470
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 473
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 474
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 475
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 476
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 477
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 478
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 479
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 480
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 481
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 482
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 483
    const-wide v0, 0x4074400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 484
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 485
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 486
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 490
    :cond_7
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_9

    :cond_8
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_a

    .line 493
    :cond_9
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 494
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 495
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 496
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 497
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 498
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 499
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 500
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 501
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 504
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 505
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 509
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 510
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 513
    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 514
    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 517
    const/high16 v0, -0x3dda

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 518
    const v0, -0x3e3851ec

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 521
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 522
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 523
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 524
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 527
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 528
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 529
    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 530
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 533
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 534
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 535
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 536
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 537
    const/high16 v0, 0x4416

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 538
    const v0, 0x4499c000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 539
    const v0, 0x43bb8000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 540
    const v0, 0x443b8000

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 541
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    goto/16 :goto_0

    .line 546
    :cond_a
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_c

    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_d

    .line 549
    :cond_c
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 550
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 551
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 552
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 553
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 554
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 555
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 556
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 557
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 560
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 561
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 565
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 566
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 569
    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 570
    const v0, -0x42b33333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 573
    const/high16 v0, -0x3dda

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 574
    const v0, -0x3e3851ec

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 577
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 578
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 579
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 580
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 583
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 584
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 585
    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 586
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 589
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 590
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 591
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 592
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 593
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 594
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 595
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 596
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 597
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 599
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 600
    const-wide/high16 v0, 0x4072

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 601
    const-wide v0, 0x4060400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 602
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 603
    const-wide/high16 v0, 0x4062

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0

    .line 608
    :cond_d
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 609
    iput v6, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 610
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_WIDTH:F

    .line 611
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    int-to-float v0, v0

    div-float v0, v3, v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->INV_NUM_DETAILS_HEIGHT:F

    .line 612
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 613
    iput v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 614
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 615
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 616
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 619
    const v0, 0x3f333333

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 620
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 624
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 625
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 628
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 629
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 632
    const v0, -0x3dd3cccd

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 633
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 636
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 637
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 638
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 639
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 642
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 643
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 644
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 645
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 646
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 647
    iput v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 650
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    .line 651
    iput v4, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    .line 652
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscapeTicker:F

    .line 653
    iput v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    .line 654
    const/high16 v0, 0x43e1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 655
    const/high16 v0, 0x4470

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 656
    const/high16 v0, 0x4383

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 657
    const/high16 v0, 0x440c

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 658
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    .line 660
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    .line 661
    const-wide v0, 0x4074400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    .line 662
    const-wide v0, 0x4062c00000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 663
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    .line 664
    const-wide v0, 0x4064400000000000L

    iput-wide v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    goto/16 :goto_0
.end method

.method private tickAnimation(FF)V
    .locals 4
    .parameter "startY"
    .parameter "intensity"

    .prologue
    .line 1951
    const/4 v1, 0x0

    .line 1952
    .local v1, tempX:F
    move v2, p1

    .line 1954
    .local v2, tempY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerTotalCount:I

    if-ge v0, v3, :cond_0

    .line 1956
    int-to-float v1, v0

    .line 1957
    invoke-direct {p0, v2, v1, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1958
    neg-float v3, v1

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1954
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1962
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 1964
    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    .line 1824
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1826
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2047
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 2048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 2051
    :cond_0
    return-void
.end method

.method public getReflection()F
    .locals 1

    .prologue
    .line 1771
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    return v0
.end method

.method public getRefraction()F
    .locals 1

    .prologue
    .line 1765
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    return v0
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    .line 1124
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    .line 1132
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "view"
    .parameter "event"

    .prologue
    .line 844
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTouchEvent event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTouchedView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 857
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 858
    const/4 v1, 0x0

    .line 1028
    :goto_0
    return v1

    .line 862
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 864
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 865
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    .line 866
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    .line 872
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_5

    .line 874
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 875
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 876
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    .line 877
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    .line 888
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7

    .line 892
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_3

    .line 894
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_2

    .line 897
    const-string v1, "CircleUnlockRippleRenderer"

    const-string v2, "handleTouchEvent isUnlocked is true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 900
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 901
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    aput v3, v1, v2

    .line 905
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 911
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_6

    .line 913
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 914
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->MISSED_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    .line 923
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 924
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    .line 925
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    .line 926
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    .line 927
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 928
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 929
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 930
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 931
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playSound(I)V

    .line 1028
    :cond_4
    :goto_3
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 881
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 882
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    .line 883
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    .line 884
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    neg-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    .line 918
    :cond_6
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_RELEASE_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    .line 919
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->UNLOCK_DRAG_THRESHOLD:D

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    goto/16 :goto_2

    .line 933
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 940
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX:F

    sub-float v13, v1, v2

    .line 941
    .local v13, dx:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY:F

    sub-float v15, v1, v2

    .line 942
    .local v15, dy:F
    float-to-double v1, v13

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v3, v15

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double v11, v1, v3

    .line 943
    .local v11, distance_square:D
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 944
    .local v8, distForUnlock:D
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    .line 945
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    sub-float v14, v1, v2

    .line 946
    .local v14, dx2:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    sub-float v16, v1, v2

    .line 947
    .local v16, dy2:F
    float-to-double v1, v14

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move/from16 v0, v16

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v10, v1

    .line 948
    .local v10, distForwWave:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v1, v10

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 949
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    .line 950
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    .line 952
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockDragThreshold:D

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_9

    .line 954
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_8

    .line 956
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->cleanUp()V

    .line 957
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 961
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 962
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 963
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 964
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 968
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v1, v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_4

    .line 970
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v5, 0x14

    const/high16 v7, 0x4040

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    .line 973
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 974
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseX:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downX2:F

    .line 975
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseY:F

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->downY2:F

    .line 977
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_4

    .line 979
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    goto/16 :goto_3

    .line 985
    .end local v8           #distForUnlock:D
    .end local v10           #distForwWave:I
    .end local v11           #distance_square:D
    .end local v13           #dx:F
    .end local v14           #dx2:F
    .end local v15           #dy:F
    .end local v16           #dy2:F
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 992
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 994
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->unlockReleaseThreshold:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->distance:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_c

    .line 996
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v1, :cond_b

    .line 997
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 999
    :cond_b
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 1000
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 1001
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1002
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    .line 1003
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1007
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 1008
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 1010
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_d

    .line 1012
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->ripple(FFF)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v5, 0x96

    const/high16 v7, 0x4040

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    .line 1015
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-nez v1, :cond_d

    .line 1016
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 1020
    :cond_d
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    goto/16 :goto_3

    .line 1022
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1024
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    goto/16 :goto_3
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .parameter "gl"

    .prologue
    const v7, 0x8892

    const/16 v2, 0x1406

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 776
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_1

    .line 778
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadTexture()V

    .line 779
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 780
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setMesh()V

    .line 781
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    .line 783
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->setLockScreenReady()V

    .line 785
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "CircleUnlockRippleRenderer setLockScreenReady"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_0
    :goto_0
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 801
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 802
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 804
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->m_handle:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 807
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 808
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    const/4 v1, 0x3

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 809
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 812
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv0_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 813
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "aTexture0Coord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 814
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 815
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 816
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->textures0:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 817
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 820
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv1_buf:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 821
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    const/4 v1, 0x2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 822
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 823
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 824
    const/16 v0, 0xde1

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->texture1:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 825
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "texture1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 828
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "reflectionRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 829
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio1:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 830
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->shader:I

    const-string v1, "alphaRatio2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->alphaRatio2:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 833
    const v0, 0x8893

    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->i_buf:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 834
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->indices:[S

    array-length v1, v1

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 835
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->v_handle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 836
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 837
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->uv_handle1:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 839
    return-void

    .line 787
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    if-ne v0, v6, :cond_2

    .line 789
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 790
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->drawCount:I

    goto/16 :goto_0

    .line 794
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadBuffers()V

    .line 795
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->move()V

    .line 796
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setMesh()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->stopLongPressCheck(Landroid/view/View;)V

    .line 1969
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1971
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1997
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume isUnlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    if-eqz v0, :cond_1

    .line 2000
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->clearRipple()V

    .line 2002
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 2005
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onResume mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 2008
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 2009
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 2013
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->isUnlocked:Z

    .line 2017
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mTouchedView:Landroid/view/View;

    .line 2019
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 709
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 711
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 713
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 715
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    .line 717
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 718
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 737
    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 738
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 740
    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 741
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 743
    const/4 v14, 0x0

    .line 744
    .local v14, translateX:F
    const/4 v15, 0x0

    .line 745
    .local v15, translateY:F
    const/16 v16, 0x0

    .line 747
    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v2, v3, :cond_2

    .line 749
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 750
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 751
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 761
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 766
    return-void

    .line 724
    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 725
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 726
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 728
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    const/16 v3, 0x320

    if-ne v2, v3, :cond_0

    .line 730
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 731
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_0

    .line 755
    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 756
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 757
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 692
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setEnhancedBackground()V

    .line 697
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->createBuffers()V

    .line 698
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->loadShaderProp()V

    .line 699
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->makeBuffers()V

    .line 701
    return-void

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->setBackground()V

    goto :goto_0
.end method

.method public setReflection(F)V
    .locals 0
    .parameter "reflec"

    .prologue
    .line 1760
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1761
    return-void
.end method

.method public setRefraction(F)V
    .locals 1
    .parameter "refrac"

    .prologue
    .line 1755
    const/high16 v0, 0x3f80

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 1756
    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1140
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundNum:I

    .line 1142
    return-void
.end method

.method public setSoundRID(II)V
    .locals 5
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    const/4 v4, 0x1

    .line 1851
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRDownId:I

    .line 1852
    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mRUpId:I

    .line 1853
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 1854
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1856
    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1148
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->soundTime:I

    .line 1150
    return-void
.end method

.method public setStartLocation(I)V
    .locals 0
    .parameter "startLocation"

    .prologue
    .line 1860
    iput p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->startLocation:I

    .line 1862
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1831
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->enhancedLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1836
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1838
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1845
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1847
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1034
    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmx:F

    .line 1035
    iput p3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmy:F

    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1039
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1055
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1061
    iput p2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmx:F

    .line 1062
    iput p3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tmy:F

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1066
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1083
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1091
    return-void
.end method

.method public tikerRippleForClose()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 1891
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 1893
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerCloseLandscapeY:F

    .line 1894
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1895
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1906
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 1907
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 1909
    return-void

    .line 1900
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerClosePortraitY:F

    .line 1901
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1902
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method public tikerRippleForMove(F)V
    .locals 4
    .parameter "startY"

    .prologue
    const/high16 v3, 0x4000

    .line 1913
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerMoveCriteria:I

    if-eq v1, v2, :cond_0

    .line 1915
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 1947
    :goto_0
    return-void

    .line 1920
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 1921
    const/4 v0, 0x0

    .line 1923
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_1

    .line 1925
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForPortrait:F

    add-float/2addr p1, v1

    .line 1933
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_2

    .line 1935
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1936
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1945
    :goto_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    goto :goto_0

    .line 1929
    :cond_1
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerAjustYForLandscape:F

    add-float/2addr p1, v1

    goto :goto_1

    .line 1940
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1941
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_2
.end method

.method public tikerRippleForOpen()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 1868
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 1870
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenLandscapeY:F

    .line 1871
    .local v0, tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1872
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 1882
    :goto_0
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->intensityForPortraitTicker:F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickAnimation(FF)V

    .line 1883
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->moveCount:I

    .line 1885
    return-void

    .line 1876
    .end local v0           #tickerStartY:F
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->tickerOpenPortraitY:F

    .line 1877
    .restart local v0       #tickerStartY:F
    iget v1, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1878
    neg-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v3, p0, Lcom/android/internal/policy/impl/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    goto :goto_0
.end method
