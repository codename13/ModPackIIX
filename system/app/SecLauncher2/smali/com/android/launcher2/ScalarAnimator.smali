.class public Lcom/android/launcher2/ScalarAnimator;
.super Ljava/lang/Object;
.source "ScalarAnimator.java"


# instance fields
.field private mCurrent:F

.field private mDefaultDuration:J

.field private mDelay:J

.field private mDelta:F

.field private mDuration:J

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseDuration:F

.field private mIsRunning:Z

.field private mStart:F

.field private mStartTime:J

.field private mStop:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 16
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 17
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 18
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 20
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 36
    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .parameter "defaultDuration"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 16
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 17
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 18
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 20
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 46
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 47
    return-void
.end method

.method public constructor <init>(JF)V
    .locals 4
    .parameter "defaultDuration"
    .parameter "initialStart"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 16
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 17
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 18
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 20
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 71
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 72
    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 73
    return-void
.end method

.method public constructor <init>(JFLandroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "defaultDuration"
    .parameter "initialStart"
    .parameter "interpolator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 16
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 17
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 18
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 20
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 108
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 109
    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 110
    iput-object p4, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 111
    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "defaultDuration"
    .parameter "interpolator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 16
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 17
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 18
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 20
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 87
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 88
    iput-object p3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "interpolator"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 16
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 17
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 18
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 20
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 21
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 22
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 23
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 57
    iput-object p1, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    move-result v0

    return v0
.end method

.method public abort(F)Z
    .locals 3
    .parameter "stop"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    .line 138
    .local v0, aborted:Z
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 139
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 140
    return v0
.end method

.method public extend(FJ)V
    .locals 4
    .parameter "stop"
    .parameter "extendDuration"

    .prologue
    const-wide/16 v2, 0x0

    .line 160
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-nez v0, :cond_2

    .line 162
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 165
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 166
    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 167
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 168
    :cond_3
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    goto :goto_0

    .line 170
    :cond_4
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    goto :goto_0
.end method

.method public get()F
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->get(J)F

    move-result v0

    return v0
.end method

.method public get(J)F
    .locals 9
    .parameter "currentTime"

    .prologue
    const-wide/16 v7, 0x0

    .line 202
    iget-boolean v3, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-eqz v3, :cond_1

    .line 205
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    sub-long v3, p1, v3

    iget-wide v5, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    sub-long v0, v3, v5

    .line 206
    .local v0, elapsedTime:J
    cmp-long v3, v0, v7

    if-gtz v3, :cond_0

    .line 208
    const-wide/16 v0, 0x0

    .line 209
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 213
    :cond_0
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 214
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 215
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 229
    .end local v0           #elapsedTime:J
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    return v3

    .line 217
    .restart local v0       #elapsedTime:J
    :cond_2
    cmp-long v3, v0, v7

    if-lez v3, :cond_1

    .line 219
    long-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    mul-float v2, v3, v4

    .line 222
    .local v2, factor:F
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_3

    .line 223
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 224
    :cond_3
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    goto :goto_0
.end method

.method public getFactor(J)F
    .locals 7
    .parameter "currentTime"

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, factor:F
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 249
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    sub-long v0, p1, v3

    .line 250
    .local v0, elapsedTime:J
    iget-wide v3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 251
    const/high16 v2, 0x3f80

    .line 257
    .end local v0           #elapsedTime:J
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    .line 258
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 259
    :cond_1
    return v2

    .line 253
    .restart local v0       #elapsedTime:J
    :cond_2
    long-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    mul-float v2, v3, v4

    goto :goto_0
.end method

.method public getRemaining()F
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    return v0
.end method

.method public setDefaultDuration(J)V
    .locals 0
    .parameter "defaultDuration"

    .prologue
    .line 368
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 369
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "interpolator"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 380
    return-void
.end method

.method public start(FF)V
    .locals 2
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 296
    return-void
.end method

.method public start(FFJ)V
    .locals 7
    .parameter "start"
    .parameter "stop"
    .parameter "duration"

    .prologue
    .line 317
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/ScalarAnimator;->start(FFJJ)V

    .line 318
    return-void
.end method

.method public start(FFJJ)V
    .locals 4
    .parameter "start"
    .parameter "stop"
    .parameter "duration"
    .parameter "delay"

    .prologue
    const-wide/16 v2, 0x0

    .line 343
    iput-wide p5, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 344
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 345
    iput p2, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 346
    iput-wide p3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 347
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 348
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 349
    :cond_0
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 354
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 355
    return-void

    .line 351
    :cond_1
    const/high16 v0, 0x3f80

    iget-wide v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    .line 352
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    goto :goto_0
.end method

.method public to(F)V
    .locals 3
    .parameter "stop"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iget-wide v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 395
    :cond_1
    return-void
.end method

.method public to(FJ)V
    .locals 1
    .parameter "stop"
    .parameter "duration"

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 415
    :cond_1
    return-void
.end method

.method public to(FJJ)V
    .locals 7
    .parameter "stop"
    .parameter "duration"
    .parameter "delay"

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/ScalarAnimator;->start(FFJJ)V

    .line 438
    :cond_1
    return-void
.end method
