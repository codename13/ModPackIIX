.class public Lcom/android/internal/policy/impl/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;
    }
.end annotation


# static fields
.field private static final HELP_OVERLAY_CHECKED:Ljava/lang/String; = "help_overlay_checked"

.field private static final INTENT_ACTION_HELPHUB:Ljava/lang/String; = "com.samsung.helphub.HELP"


# instance fields
.field private DBG:Z

.field private final FADE_IN_OUT_ANIMATION_DURATION:I

.field private final MSG_GO_TO_UNLOCK_SCREEN:I

.field private final MSG_SET_VOICE_RECOGNITION_FAIL:I

.field private TAG:Ljava/lang/String;

.field private helpOverlayTip:I

.field private isHelpOverlayUSA:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

.field private mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

.field private mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mDefaultHelpOverlay:Z

.field private mDefaultHelpText:Ljava/lang/String;

.field private mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field private mHandler:Landroid/os/Handler;

.field private mHelpText:Landroid/widget/TextView;

.field private mIsCameraShortCut:Z

.field private mIsHelpTextEnabled:Z

.field private mIsMotionLockscreen:Z

.field private mIsMultipleWakeUpOn:Z

.field private mIsWaterRipple:Z

.field private mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

.field private mLockIcon:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

.field private mMissedCallList:Landroid/view/View;

.field private mMissedEventWidget:Landroid/view/View;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

.field private mTalkbackEnabled:Z

.field private mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

.field private mUnlockWidget:Landroid/view/View;

.field private mUnreadMsgList:Landroid/view/View;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

.field private mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

.field private mVoiceHelpText:Landroid/widget/TextView;

.field private mVoiceIcon:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 26
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 401
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    const-string v3, "CircleLockScreen"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 75
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    .line 105
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 111
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 112
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 113
    const/16 v3, 0x12c

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->FADE_IN_OUT_ANIMATION_DURATION:I

    .line 119
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 122
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 123
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    .line 380
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 382
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->MSG_SET_VOICE_RECOGNITION_FAIL:I

    .line 383
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->MSG_GO_TO_UNLOCK_SCREEN:I

    .line 396
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 397
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    .line 403
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 404
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 405
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 406
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 407
    move-object/from16 v0, p2

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 415
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWindowManager:Landroid/view/IWindowManager;

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, accesibilityService:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 421
    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v10, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    .line 422
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-eqz v3, :cond_10

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v3, :cond_1

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 431
    .local v12, drivingMode:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 433
    .local v25, unlockDrivingMode:I
    const/4 v3, 0x1

    if-ne v12, v3, :cond_11

    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_11

    .line 434
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v12           #drivingMode:I
    .end local v25           #unlockDrivingMode:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTalkbackEnabled ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/16 v24, 0x0

    .line 446
    .local v24, statementString:Ljava/lang/String;
    :try_start_0
    new-instance v14, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 447
    .local v14, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v14}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v24

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentLockScreenString() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const v3, 0x1020383

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 451
    .local v23, statement:Landroid/widget/TextView;
    if-eqz v23, :cond_2

    .line 452
    if-eqz v24, :cond_12

    .line 453
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v14           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v23           #statement:Landroid/widget/TextView;
    :cond_2
    :goto_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusable(Z)V

    .line 467
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 468
    const/high16 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setDescendantFocusability(I)V

    .line 470
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 471
    .local v16, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    .line 473
    const v3, 0x1090058

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 483
    :goto_3
    const v3, 0x10202ef

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_motion_tilt_to_unlock"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_unlock_camera_short_cut"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsCameraShortCut:Z

    .line 488
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsCameraShortCut:Z

    if-eqz v3, :cond_4

    .line 489
    :cond_3
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-direct {v3, v0, v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    .line 492
    :cond_4
    const v3, 0x10202f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 495
    const v3, 0x10202f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    const v3, 0x10202f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    .line 499
    const v3, 0x10202f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    .line 501
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wake_up_lock_screen"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 509
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    .line 513
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    if-eqz v3, :cond_19

    .line 514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getDpi(Landroid/content/Context;)I

    move-result v11

    .line 520
    .local v11, deviceDpi:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_1a

    const/16 v3, 0x140

    if-ge v11, v3, :cond_1a

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    .line 523
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_wallpaper"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    const/16 v17, 0x0

    .line 524
    .local v17, isLiveWallpaper:Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    .line 525
    .local v21, isWaterRippleConfig:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1c

    const/16 v19, 0x1

    .line 526
    .local v19, isRippleEffect:Z
    :goto_b
    if-nez v17, :cond_1d

    if-eqz v21, :cond_1d

    if-eqz v19, :cond_1d

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->createUnlockWidget()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    .line 529
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreen$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    .line 600
    new-instance v3, Lcom/android/internal/policy/impl/CircleLockScreen$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    .line 611
    new-instance v3, Lcom/android/internal/policy/impl/ClockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 614
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 615
    new-instance v3, Lcom/android/internal/policy/impl/UsimWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/android/internal/policy/impl/UsimWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    .line 620
    :goto_d
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDivideMissedEventEnable()Z

    move-result v18

    .line 621
    .local v18, isNewMissedWidgetIsUsed:Z
    if-eqz v18, :cond_1f

    .line 622
    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v3, v0, v6}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    .line 628
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    const/16 v20, 0x1

    .line 629
    .local v20, isTickerOn:Z
    :goto_f
    if-eqz v20, :cond_22

    .line 630
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_21

    .line 631
    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v7, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    .line 641
    :goto_10
    new-instance v3, Lcom/android/internal/policy/impl/CircleShortcutWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/CircleShortcutWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Landroid/content/res/Configuration;ZLcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    .line 648
    const v3, 0x10202f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isKioskModeEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    .line 655
    const v3, 0x10202f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 658
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isVZWDevice()Z

    move-result v3

    if-nez v3, :cond_6

    .line 659
    const v3, 0x10202f1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 666
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v3, :cond_7

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 670
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v3, :cond_23

    .line 671
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 673
    .local v22, params:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 679
    .end local v22           #params:Landroid/widget/FrameLayout$LayoutParams;
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.hovering_ui"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 680
    if-eqz v18, :cond_24

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getMissedCallList()Lcom/android/internal/policy/impl/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 685
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetDA;->getUnreadMsgList()Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 701
    :cond_9
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    .line 702
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    .line 704
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v3, :cond_d

    .line 705
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v3, :cond_d

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "help_overlay_checked"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 710
    .local v8, mChecked:I
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 711
    const/16 v3, 0x65

    if-ge v8, v3, :cond_26

    const/4 v15, 0x1

    .line 716
    .local v15, flag:Z
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_b

    .line 717
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpHubInstalled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 718
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->needToShowHelpPage()I

    move-result v8

    .line 719
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_c

    const/16 v3, 0xb

    if-ge v8, v3, :cond_2a

    const/4 v15, 0x1

    .line 722
    :cond_c
    :goto_14
    if-eqz v15, :cond_d

    .line 724
    new-instance v7, Lcom/android/internal/policy/impl/CircleLockScreen$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/impl/CircleLockScreen$3;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    .line 740
    .local v7, helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->isHelpOverlayUSA:Z

    if-eqz v3, :cond_2b

    .line 741
    new-instance v3, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayUsa;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    .line 747
    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 751
    .end local v7           #helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    .end local v8           #mChecked:I
    .end local v15           #flag:Z
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v3, :cond_e

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 755
    :cond_e
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v3, :cond_f

    .line 756
    const v3, 0x10202f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 759
    :cond_f
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 760
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleTouchListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleTouchListener;)V

    .line 770
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 772
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    return-void

    .line 425
    .end local v11           #deviceDpi:I
    .end local v16           #inflater:Landroid/view/LayoutInflater;
    .end local v17           #isLiveWallpaper:Z
    .end local v18           #isNewMissedWidgetIsUsed:Z
    .end local v19           #isRippleEffect:Z
    .end local v20           #isTickerOn:Z
    .end local v21           #isWaterRippleConfig:Z
    .end local v24           #statementString:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "tb off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .restart local v12       #drivingMode:I
    .restart local v25       #unlockDrivingMode:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v4, "drv mode off"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 458
    .end local v12           #drivingMode:I
    .end local v25           #unlockDrivingMode:I
    .restart local v14       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v23       #statement:Landroid/widget/TextView;
    .restart local v24       #statementString:Ljava/lang/String;
    :cond_12
    const/16 v3, 0x8

    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 461
    .end local v14           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v23           #statement:Landroid/widget/TextView;
    :catch_0
    move-exception v13

    .line 462
    .local v13, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MDM Exception Statement :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 476
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v16       #inflater:Landroid/view/LayoutInflater;
    :cond_13
    const v3, 0x1090059

    const/4 v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_3

    .line 486
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 487
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 506
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 511
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "unlock_text"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    goto/16 :goto_7

    :cond_18
    const/4 v3, 0x0

    goto :goto_16

    .line 516
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 520
    .restart local v11       #deviceDpi:I
    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 523
    :cond_1b
    const/16 v17, 0x1

    goto/16 :goto_a

    .line 525
    .restart local v17       #isLiveWallpaper:Z
    .restart local v21       #isWaterRippleConfig:Z
    :cond_1c
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 526
    .restart local v19       #isRippleEffect:Z
    :cond_1d
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 617
    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    goto/16 :goto_d

    .line 624
    .restart local v18       #isNewMissedWidgetIsUsed:Z
    :cond_1f
    new-instance v4, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    move-object/from16 v0, p5

    invoke-direct {v4, v5, v3, v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    goto/16 :goto_e

    .line 628
    :cond_20
    const/16 v20, 0x0

    goto/16 :goto_f

    .line 633
    .restart local v20       #isTickerOn:Z
    :cond_21
    new-instance v3, Lcom/android/internal/policy/impl/TickerWidget;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/TickerWidget;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    goto/16 :goto_10

    .line 637
    :cond_22
    const v3, 0x10202f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_10

    .line 675
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_11

    .line 690
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getMissedCallList()Lcom/android/internal/policy/impl/CircleMissedCallList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    if-eqz v3, :cond_25

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedCallList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 694
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getUnreadMsgList()Lcom/android/internal/policy/impl/CircleUnreadMsgList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnreadMsgList:Landroid/view/View;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_12

    .line 711
    .restart local v8       #mChecked:I
    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_13

    .line 713
    :cond_27
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0xde

    :goto_17
    if-ge v8, v3, :cond_29

    const/4 v15, 0x1

    .restart local v15       #flag:Z
    :goto_18
    goto/16 :goto_13

    .end local v15           #flag:Z
    :cond_28
    const/16 v3, 0x6f

    goto :goto_17

    :cond_29
    const/4 v15, 0x0

    goto :goto_18

    .line 721
    .restart local v15       #flag:Z
    :cond_2a
    const/4 v15, 0x0

    goto/16 :goto_14

    .line 744
    .restart local v7       #helpCallback:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;
    :cond_2b
    new-instance v3, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->getItemCount()I

    move-result v9

    move-object/from16 v5, p5

    move-object/from16 v6, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/LockscreenHelpOverlay;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface$HelpOverlayCallback;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    goto/16 :goto_15
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/TickerWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/CircleLockScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/animation/AlphaAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/CircleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsHelpTextEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceHelpText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->refreshDefaultHelpText(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/CircleLockScreen;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/CircleLockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isSecure()Z

    move-result v0

    return v0
.end method

.method private bedimBackground(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 884
    :cond_0
    if-eqz p1, :cond_1

    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/high16 v1, 0x5500

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private createUnlockWidget()Landroid/view/View;
    .locals 3

    .prologue
    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, unlockWidget:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsWaterRipple:Z

    if-eqz v1, :cond_0

    .line 858
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockRipple;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockRipple;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 862
    .restart local v0       #unlockWidget:Landroid/view/View;
    :goto_0
    return-object v0

    .line 860
    :cond_0
    new-instance v0, Lcom/android/internal/policy/impl/CircleUnlockView;

    .end local v0           #unlockWidget:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v0       #unlockWidget:Landroid/view/View;
    goto :goto_0
.end method

.method private isActiveStreamExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 841
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "FM is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_0
    return v0

    .line 844
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Music is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v2, "Recording is active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "No active stream"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHelpHubInstalled()Z
    .locals 4

    .prologue
    .line 1194
    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1195
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.helphub.HELP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1198
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1199
    const/4 v3, 0x1

    .line 1200
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isKioskModeEnabled()Z
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mKioskMode:Landroid/app/enterprise/kioskmode/KioskMode;

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    return v0
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1204
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_1

    .line 1207
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isSimPinSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimPinSecure()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1211
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-nez v2, :cond_1

    .line 1214
    :cond_0
    :goto_0
    return v1

    .line 1213
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1214
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private needToShowHelpPage()I
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1167
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/net/Uri;

    .line 1168
    .local v9, uri:[Landroid/net/Uri;
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_device"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v1

    .line 1169
    const-string v0, "content://com.samsung.helphub.provider/help_page_status/unlock_shortcuts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v9, v2

    .line 1171
    const/4 v8, 0x0

    .line 1173
    .local v8, result:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v9

    if-ge v7, v0, :cond_3

    .line 1174
    const/4 v6, 0x0

    .line 1177
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-object v1, v9, v7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "displayed"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1181
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor.getInt(0) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-wide/high16 v1, 0x4024

    int-to-double v3, v7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 1186
    :cond_0
    if-eqz v6, :cond_1

    .line 1187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1173
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1186
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 1190
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    return v8
.end method

.method private refreshDefaultHelpText(Z)V
    .locals 3
    .parameter "isVoiceUnlockFailed"

    .prologue
    const v2, 0x1040635

    const v1, 0x1040633

    .line 779
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v0, :cond_3

    .line 780
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_2

    .line 781
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    .line 800
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040636

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 790
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_6

    .line 791
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 792
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 794
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040634

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0

    .line 797
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpText:Ljava/lang/String;

    goto :goto_0
.end method

.method private startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMultipleWakeUpOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTalkbackEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isActiveStreamExist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 807
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/CircleLockScreen$4;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 833
    new-instance v0, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    .line 834
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->start()V

    .line 838
    :goto_0
    return-void

    .line 836
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1026
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    .line 1029
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->cleanUp()V

    .line 1031
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->cleanUp()V

    .line 1037
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 1039
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_3

    .line 1040
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->cleanUp()V

    .line 1042
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_4

    .line 1043
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->cleanUp()V

    .line 1044
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->cleanUp()V

    .line 1045
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_5

    .line 1046
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->cleanUp()V

    .line 1047
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_6

    .line 1048
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->cleanUp()V

    .line 1050
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1051
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpDestroy()V

    .line 1052
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->quit()V

    .line 1056
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportClockVisible(Z)V

    .line 1058
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1059
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 1060
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    .line 1061
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 930
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 935
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 942
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 867
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    const/4 v1, 0x0

    .line 876
    :goto_0
    return v1

    .line 872
    :cond_0
    const-string v0, ""

    .line 873
    .local v0, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->getTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 1119
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 1137
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 995
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_1

    .line 998
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay removeView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->onPause()V

    .line 1002
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->onPause()V

    .line 1008
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_3

    .line 1011
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->onPause()V

    .line 1013
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_4

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->onPause()V

    .line 1015
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onPause()V

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_5

    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->onPause()V

    .line 1018
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_6

    .line 1019
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->onPause()V

    .line 1020
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1021
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    .line 1022
    :cond_7
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 1133
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 3
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo() showPatteryInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pluggedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " batteryLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 1093
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1098
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/UsimWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1100
    :cond_0
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 1111
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter "child"
    .parameter "event"

    .prologue
    .line 1144
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1149
    .local v0, record:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1150
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/CircleLockScreen;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1151
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 1152
    const/4 v1, 0x1

    .line 1154
    .end local v0           #record:Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 947
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->onResume()V

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 953
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimWidget;->onResume()V

    .line 955
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidgetInterface;->onResume()V

    .line 956
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    if-eqz v0, :cond_3

    .line 957
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mTickerWidget:Lcom/android/internal/policy/impl/TickerWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/TickerWidget;->onResume()V

    .line 959
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    if-eqz v0, :cond_4

    .line 960
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShortcutWidget:Lcom/android/internal/policy/impl/CircleShortcutWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleShortcutWidget;->onResume()V

    .line 964
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallback.isShowingAndNotHidden()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 966
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 971
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-nez v0, :cond_6

    .line 972
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->startVoiceEngineThread(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 974
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v0, :cond_7

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->onResume()V

    .line 977
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mDefaultHelpOverlay:Z

    if-eqz v0, :cond_8

    .line 978
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isTabletDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 979
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_8

    .line 980
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->onResume()V

    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 982
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_8

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 984
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 986
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 991
    :cond_8
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1125
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1105
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayUsimWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUsimWidget:Lcom/android/internal/policy/impl/UsimWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/UsimWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 1107
    :cond_0
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 0
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 1115
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 1129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 896
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->freezeforPermBlockedSim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return v0

    .line 899
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 920
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-nez v1, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockListener:Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 922
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUnlockWidget:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/CircleUnlockWidget;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 901
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_3

    .line 902
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->registerListener()V

    .line 903
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->resetMotionEngine()V

    .line 904
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 907
    :cond_3
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    .line 908
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 912
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    if-eqz v1, :cond_2

    .line 913
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->resetMotionEngine()V

    .line 914
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->setMotionReady(Z)V

    .line 915
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsMotionLockscreen:Z

    if-eqz v1, :cond_2

    .line 916
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleLockScreenMotion:Lcom/android/internal/policy/impl/CircleLockScreenMotion;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/CircleLockScreenMotion;->handleMotionMarker(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1065
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    if-eqz p1, :cond_2

    const-string v0, "focused"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->isSupportMultipleWakeUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    if-eqz p1, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpStartVerify()V

    .line 1074
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->setWhichHelpInfo()V

    .line 1076
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;->getWhichTip()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    .line 1077
    iget v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->helpOverlayTip:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "LockscreenHelpOverlay addView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockscreenHelpOverlay:Lcom/android/internal/policy/impl/LockscreenHelpOverlayInterface;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1081
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    :cond_1
    return-void

    .line 1065
    :cond_2
    const-string v0, "unfocused"

    goto :goto_0

    .line 1071
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mVoiceEngineThread:Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$MultipleWakeUpVoiceEngineThread;->wakeUpTerminateVerify()V

    goto :goto_1
.end method

.method public setVoiceRecognitionFailed()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    :cond_0
    return-void
.end method
