.class public Lcom/sec/android/app/camera/Camera;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem$UserSelectionChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$VoiceRecognizer;,
        Lcom/sec/android/app/camera/Camera$UserWrapper;,
        Lcom/sec/android/app/camera/Camera$OnUserSelected;,
        Lcom/sec/android/app/camera/Camera$LastContentUriCallback;,
        Lcom/sec/android/app/camera/Camera$MainHandler;,
        Lcom/sec/android/app/camera/Camera$GestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field public static final ACTIVE_REQUEST_TIMEOUT:I = 0xce

.field public static final ACTIVE_USER:I = 0xcb

.field private static final AF_WAIT_TIMER_EXPIRED:I = 0x2

.field private static final BURST_SHOT_WAIT_DURATION:I = 0x15e

.field public static final CANCEL_ACTIVE_USER:I = 0xcc

.field private static final DELAY_TIME_TO_START_AUTO_FOCUS:I = 0x15e

.field private static final DM_CAMERA_OFF:I = 0x0

.field private static final DM_CAMERA_ON:I = 0x1

.field public static final FILE_USER_PHOTO_DIR:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera"

.field public static final FILE_USER_PHOTO_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

.field public static final FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String; = "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

.field private static final HALF_SHUTTER_DURATION:I = 0x12c

.field private static final INTENT_MSG_SECURITY:Ljava/lang/String; = "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

.field private static final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String; = "voice_input_control"

.field private static final KEY_VOICE_INPUT_CONTROL_CAMERA:Ljava/lang/String; = "voice_input_control_camera"

.field private static MAX_SIMULTANEOUS_CAPTURE:I = 0x0

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_BASE:I = 0x0

.field public static final OBJECT_TRACKING_STATUS_FAIL:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_MISSING:I = 0x4

.field public static final OBJECT_TRACKING_STATUS_PROGRESSING:I = 0x1

.field public static final OBJECT_TRACKING_STATUS_SUCCESS:I = 0x2

.field private static final ORIENTATION_DIRTY_DURATION:I = 0x3e8

.field private static final ORIENTATION_TIMER_EXPIRED:I = 0x3

.field public static final REFESH_VIEW_COMMAND:I = 0xcd

.field private static final RUN_DIALOG_TO_CONFIRM:I = 0xc8

.field private static final RUN_DIALOG_TO_NOTICE_COMFIRMED:I = 0xca

.field private static final RUN_TO_SNS_MODE:I = 0xc9

.field private static final SET_DIRTY_COUNT:I = 0x7

.field private static final SET_DIRTY_DURATION:I = 0x64

.field private static final SET_DIRTY_TIMER_EXPIRED:I = 0x4

.field public static final SHOW_FOCUS_RECT:I = 0xcf

.field public static SHUTTER_SOUND_SHORT:I = 0x0

.field private static final START_AUTO_FOCUS:I = 0x5

.field private static final START_BURST_SHOT:I = 0x12c

.field public static SnS_RECV_FOLDER:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "Camera"

.field private static isEULAenabled:Z

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private bFromSecureSetting:Z

.field private battLevel:I

.field private battScale:I

.field private callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

.field private cb_conn:Landroid/content/ServiceConnection;

.field private conn:Landroid/content/ServiceConnection;

.field public devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

.field public iShootShareService:Lcom/samsung/shareshot/IShareShotService;

.field private mActionMoveCount:I

.field private mActiveIp:Ljava/lang/String;

.field public mActivieUserHandler:Landroid/os/Handler;

.field protected mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

.field private mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mCheckStorageForBurstShot:Z

.field private mChkAllowFocusTouch:Z

.field private mChkLaunchGallery:Z

.field private mCropValue:Ljava/lang/String;

.field public mDeviceList:Lcom/sec/android/glview/TwGLList;

.field public mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mDirtyCount:I

.field private mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

.field private mFinishOnCreate:Z

.field private mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

.field private mGestureDetecor:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mIfBackToPreMode:Z

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsDestroying:Z

.field private mIsTouchFocusStarted:Z

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastCaptureRawData:[B

.field private mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

.field protected mLowBatteryDisableFlashPopupDisplayed:Z

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field public mName:Ljava/lang/String;

.field public mNameChanged:Z

.field public mNotify:Z

.field public mOnUserSelected:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/Camera$OnUserSelected;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotoPath:Ljava/lang/String;

.field private mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

.field private mPreMode:I

.field public mReceiveImagePath:Ljava/lang/String;

.field public mReceived:Z

.field public mRespond:Z

.field public mRespondNoti:Z

.field private mReturnUri:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSideMenuLoadingThread:Ljava/lang/Thread;

.field private mSkipSaveDiscard:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamId:[I

.field private mStreamVolume:F

.field private mTouchAutoFocusActive:Z

.field public mUserArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;"
        }
    .end annotation
.end field

.field public mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

.field protected mWeather:Lcom/sec/android/app/camera/Weather;

.field public sobject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 251
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/Camera;->isEULAenabled:Z

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot/RECV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/Camera;->SnS_RECV_FOLDER:Ljava/lang/String;

    .line 287
    sput v2, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    .line 289
    sput v2, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 180
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 181
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 183
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 185
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 186
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 191
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 192
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    .line 197
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 205
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 206
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 208
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    .line 209
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 211
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 212
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 226
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 244
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 252
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    .line 267
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 271
    const-string v0, " "

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 272
    const-string v0, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 274
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 275
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 276
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mNotify:Z

    .line 277
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mRespond:Z

    .line 279
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 280
    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    .line 281
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReceiveImagePath:Ljava/lang/String;

    .line 282
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReceived:Z

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 285
    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mCheckStorageForBurstShot:Z

    .line 293
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 296
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 298
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 304
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 356
    new-instance v0, Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camera$GestureListener;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    .line 357
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 462
    new-instance v0, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 465
    new-instance v0, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActivieUserHandler:Landroid/os/Handler;

    .line 539
    new-instance v0, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 691
    new-instance v0, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2031
    new-instance v0, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 4242
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 5119
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    .line 5120
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    .line 5121
    new-instance v0, Lcom/sec/android/app/camera/Camera$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$17;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    .line 5151
    new-instance v0, Lcom/sec/android/app/camera/Camera$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$18;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    .line 5220
    new-instance v0, Lcom/sec/android/app/camera/Camera$19;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$19;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    .line 5478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    .line 5725
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 5726
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 6021
    return-void
.end method

.method private IsGpsEnableInSettings()V
    .locals 3

    .prologue
    .line 2814
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900d5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090015

    new-instance v2, Lcom/sec/android/app/camera/Camera$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$7;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900d7

    new-instance v2, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2825
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handlePluggedLowBattery(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camera;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/camera/Camera;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/Camera;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/camera/Camera;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/sec/android/app/camera/Camera;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLAniViewGroup;)Lcom/sec/android/glview/TwGLAniViewGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/IShareShotCallbackRegister;)Lcom/samsung/shareshot/IShareShotCallbackRegister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/camera/Camera;)Lcom/samsung/shareshot/IShareShotServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput p1, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return p1
.end method

.method static synthetic access$404(Lcom/sec/android/app/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v0

    return v0
.end method

.method private checkBatteryStatus()V
    .locals 2

    .prologue
    .line 3042
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3043
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3044
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3045
    return-void
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 4390
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 4391
    .local v2, filepath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 4392
    .local v1, degree:I
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4393
    invoke-static {v2}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 4394
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4398
    :cond_0
    const v3, 0xc800

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4399
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4400
    return-object v0
.end method

.method private getUserName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5952
    const/4 v1, 0x0

    .line 5954
    .local v1, info:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v2, :cond_0

    .line 5955
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v2}, Lcom/samsung/shareshot/IShareShotService;->getLocalPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5960
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 5961
    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 5964
    :goto_1
    return-object v2

    .line 5956
    :catch_0
    move-exception v0

    .line 5958
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5964
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/16 v8, -0x32

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3048
    const-string v3, "status"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3049
    .local v1, battStatus:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    .line 3050
    const-string v3, "level"

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    .line 3051
    const-string v3, "plugged"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3052
    .local v0, battPlugged:I
    const-string v3, "temperature"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3054
    .local v2, battTemp:I
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleBatteryChanged : Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battPlugged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", battTemp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3057
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    if-ne v3, v7, :cond_9

    .line 3058
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bFlagOverheat:Z

    .line 3059
    const/16 v3, 0x1e0

    if-lt v2, v3, :cond_0

    .line 3060
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleBatteryOverheat()V

    .line 3070
    :cond_0
    :goto_0
    if-gt v2, v8, :cond_1

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_TEMP_FLASH_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_1

    .line 3071
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v3, :cond_1

    .line 3072
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 3090
    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    if-gt v3, v4, :cond_3

    .line 3092
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    sget v4, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v3, v4, :cond_a

    .line 3093
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3094
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3096
    :cond_2
    iput-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3098
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    .line 3111
    :cond_3
    :goto_1
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    if-le v3, v4, :cond_5

    if-le v2, v8, :cond_5

    .line 3112
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3113
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3115
    :cond_4
    iput-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 3117
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-eqz v3, :cond_5

    .line 3118
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 3119
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 3137
    :cond_5
    iget v3, p0, Lcom/sec/android/app/camera/Camera;->battLevel:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/sec/android/app/camera/Camera;->battScale:I

    div-int/2addr v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    .line 3138
    iput-boolean v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    .line 3139
    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    if-ne v0, v7, :cond_7

    .line 3140
    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    .line 3142
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v3, :cond_8

    .line 3143
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    iget v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBatteryLevel:I

    iget-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bIsCharging:Z

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setBatteryLevel(IZ)V

    .line 3146
    :cond_8
    return-void

    .line 3063
    :cond_9
    const/16 v3, 0x1fe

    if-lt v2, v3, :cond_0

    .line 3064
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleBatteryOverheat()V

    goto/16 :goto_0

    .line 3102
    :cond_a
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    if-nez v3, :cond_3

    .line 3103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finishTimerCount()V

    goto :goto_1
.end method

.method private handlePluggedLowBattery(Z)V
    .locals 5
    .parameter "temp"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 5055
	return-void
    const-string v1, "Camera"

    const-string v2, "handlePluggedLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5057
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5095
    :goto_0
    return-void

    .line 5060
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5061
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5062
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 5063
    if-eqz p1, :cond_3

    .line 5064
    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 5068
    :goto_1
    const v1, 0x7f090017

    new-instance v2, Lcom/sec/android/app/camera/Camera$15;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$15;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5074
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5075
    new-instance v1, Lcom/sec/android/app/camera/Camera$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$16;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 5086
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 5087
    if-eqz p1, :cond_1

    .line 5088
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 5089
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 5090
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    .line 5091
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 5093
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    .line 5094
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 5066
    :cond_3
    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private handleShutterKey()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/16 v9, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3952
    const-string v5, "Camera"

    const-string v6, "handleShutterKey"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-Shot2Shot**StartU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3956
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShutterKeyPressed**Point["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v5, :cond_0

    .line 3961
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 3965
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 3966
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 3970
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    if-ne v5, v11, :cond_2

    .line 3971
    const-string v4, "Camera"

    const-string v5, "handleShutterKey - CE_STATE_STARTING_PREVIEW"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4026
    :cond_1
    :goto_0
    return v3

    .line 3975
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3976
    const-string v3, "Camera"

    const-string v5, "returning because it is capturing.."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 3977
    goto :goto_0

    .line 3980
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v11, :cond_5

    .line 3981
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x2c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3982
    .local v2, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v2, :cond_4

    move v3, v4

    .line 3983
    goto :goto_0

    .line 3984
    :cond_4
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 3985
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3986
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 3987
    goto :goto_0

    .line 3991
    .end local v2           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v10, :cond_8

    .line 3992
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3993
    .local v1, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v1, :cond_6

    .line 3994
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v9, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3995
    .restart local v1       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3997
    :cond_6
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V

    .line 3998
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3999
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v3

    if-ge v3, v10, :cond_7

    move v3, v4

    .line 4000
    goto :goto_0

    .line 4001
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 4002
    goto/16 :goto_0

    .line 4006
    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x11

    if-eq v5, v6, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x18

    if-ne v5, v6, :cond_f

    .line 4008
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v6, 0x3b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4009
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_b

    :cond_a
    move v3, v4

    .line 4010
    goto/16 :goto_0

    .line 4012
    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_d

    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v5

    if-ge v5, v4, :cond_e

    .line 4014
    :cond_d
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    :goto_1
    move v3, v4

    .line 4017
    goto/16 :goto_0

    .line 4016
    :cond_e
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto :goto_1

    .line 4018
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/16 v6, 0x17

    if-ne v5, v6, :cond_10

    .line 4019
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 4020
    goto/16 :goto_0

    .line 4021
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v5

    if-ne v5, v4, :cond_1

    .line 4022
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4023
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startBurstShotTimer()V

    goto/16 :goto_0
.end method

.method private handleShutterKeyReleased()Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/16 v7, 0x2a

    const/4 v3, 0x1

    .line 4030
    const-string v5, "Camera"

    const-string v6, "handleShutterKeyReleased"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4032
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4033
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased - returning because it is capturing.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    :cond_0
    :goto_0
    return v3

    .line 4037
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 4038
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 4039
    .local v1, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v1, :cond_2

    .line 4040
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v6, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v7, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4041
    .restart local v1       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v5, v5, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4043
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v5

    if-ge v5, v8, :cond_3

    .line 4044
    const-string v4, "Camera"

    const-string v5, "handleShutterKeyReleased - panorama can be saved at least two shot"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4049
    .end local v1           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    .line 4050
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 4051
    .local v2, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-eqz v2, :cond_0

    .line 4053
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu$OnSmileDetectingStoppedListener;)V

    .line 4054
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4055
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4057
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    goto :goto_0

    .line 4060
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopSmileShot()V

    .line 4061
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 4062
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_0

    .line 4065
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getOriginalViewFinderWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getOriginalViewFinderHeight()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->getPreviewWidth()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->startDetect(III)V

    .line 4066
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartSmileDetection()V

    .line 4067
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_0

    .line 4072
    .end local v2           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v5

    if-ne v5, v3, :cond_9

    .line 4074
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4075
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x3b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 4076
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_7

    move v3, v4

    .line 4077
    goto/16 :goto_0

    .line 4079
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 4081
    .end local v0           #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShotTimer()V

    :cond_9
    move v3, v4

    .line 4084
    goto/16 :goto_0
.end method

.method private initIntentFilter()V
    .locals 9

    .prologue
    .line 818
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 821
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v7, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 825
    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v7, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    const-string v7, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 828
    const-string v7, "file"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 829
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 832
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 833
    .local v4, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 837
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 838
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 839
    .local v3, intentFilterSMSReceives:Landroid/content/IntentFilter;
    const-string v7, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v7, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 841
    const-string v7, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 846
    .end local v3           #intentFilterSMSReceives:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 847
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 848
    .local v2, intentFilterDcmoSet:Landroid/content/IntentFilter;
    const-string v7, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 849
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 853
    .end local v2           #intentFilterDcmoSet:Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 854
    .local v0, i:Landroid/content/IntentFilter;
    const-string v7, "com.android.shoot.userchanged"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 855
    const-string v7, "com.android.shootshare.recvfile"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 856
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 858
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 859
    .local v6, wifiDirectFilter:Landroid/content/IntentFilter;
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v6}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 864
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 865
    .local v5, intentFilterShutdown:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v7, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    new-instance v7, Landroid/content/Intent;

    const-string v8, "intent.stop.app-in-app"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 871
    return-void
.end method

.method private initIntentFilterBattery()V
    .locals 2

    .prologue
    .line 875
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 876
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 878
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 880
    return-void
.end method

.method private initIntentReceive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 915
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 917
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 918
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 919
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 920
    const-string v1, "return-uri"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    .line 921
    const-string v1, "skip-savediscard"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z

    .line 926
    :goto_0
    return-void

    .line 924
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRemains()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 884
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 885
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFacePositionChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFacePositionChangedListener;)V

    .line 886
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 888
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 890
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->initGPSIndicator()V

    .line 893
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 895
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 897
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGestureListener:Lcom/sec/android/app/camera/Camera$GestureListener;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 900
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 901
    return-void
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 3

    .prologue
    .line 2086
    const/4 v0, 0x0

    .line 2087
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2104
    :cond_0
    :goto_0
    return v0

    .line 2098
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    const/4 v0, 0x1

    goto :goto_0

    .line 2087
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method private manageLocalService(Z)V
    .locals 9
    .parameter "start"

    .prologue
    const/4 v8, 0x1

    .line 5178
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " manageLocalService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    if-nez p1, :cond_5

    .line 5180
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v5, :cond_1

    .line 5218
    :cond_0
    :goto_0
    return-void

    .line 5182
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    if-eqz v5, :cond_0

    .line 5185
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5186
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->leaveOut()V

    .line 5188
    :cond_2
    const-string v5, "Camera"

    const-string v6, " unbind service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareCallbackRegister:Lcom/samsung/shareshot/IShareShotCallbackRegister;

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->callback:Lcom/samsung/shareshot/IShareShotServiceCallback;

    invoke-interface {v5, v6}, Lcom/samsung/shareshot/IShareShotCallbackRegister;->unregisterCallback(Lcom/samsung/shareshot/IShareShotServiceCallback;)Z

    .line 5190
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->isAutoStart()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5191
    :cond_3
    const-string v5, "Camera"

    const-string v6, " stop service"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5192
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5193
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5195
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5196
    .local v2, callbackUnbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z

    .line 5197
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5198
    .local v4, unbindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5199
    .end local v2           #callbackUnbindIntent:Landroid/content/Intent;
    .end local v4           #unbindIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 5200
    .local v3, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v5, "Camera"

    const-string v6, " service null exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 5206
    .end local v3           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 5207
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 5203
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5204
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 5209
    :cond_5
    if-ne p1, v8, :cond_0

    .line 5210
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotCallbackRegister"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5211
    .local v1, callbackBindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5212
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->cb_conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v5, v8}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 5214
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.shareshot.IShareShotService"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5215
    .local v0, bindIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5216
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v5, v8}, Lcom/sec/android/app/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0
.end method

.method private onChkImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onReceiveActivateMsg(Lcom/samsung/dmc/ux/db/UserInfo;)V
    .locals 2
    .parameter "gsUserInfo"

    .prologue
    .line 5315
    const-string v0, "Camera"

    const-string v1, "RECV_ACTIVATE_MSG: showing dialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    const-string v0, "Camera"

    const-string v1, "checkActivateDlg() == false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5318
    new-instance v0, Lcom/sec/android/app/camera/Camera$20;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/Camera$20;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5335
    return-void
.end method

.method private onUserCancelSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 5464
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V

    .line 5465
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onUnSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5470
    :goto_0
    return-void

    .line 5467
    :catch_0
    move-exception v0

    .line 5468
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onUserSelected(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 5449
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/dmc/ux/db/UserInfo;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5460
    :goto_0
    return-void

    .line 5455
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V

    .line 5456
    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5457
    :catch_0
    move-exception v0

    .line 5458
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2015
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 2016
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 2018
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2019
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2021
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 2023
    :cond_0
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 806
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 807
    if-nez p1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const v2, 0x7f030005

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 809
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    if-eqz v0, :cond_0

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 811
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    .line 814
    .end local v0           #emptyview:Lcom/sec/android/app/camera/EmptyView;
    :cond_0
    return-void
.end method

.method private startAFWaitTimer()V
    .locals 4

    .prologue
    .line 4996
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4997
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4998
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4999
    return-void
.end method

.method private startBurstShotTimer()V
    .locals 4

    .prologue
    .line 5007
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 5008
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x12c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 5009
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5010
    return-void
.end method

.method private stopAFWaitTimer()V
    .locals 2

    .prologue
    .line 5003
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 5004
    return-void
.end method

.method private stopBurstShotTimer()V
    .locals 2

    .prologue
    .line 5013
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 5014
    return-void
.end method

.method private declared-synchronized stopPostCaptureAnimation()V
    .locals 4

    .prologue
    .line 4907
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v1, :cond_0

    .line 4909
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4914
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4915
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4917
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4919
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4920
    .local v0, orientation:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4923
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4933
    .end local v0           #orientation:I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4907
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4929
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private stopVoiceRecognizer()V
    .locals 2

    .prologue
    .line 6014
    const-string v0, "Camera"

    const-string v1, "stop voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6015
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_0

    .line 6016
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    .line 6018
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 6019
    return-void
.end method

.method private switchToCamcorder()V
    .locals 1

    .prologue
    .line 2938
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder(Z)V

    .line 2939
    return-void
.end method

.method private switchToCamcorder(Z)V
    .locals 4
    .parameter "hasExtra"

    .prologue
    const/4 v3, 0x0

    .line 2942
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2943
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2944
    const-string v1, "from-camera"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2952
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2960
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2962
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$11;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2970
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 2971
    return-void
.end method


# virtual methods
.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1945
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1946
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1947
    return-void
.end method

.method public cancelCapturePanorama()V
    .locals 1

    .prologue
    .line 4642
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 4643
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 4638
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    .line 4639
    return-void
.end method

.method public cancelTouchAutoFocus()V
    .locals 0

    .prologue
    .line 1917
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 2895
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2896
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2617
    if-eqz p1, :cond_0

    .line 2618
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2619
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2904
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 2
    .parameter "sceneMode"

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2210
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2912
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2632
    if-eqz p1, :cond_0

    .line 2633
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 2634
    :cond_0
    return-void
.end method

.method public checkStorage(ZZ)V
    .locals 0
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 4707
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 4708
    return-void
.end method

.method public checkStorageLow()V
    .locals 6

    .prologue
    .line 4693
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    .line 4694
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 4695
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 4704
    :goto_0
    return-void

    .line 4698
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 4700
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    goto :goto_0

    .line 4702
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    goto :goto_0
.end method

.method public checkWifiConnection()Z
    .locals 1

    .prologue
    .line 2264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection(Z)Z

    move-result v0

    return v0
.end method

.method public checkWifiConnection(Z)Z
    .locals 3
    .parameter "showDialog"

    .prologue
    .line 2253
    const-string v1, "Camera"

    const-string v2, "checkWifiConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isWifiDirectConnected()Z

    move-result v0

    .line 2255
    .local v0, bool_direct:Z
    if-nez v0, :cond_1

    .line 2256
    if-eqz p1, :cond_0

    .line 2257
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 2258
    :cond_0
    const/4 v0, 0x0

    .line 2260
    .end local v0           #bool_direct:Z
    :cond_1
    return v0
.end method

.method public clearPanoramaRect()V
    .locals 3

    .prologue
    .line 3529
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v1, :cond_0

    .line 3530
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3531
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_1

    .line 3535
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_0
    :goto_0
    return-void

    .line 3533
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->clearPanoramaRect()V

    goto :goto_0
.end method

.method public convertCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 8
    .parameter "input"

    .prologue
    const/high16 v7, 0x44fa

    .line 3190
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    .line 3192
    .local v2, screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 3201
    .local v1, previewWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 3203
    .local v0, previewHeight:I
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 3204
    .local v3, x:I
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 3206
    .local v4, y:I
    add-int/lit16 v3, v3, 0x3e8

    .line 3207
    add-int/lit16 v4, v4, 0x3e8

    .line 3209
    mul-int v5, v1, v3

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v3, v5

    .line 3210
    mul-int v5, v0, v4

    int-to-float v5, v5

    div-float/2addr v5, v7

    float-to-int v4, v5

    .line 3212
    sub-int v5, v2, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 3223
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 3194
    .end local v0           #previewHeight:I
    .end local v1           #previewWidth:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 3196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060070

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .restart local v1       #previewWidth:I
    goto :goto_0

    .line 3198
    .end local v1           #previewWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .restart local v1       #previewWidth:I
    goto :goto_0
.end method

.method public createBurstMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3b

    .line 6142
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 6143
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 6144
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v0           #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 6145
    .restart local v0       #burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6147
    :cond_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 6148
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 6149
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 6150
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 6151
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 6152
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 6153
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 6154
    return-void
.end method

.method public decreaseRemainCount()V
    .locals 2

    .prologue
    .line 4646
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v1, :cond_0

    .line 4661
    :goto_0
    return-void

    .line 4650
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->getRemainCount()I

    move-result v0

    .line 4652
    .local v0, nRemainCount:I
    if-lez v0, :cond_1

    .line 4653
    add-int/lit8 v0, v0, -0x1

    .line 4655
    :cond_1
    if-gtz v0, :cond_2

    .line 4656
    const/4 v0, 0x0

    .line 4657
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 4658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 4660
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    goto :goto_0
.end method

.method public displayEULADialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2836
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2837
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2839
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2840
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2841
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 2843
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    .line 2845
    const v5, 0x7f0900d4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2847
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2848
    const v5, 0x1010355

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2849
    const v5, 0x1040014

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2850
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2851
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2853
    new-instance v5, Lcom/sec/android/app/camera/Camera$8;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$8;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2860
    const v5, 0x7f09009f

    new-instance v6, Lcom/sec/android/app/camera/Camera$9;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/camera/Camera$9;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2870
    const v5, 0x7f0900d7

    new-instance v6, Lcom/sec/android/app/camera/Camera$10;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$10;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2877
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    .line 2878
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mEULAPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2879
    return-void
.end method

.method public finishTimerCount()V
    .locals 3

    .prologue
    .line 5042
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 5043
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_1

    .line 5048
    :cond_0
    :goto_0
    return-void

    .line 5046
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5047
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public getActionShotProgressValue()I
    .locals 4

    .prologue
    const/16 v3, 0x2b

    .line 4170
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4171
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4172
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v0           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4173
    .restart local v0       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4175
    :cond_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActionShotProgressValue - progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4176
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->getProgressValue()I

    move-result v1

    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6161
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBurstShotProgress()I
    .locals 3

    .prologue
    .line 5782
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5783
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 5784
    :cond_0
    const/4 v1, 0x0

    .line 5787
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    goto :goto_0
.end method

.method public getCameraEngine()Lcom/sec/android/app/camera/CameraEngine;
    .locals 1

    .prologue
    .line 5098
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4088
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getChkSideMenuItemsShow()Z
    .locals 1

    .prologue
    .line 4991
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v0

    return v0
.end method

.method public getEULAenable()Z
    .locals 1

    .prologue
    .line 2832
    sget-boolean v0, Lcom/sec/android/app/camera/Camera;->isEULAenabled:Z

    return v0
.end method

.method public getExternalCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 5340
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 5346
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGpsLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 6157
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 2066
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    return v0
.end method

.method public getRemainStorage()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 4673
    const/4 v0, 0x0

    .line 4674
    .local v0, nRemainCount:I
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eq v1, v4, :cond_0

    .line 4675
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 4676
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 4677
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getRemainCount(III)I

    move-result v0

    .line 4681
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4682
    iput v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 4686
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 4687
    const/4 v0, 0x0

    .line 4689
    :cond_1
    return v0
.end method

.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 5352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 2081
    const/4 v0, 0x0

    return v0
.end method

.method public getWeather()I
    .locals 1

    .prologue
    .line 6165
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Weather;->getContextualWeather()I

    move-result v0

    return v0
.end method

.method public handleShootingModeChanged(I)V
    .locals 11
    .parameter "shootingMode"

    .prologue
    .line 2306
    const-string v8, "Camera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleShootingModeChanged: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    const/16 v8, 0xf

    if-ne p1, v8, :cond_7

    .line 2309
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 2310
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 2312
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshForSNS()V

    .line 2313
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 2325
    :cond_1
    :goto_0
    const/16 v8, 0x12

    if-ne p1, v8, :cond_9

    .line 2326
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v8, :cond_2

    .line 2327
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showHelpText()V

    .line 2333
    :cond_2
    :goto_1
    const/16 v8, 0x11

    if-eq p1, v8, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    :cond_3
    const/16 v8, 0x18

    if-ne p1, v8, :cond_5

    .line 2336
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 2337
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showBurstShotsGuideDialog()V

    .line 2342
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2345
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 2346
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2348
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2349
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2352
    packed-switch p1, :pswitch_data_0

    .line 2515
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 2518
    const/16 v8, 0xf

    if-ne p1, v8, :cond_16

    .line 2519
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2523
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2526
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v8

    if-eqz v8, :cond_17

    .line 2527
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 2528
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 2529
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2535
    :goto_4
    return-void

    .line 2316
    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 2317
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 2318
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V

    .line 2320
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v8, :cond_1

    .line 2321
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->backFromSNS(Z)V

    goto/16 :goto_0

    .line 2329
    :cond_9
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v8, :cond_2

    .line 2330
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    goto/16 :goto_1

    .line 2354
    :pswitch_1
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 2355
    .local v5, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v5, :cond_a

    .line 2356
    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v5           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    const/16 v8, 0x2a

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v5, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2357
    .restart local v5       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2359
    :cond_a
    invoke-virtual {v5, p0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu$OnPanoramaCaptureCancelListener;)V

    .line 2360
    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showMenu()V

    .line 2361
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2363
    const-string v8, "640x480"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    .line 2364
    .local v6, resolutionId:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 2366
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 2370
    .end local v5           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    .end local v6           #resolutionId:I
    :pswitch_2
    const-string v8, "Debug"

    const-string v9, "SMILE SHOT button clicked"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 2372
    .local v7, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    if-nez v7, :cond_b

    .line 2373
    const-string v8, "Debug"

    const-string v9, "SMILE VIEW create"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .end local v7           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    const/16 v8, 0x2c

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2375
    .restart local v7       #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2377
    :cond_b
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showMenu()V

    .line 2378
    invoke-virtual {v7}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->showHelpText()V

    .line 2379
    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2383
    .end local v7           #smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    :pswitch_3
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 2384
    .local v1, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v1, :cond_c

    .line 2385
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .end local v1           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    const/16 v8, 0x2b

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v1, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2386
    .restart local v1       #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    :cond_c
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$ActionShotCaptureCancelListener;)V

    .line 2389
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 2390
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showMenu()V

    .line 2391
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2393
    const-string v8, "640x480"

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v6

    .line 2394
    .restart local v6       #resolutionId:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 2396
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 2400
    .end local v1           #actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    .end local v6           #resolutionId:I
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getHDR()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 2401
    const-string v8, "Camera"

    const-string v9, "handleShootingModeChanged - Single & HDR On - shot HDR menu"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2403
    .local v4, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v4, :cond_d

    .line 2404
    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v4           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v8, 0x2e

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v4, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2405
    .restart local v4       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    :cond_d
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2408
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2413
    .end local v4           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 2414
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->createBurstMenu()V

    goto/16 :goto_2

    .line 2416
    :cond_f
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2420
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getHDR()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_11

    .line 2421
    const-string v8, "Camera"

    const-string v9, "handleShootingModeChanged - Single & HDR On - shot HDR menu"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2423
    .restart local v4       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v4, :cond_10

    .line 2424
    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v4           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v8, 0x2e

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v4, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2425
    .restart local v4       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2427
    :cond_10
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2428
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2434
    .end local v4           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_11
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2439
    :pswitch_6
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2453
    :pswitch_7
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2456
    :pswitch_8
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 2457
    .local v3, cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v3, :cond_12

    .line 2458
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v3           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    const/16 v8, 0x2d

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v3, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2459
    .restart local v3       #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    :cond_12
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showMenu()V

    .line 2462
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2466
    .end local v3           #cartoonShot:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :pswitch_9
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2467
    .restart local v4       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v4, :cond_13

    .line 2468
    new-instance v4, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v4           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    const/16 v8, 0x2e

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v4, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2469
    .restart local v4       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2471
    :cond_13
    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2472
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2480
    .end local v4           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :pswitch_a
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x3b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 2481
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_14

    .line 2482
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v8, 0x3b

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2483
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x3b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2485
    :cond_14
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 2486
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 2487
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 2488
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2489
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 2493
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_b
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x3b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 2494
    .local v2, bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v2, :cond_15

    .line 2495
    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .end local v2           #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    const/16 v8, 0x3b

    iget-object v9, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v10, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v2, p0, v8, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2496
    .restart local v2       #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v8, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v8, v8, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v9, 0x3b

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    :cond_15
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPicMode(Z)V

    .line 2499
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 2500
    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setOnBurstCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu$OnBurstCaptureCancelListener;)V

    .line 2501
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showMenu()V

    .line 2502
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2503
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_2

    .line 2508
    .end local v2           #bestView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :pswitch_c
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_2

    .line 2521
    :cond_16
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_3

    .line 2533
    :cond_17
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_4

    .line 2352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;Z)V
    .locals 2
    .parameter "event"
    .parameter "SendEvent"

    .prologue
    .line 2120
    const-string v0, "Camera"

    const-string v1, "handleTouchAutoFocusEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2179
    :cond_0
    return-void
.end method

.method public hideFaceRect()V
    .locals 1

    .prologue
    .line 5763
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 5764
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    .line 5765
    :cond_0
    return-void
.end method

.method public hideSideMenu()V
    .locals 1

    .prologue
    .line 4983
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenu()V

    .line 4984
    return-void
.end method

.method public hideSideMenuItems()V
    .locals 1

    .prologue
    .line 4968
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 4969
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideSideMenuItems()V

    .line 4970
    :cond_0
    return-void
.end method

.method public initCameraSound()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 3840
    const-string v0, "Camera"

    const-string v1, "Initialize Camera Sound"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x7

    invoke-direct {v0, v6, v1, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 3842
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050004

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 3843
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 3844
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 3845
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v6

    .line 3846
    return-void
.end method

.method public interruptProcessforBestPics()V
    .locals 3

    .prologue
    .line 6130
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6132
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 6133
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_3

    .line 6139
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_2
    :goto_0
    return-void

    .line 6136
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->interruptProcessforBestPics()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6137
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearLastContentUri()V

    goto :goto_0
.end method

.method public isActivityDestoying()Z
    .locals 1

    .prologue
    .line 5017
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 2

    .prologue
    .line 2108
    const/4 v0, 0x1

    .line 2109
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2116
    :goto_0
    return v0

    .line 2112
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2109
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public isAutoFocusing()Z
    .locals 1

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    return v0
.end method

.method public isBestPicMode()Z
    .locals 3

    .prologue
    .line 5768
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 5769
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 5770
    :cond_0
    const/4 v1, 0x1

    .line 5773
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v1

    goto :goto_0
.end method

.method public isBurstCapturing()Z
    .locals 3

    .prologue
    .line 3648
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3649
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    .line 3650
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBurstCapturing()Z

    move-result v1

    .line 3652
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 4711
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 4712
    const-string v0, "Camera"

    const-string v1, "isCapturing - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    const/4 v0, 0x0

    .line 4715
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isContinuousAFEnabled()Z
    .locals 2

    .prologue
    .line 5755
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 5757
    :cond_0
    const/4 v0, 0x0

    .line 5759
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMediaScannerScanning()Z
    .locals 1

    .prologue
    .line 6052
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isPreviewStarted()Z
    .locals 2

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 4720
    const-string v0, "Camera"

    const-string v1, "isPreviewStarted - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    const/4 v0, 0x0

    .line 4723
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public isShutterPressed()Z
    .locals 1

    .prologue
    .line 2182
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->isShutterPressed()Z

    move-result v0

    return v0
.end method

.method public isTimerCounting()Z
    .locals 1

    .prologue
    .line 5051
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    return v0
.end method

.method public isVoiceInputSettingOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5995
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_camera"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 5999
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isWifiDirectConnected()Z
    .locals 4

    .prologue
    .line 5729
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 5730
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5731
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5732
    const-string v2, "Camera"

    const-string v3, "wifi direct connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5733
    const/4 v2, 0x1

    .line 5735
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZoomAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3020
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3038
    :cond_0
    :goto_0
    return v0

    .line 3024
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 3028
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3034
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3038
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public join()V
    .locals 1

    .prologue
    .line 726
    new-instance v0, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method

.method public needToResizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    .line 2974
    const/4 v1, 0x0

    .line 2976
    .local v1, result:Z
    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 2978
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2979
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ffc71c71c71c71cL

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 2980
    const/4 v1, 0x0

    .line 2990
    :goto_0
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToResizeForPreviewAspectRatio : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    return v1

    .line 2982
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 2984
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ff5555555555555L

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 2985
    const/4 v1, 0x0

    goto :goto_0

    .line 2987
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActionShotAcquisitionProgress(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 4092
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionShotAcquisitionProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4094
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->chkActionShotStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4110
    :cond_0
    :goto_0
    return-void

    .line 4098
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4099
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_0

    .line 4103
    if-ltz p1, :cond_2

    const/16 v1, 0x64

    if-le p1, v1, :cond_3

    .line 4104
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 4105
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    goto :goto_0

    .line 4107
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setAcquisitionProgress(I)V

    .line 4108
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showCaptureLayout()V

    goto :goto_0
.end method

.method public onActionShotCaptureCancelled()V
    .locals 3

    .prologue
    .line 4113
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4114
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4122
    :goto_0
    return-void

    .line 4117
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 4118
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 4119
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCaptureCancelled()V

    .line 4121
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelSeriesActionShot()V

    goto :goto_0
.end method

.method public onActionShotCaptured()V
    .locals 3

    .prologue
    .line 4153
    const-string v0, "Camera"

    const-string v1, "onActionShotCaptured"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    return-void
.end method

.method public onActionShotCreatingResultCompleted(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4125
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4126
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4132
    :goto_0
    return-void

    .line 4129
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 4130
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 4131
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopActionShot()V

    goto :goto_0
.end method

.method public onActionShotCreatingResultProgress(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4135
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4136
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4140
    :goto_0
    return-void

    .line 4139
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setPostCaptureProgress(I)V

    goto :goto_0
.end method

.method public onActionShotCreatingResultStarted()V
    .locals 3

    .prologue
    .line 4143
    const-string v1, "Camera"

    const-string v2, "onActionShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4145
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-nez v0, :cond_0

    .line 4150
    :goto_0
    return-void

    .line 4148
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideCaptureLayout()V

    .line 4149
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotCreatingResultStarted()V

    goto :goto_0
.end method

.method public onActionShotRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 4158
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 4167
    :cond_0
    :goto_0
    return-void

    .line 4162
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;

    .line 4163
    .local v0, actionShot:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
    if-eqz v0, :cond_0

    .line 4166
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->actionShotRectChanged([B)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 4423
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--requestCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4424
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--onActivityResult--resultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 4428
    .local v18, myExtras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    .line 4429
    if-eqz v18, :cond_0

    .line 4430
    const-string v3, "output"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 4433
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4569
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 4435
    :pswitch_1
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    if-eqz p3, :cond_9

    .line 4436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    if-nez v3, :cond_2

    .line 4437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/CameraEngine;->CreateCaptureData(Landroid/content/Intent;)V

    .line 4439
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    const-string v3, "specify-data"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 4441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4443
    :try_start_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4444
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_8

    .line 4465
    :goto_1
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->setResult(I)V

    .line 4466
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 4477
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 4478
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 4449
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri-data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4450
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4451
    :cond_5
    const-string v3, "Camera"

    const-string v4, "Something goes wrong!! Restart attach mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4454
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4455
    const-string v3, "_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4457
    .local v16, filepath:Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4459
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "uri-data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_7

    .line 4463
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4467
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, "bitmap-data"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v3

    if-nez v3, :cond_8

    .line 4469
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 4470
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto/16 :goto_0

    .line 4473
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/Camera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 4474
    .local v9, bitmap:Landroid/graphics/Bitmap;
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 4479
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    :cond_9
    if-nez p2, :cond_1

    .line 4480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 4483
    :try_start_2
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 4486
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_6

    .line 4491
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 4493
    :try_start_3
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4494
    .local v17, mSave:Ljava/net/URI;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 4495
    .end local v17           #mSave:Ljava/net/URI;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 4502
    :pswitch_2
    const-string v3, "-------on result PHOTO_PICKED_WITH_DATA"

    const-string v4, "PHOTO_PICKED_WITH_DATA"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_b

    .line 4504
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 4507
    :cond_b
    if-eqz p3, :cond_f

    .line 4508
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v19

    check-cast v19, Landroid/graphics/Bitmap;

    .line 4509
    .local v19, photo:Landroid/graphics/Bitmap;
    const-string v3, "photo w,h"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------------photo w,h-------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    new-instance v11, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera"

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4512
    .local v11, dir:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    .line 4513
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 4515
    :cond_c
    new-instance v15, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4516
    .local v15, file:Ljava/io/File;
    const/4 v13, 0x0

    .line 4518
    .local v13, fOut:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .local v14, fOut:Ljava/io/FileOutputStream;
    move-object v13, v14

    .line 4523
    .end local v14           #fOut:Ljava/io/FileOutputStream;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    :goto_5
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4525
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4530
    if-eqz v13, :cond_d

    .line 4532
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 4538
    :cond_d
    :goto_6
    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 4539
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 4540
    const/16 v3, 0x37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 4519
    :catch_1
    move-exception v12

    .line 4521
    .local v12, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 4526
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v12

    .line 4528
    .local v12, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4530
    if-eqz v13, :cond_d

    .line 4532
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_6

    .line 4533
    :catch_3
    move-exception v3

    goto :goto_6

    .line 4530
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_e

    .line 4532
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 4535
    :cond_e
    :goto_7
    throw v3

    .line 4544
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :cond_f
    const/16 v3, 0x3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 4549
    :pswitch_3
    if-eqz p3, :cond_1

    .line 4550
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name_changed"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 4551
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v3, :cond_1

    .line 4552
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    .line 4553
    const-string v3, "wenfeng"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAME_WITH_DATA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4559
    :pswitch_4
    const-string v3, "TAG"

    const-string v4, "-BACK_FROM_ACCEPT_DIALOG-"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    const/16 v3, 0x7d6

    move/from16 v0, p2

    if-ne v0, v3, :cond_1

    .line 4561
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 4562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-nez v3, :cond_10

    .line 4563
    const/16 v3, 0x36

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x4

    move-object/from16 v0, p0

    invoke-static {v3, v0, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 4564
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/Camera;->devcommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto/16 :goto_0

    .line 4533
    .restart local v11       #dir:Ljava/io/File;
    .restart local v13       #fOut:Ljava/io/FileOutputStream;
    .restart local v15       #file:Ljava/io/File;
    .restart local v19       #photo:Landroid/graphics/Bitmap;
    :catch_4
    move-exception v3

    goto/16 :goto_6

    :catch_5
    move-exception v4

    goto/16 :goto_7

    .line 4487
    .end local v11           #dir:Ljava/io/File;
    .end local v13           #fOut:Ljava/io/FileOutputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v19           #photo:Landroid/graphics/Bitmap;
    :catch_6
    move-exception v3

    goto/16 :goto_4

    .line 4460
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v16       #filepath:Ljava/lang/String;
    :catch_7
    move-exception v3

    goto/16 :goto_3

    .line 4445
    .end local v10           #c:Landroid/database/Cursor;
    .end local v16           #filepath:Ljava/lang/String;
    :catch_8
    move-exception v3

    goto/16 :goto_1

    .line 4433
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onAntishakeSelect(I)V
    .locals 2
    .parameter "antishake"

    .prologue
    .line 2648
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 2649
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2650
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2651
    return-void
.end method

.method public onAutocontrastSelect(I)V
    .locals 2
    .parameter "autocontrast"

    .prologue
    .line 2654
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    .line 2655
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2656
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2657
    return-void
.end method

.method public onBurstCaptureCancelled()V
    .locals 1

    .prologue
    .line 3542
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 3544
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 3545
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    .line 3546
    :cond_0
    return-void
.end method

.method public onBurstModeChanged(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3656
    if-eqz p1, :cond_0

    .line 3657
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 3661
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 3662
    return-void

    .line 3659
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto :goto_0
.end method

.method public onBurstModeSelectCommand(I)V
    .locals 5
    .parameter "burstmode"

    .prologue
    const/16 v4, 0x2f

    const/4 v3, 0x1

    .line 3698
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBurstModeSelectCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    .line 3701
    if-nez p1, :cond_2

    .line 3702
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3710
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3712
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 3714
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3715
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 3717
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 3718
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 3720
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v4, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 3723
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 3725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 3726
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3732
    :goto_1
    return-void

    .line 3704
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3705
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showBurstShotsGuideDialog()V

    goto :goto_0

    .line 3730
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1
.end method

.method public onBurstShotCapturingProgressed(II)V
    .locals 4
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    .line 3550
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstnuousShotCapturingProgressed ,curCapturedNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " maxImageNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3552
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 3560
    :cond_0
    :goto_0
    return-void

    .line 3555
    :cond_1
    if-ge p1, p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    .line 3557
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 3559
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setCaptureProgressIncreased()V

    goto :goto_0
.end method

.method public onBurstShotCapturingStopped(I)V
    .locals 3
    .parameter "lastImageNum"

    .prologue
    .line 3563
    const-string v1, "Camera"

    const-string v2, "onBurstShotCapturingStopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3575
    :cond_0
    :goto_0
    return-void

    .line 3567
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3568
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3571
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 3572
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showPostCaptureLayout()V

    .line 3573
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setPostCaptureProgressMax(I)V

    .line 3574
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public onBurstShotCompleted()V
    .locals 3

    .prologue
    .line 3606
    const-string v1, "Camera"

    const-string v2, "onBurstShotCompleted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    .line 3609
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3610
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 3629
    :goto_0
    return-void

    .line 3613
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hidePostCaptureLayout()V

    .line 3614
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->reset()V

    .line 3615
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 3616
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 3617
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->hideCaptureLayout()V

    .line 3621
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    .line 3623
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 3624
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3628
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    goto :goto_0

    .line 3619
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    goto :goto_1
.end method

.method public onBurstShotSavingCompleted(I)V
    .locals 4
    .parameter "BestpicNum"

    .prologue
    .line 3579
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBurstShotSavingCompleted Bestpic is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3580
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3581
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_1

    .line 3589
    :cond_0
    :goto_0
    return-void

    .line 3584
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBestPic(I)V

    .line 3585
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_0

    .line 3586
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    goto :goto_0
.end method

.method public onBurstShotStarted()V
    .locals 3

    .prologue
    .line 3632
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3633
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-nez v0, :cond_0

    .line 3645
    :goto_0
    return-void

    .line 3636
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 3637
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 3638
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 3639
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3640
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 3641
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 3642
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 3643
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setBurstCapturing(Z)V

    .line 3644
    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0
.end method

.method public onBurstShotStringProgressed([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3592
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3593
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    .line 3594
    const-string v1, "Camera"

    const-string v2, "onBurstShotStringProgressed - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    .line 3603
    :cond_0
    :goto_0
    return-void

    .line 3598
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->storeBurstStrings([B)V

    .line 3599
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->setBurstShotStoring()V

    .line 3600
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3601
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    goto :goto_0
.end method

.method public onCameraQualityMenuSelect(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 2660
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 2661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 2662
    return-void
.end method

.method public onCartoonShotProgressRendering(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x2d

    .line 4572
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCartoonShotProgressRendering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 4576
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    if-nez v0, :cond_0

    .line 4577
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 4578
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4580
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showPostCaptureLayout()V

    .line 4581
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->setRederingProgress(I)V

    .line 4582
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 4583
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 4584
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 4586
    :cond_1
    const/16 v1, 0x64

    if-ne p1, v1, :cond_3

    .line 4587
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->showHelpText()V

    .line 4588
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4589
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    .line 4590
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 4591
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_3

    .line 4592
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4594
    :cond_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 707
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 708
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v0, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 712
    const-string v0, "Camera"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 715
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 716
    const-string v0, "Camera"

    const-string v1, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContextualFilenameSelect(I)V
    .locals 1
    .parameter "contextualFilename"

    .prologue
    .line 2685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    .line 2686
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setContextualFilename(I)V

    .line 2687
    return-void
.end method

.method public onContinuousShotCapturingProgressed(II)V
    .locals 2
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    .line 3735
    const-string v0, "Camera"

    const-string v1, "onContinuousShotCapturingProgressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    return-void
.end method

.method public onContinuousShotCapturingStopped(I)V
    .locals 2
    .parameter "lastImageNum"

    .prologue
    .line 3738
    const-string v0, "Camera"

    const-string v1, "onContinuousShotCapturingStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    return-void
.end method

.method public onContinuousShotSavingCompleted()V
    .locals 2

    .prologue
    .line 3741
    const-string v0, "Camera"

    const-string v1, "onContinuousShotSavingCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    return-void
.end method

.method public onContrastMenuSelect(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 2891
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 2892
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    .line 746
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 748
    const-string v5, "Camera"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-CameraPreviewLoading**StartU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total-CameraUILoading(TSP)**StartU["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 757
    .local v2, _axtime_st_1:J
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getSelectedMode()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 758
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 759
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    .line 760
    iput-boolean v9, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    .line 803
    :goto_0
    return-void

    .line 765
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 766
    .local v4, win:Landroid/view/Window;
    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 768
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->resetObservers()V

    .line 769
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 771
    const v5, 0x7f03000b

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 772
    const v5, 0x7f0b0002

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    .line 774
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 775
    new-instance v5, Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 779
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryWarningLevel:I

    .line 781
    new-instance v5, Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 782
    new-instance v5, Landroid/media/AudioManager;

    invoke-direct {v5, p0}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 786
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initializeGLSurfaceView()V

    .line 788
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 789
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->sobject:Ljava/lang/Object;

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initCameraSound()V

    .line 798
    new-instance v5, Lcom/sec/android/app/camera/Weather;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Weather;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mWeather:Lcom/sec/android/app/camera/Weather;

    .line 800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 801
    .local v0, _axtime_ed_1:J
    const-string v5, "AXLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate-End**End["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v0, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]**[]**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    move-wide v2, v0

    .line 803
    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f090112

    .line 5792
    const/4 v7, 0x6

    if-ne p1, v7, :cond_3

    .line 5793
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5794
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090105

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5795
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 5796
    .local v4, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f03000f

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 5797
    .local v6, userprofile:Landroid/view/View;
    const v7, 0x7f0b002f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 5798
    .local v5, iv:Landroid/widget/ImageView;
    const v7, 0x7f0b0017

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 5800
    .local v2, et:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    const-string v8, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    if-ne v7, v8, :cond_1

    .line 5801
    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5807
    :cond_0
    :goto_0
    new-instance v7, Lcom/sec/android/app/camera/Camera$26;

    invoke-direct {v7, p0, v2}, Lcom/sec/android/app/camera/Camera$26;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5820
    iget-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    if-eqz v7, :cond_2

    .line 5821
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5824
    :goto_1
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 5826
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 5827
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090111

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$27;

    invoke-direct {v8, p0, v2}, Lcom/sec/android/app/camera/Camera$27;-><init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5879
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$28;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$28;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5890
    new-instance v7, Lcom/sec/android/app/camera/Camera$29;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/Camera$29;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 5902
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5903
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 5948
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    .end local v2           #et:Landroid/widget/EditText;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v6           #userprofile:Landroid/view/View;
    :goto_2
    return-object v7

    .line 5803
    .restart local v0       #builder1:Landroid/app/AlertDialog$Builder;
    .restart local v2       #et:Landroid/widget/EditText;
    .restart local v4       #factory:Landroid/view/LayoutInflater;
    .restart local v5       #iv:Landroid/widget/ImageView;
    .restart local v6       #userprofile:Landroid/view/View;
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5804
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5805
    const-string v7, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 5823
    .end local v3           #f:Ljava/io/File;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5904
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    .end local v2           #et:Landroid/widget/EditText;
    .end local v4           #factory:Landroid/view/LayoutInflater;
    .end local v5           #iv:Landroid/widget/ImageView;
    .end local v6           #userprofile:Landroid/view/View;
    :cond_3
    const/4 v7, 0x7

    if-ne p1, v7, :cond_4

    .line 5905
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5906
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f09010a

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5907
    const/high16 v7, 0x7f07

    new-instance v8, Lcom/sec/android/app/camera/Camera$30;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$30;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5936
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/camera/Camera$31;

    invoke-direct {v8, p0}, Lcom/sec/android/app/camera/Camera$31;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5946
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_2

    .line 5948
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v7

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1311
    const-string v0, "Camera"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v0, :cond_0

    .line 1314
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1320
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 1322
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearGLSurfaceView()V

    .line 1326
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-eqz v0, :cond_2

    .line 1327
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceDepot;->onDestroy()V

    .line 1328
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 1331
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_3

    .line 1332
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 1333
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->closeCamera()V

    .line 1335
    :cond_3
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 1337
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    .line 1338
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_4

    .line 1339
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->clear()V

    .line 1340
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 1343
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_5

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->clear()V

    .line 1345
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    .line 1348
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_6

    .line 1349
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1350
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 1353
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1354
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1355
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 1358
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 1359
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1360
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 1363
    :cond_8
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 1364
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 1365
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 1366
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 1367
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1368
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1369
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_9

    .line 1370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1371
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1373
    :cond_9
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 1374
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mPostCaptureImage:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 1375
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 1377
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 1378
    return-void
.end method

.method public onEditModeSelectCommand()V
    .locals 3

    .prologue
    .line 2733
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2734
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2740
    :goto_1
    return-void

    .line 2737
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 2739
    :cond_1
    const/16 v0, 0x28

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEditableShortcutMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, p0, v1, v2}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_1
.end method

.method public onEffectMenuSelect(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 2608
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 2609
    if-eqz p1, :cond_0

    .line 2610
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2612
    :cond_0
    return-void
.end method

.method public onExposureValueMenuSelect(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 2186
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 2187
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 2188
    return-void
.end method

.method public onExposuremeterMenuSelect(I)V
    .locals 1
    .parameter "exposuremeter"

    .prologue
    .line 2643
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2644
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 2645
    return-void
.end method

.method public onFacePositionChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V
    .locals 1
    .parameter "faces"

    .prologue
    .line 3228
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 3229
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFaceRectChanged([Lcom/sec/android/seccamera/SecCamera$Face;)V

    .line 3230
    :cond_0
    return-void
.end method

.method public onFlashModeMenuSelect(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 2191
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 2196
    return-void
.end method

.method public onFlipMenuSelectCommand(I)V
    .locals 1
    .parameter "flip"

    .prologue
    .line 2743
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 2744
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2745
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setFrontSensorMirror(I)V

    .line 2746
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStartPreviewAsync()V

    .line 2747
    return-void
.end method

.method public onFocusModeMenuSelect(I)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 2538
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2539
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 2540
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 3268
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v0, :cond_1

    .line 3303
    :cond_0
    :goto_0
    return-void

    .line 3273
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_3

    .line 3274
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3275
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3276
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    .line 3283
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 3294
    if-nez p1, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3296
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 3298
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_6

    .line 3299
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3301
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    goto/16 :goto_0

    .line 3279
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    goto/16 :goto_1
.end method

.method public onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V
    .locals 2
    .parameter "rootView"

    .prologue
    .line 4733
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGLInitialized(Lcom/sec/android/glview/TwGLViewGroup;)V

    .line 4735
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 4736
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4737
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getSurfaceView()Lcom/sec/android/app/camera/PreviewFrameLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setGuideLineSize(Landroid/view/View;)V

    .line 4741
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 4742
    const-string v0, "Camera"

    const-string v1, "mSideMenuLoadingThread is not null, return.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    :goto_0
    return-void

    .line 4746
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$12;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    .line 4797
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    const-string v1, "sideMenuLoadingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 4798
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onGpsChanged(I)V
    .locals 1
    .parameter "gps"

    .prologue
    .line 2791
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getGPS()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2792
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2811
    :goto_0
    return-void

    .line 2796
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2797
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2798
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->IsGpsEnableInSettings()V

    .line 2810
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0

    .line 2800
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEULAenable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2801
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->displayEULADialog()V

    goto :goto_1

    .line 2803
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1

    .line 2807
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto :goto_1
.end method

.method public onGuidelineSelect(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 2666
    return-void
.end method

.method public onHDRShotAllProgressCompleted(Z)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 4211
    const-string v0, "Camera"

    const-string v1, "onHDRShotAllProgressCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doHDRShotAllProgressCompleted()V

    .line 4213
    return-void
.end method

.method public onHDRShotResultCompleted(Z)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4200
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 4201
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 4208
    :goto_0
    return-void

    .line 4205
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    .line 4206
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showHelpText()V

    .line 4207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setRederingProgress(I)V

    goto :goto_0
.end method

.method public onHDRShotResultProgress(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4192
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 4193
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 4197
    :goto_0
    return-void

    .line 4196
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    goto :goto_0
.end method

.method public onHDRShotResultStarted()V
    .locals 3

    .prologue
    .line 4180
    const-string v1, "Camera"

    const-string v2, "onHDRShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4182
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 4183
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_0

    .line 4189
    :goto_0
    return-void

    .line 4186
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgress(I)V

    .line 4187
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showPostCaptureLayout()V

    .line 4188
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->setPostCaptureProgressMax(I)V

    goto :goto_0
.end method

.method public onHdrMenuSelectCommand(I)V
    .locals 7
    .parameter "hdr"

    .prologue
    const/16 v6, 0x2d

    const/4 v5, 0x1

    const/16 v4, 0x2e

    .line 2750
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHdrMenuSelectCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setHDR(I)V

    .line 2754
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2756
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1, v6, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2758
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 2759
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2761
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 2762
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 2764
    if-ne p1, v5, :cond_2

    .line 2765
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 2766
    .local v0, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-nez v0, :cond_1

    .line 2767
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .end local v0           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 2768
    .restart local v0       #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2770
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->showMenu()V

    .line 2771
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2776
    .end local v0           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v6, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2779
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2780
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 2781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 2782
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2788
    :goto_1
    return-void

    .line 2773
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto :goto_0

    .line 2786
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1
.end method

.method public onISOMenuSelect(I)V
    .locals 2
    .parameter "iso"

    .prologue
    .line 2637
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 2638
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2639
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2640
    return-void
.end method

.method protected onImageStoringCompleted()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x1

    .line 3745
    const-string v4, "Camera"

    const-string v5, "onImageStoringCompleted"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    iget-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v4, :cond_1

    .line 3837
    :cond_0
    :goto_0
    return-void

    .line 3750
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->decreaseRemainCount()V

    .line 3752
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 3753
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3757
    .local v3, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v3, :cond_2

    .line 3758
    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 3760
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v4, :cond_3

    .line 3761
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    .line 3828
    .end local v3           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v4, :cond_10

    .line 3829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v4

    if-eq v4, v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    .line 3831
    :cond_4
    const-string v4, "reviewon"

    invoke-virtual {p0, v4, v9}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 3763
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6

    .line 3764
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;

    .line 3766
    .local v1, CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;->reset()V

    goto :goto_1

    .line 3767
    .end local v1           #CartoonShotView:Lcom/sec/android/app/camera/glwidget/TwGLCartoonMenu;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0xe

    if-eq v4, v5, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getHDR()I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 3769
    :cond_7
    const-string v4, "Camera"

    const-string v5, "onImageStoringCompleted - HDR, hidePostCaptureLayout."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x2e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;

    .line 3771
    .local v2, hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 3774
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;->hidePostCaptureLayout()V

    goto/16 :goto_1

    .line 3775
    .end local v2           #hdrShot:Lcom/sec/android/app/camera/glwidget/TwGLHDRMenu;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    if-ne v4, v6, :cond_9

    .line 3776
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 3777
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3778
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 3779
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    goto/16 :goto_1

    .line 3781
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x18

    if-ne v4, v5, :cond_d

    .line 3783
    :cond_a
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v4, v4, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v5, 0x3b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 3784
    .local v0, BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    if-ne v4, v6, :cond_b

    .line 3785
    const-string v4, "Camera"

    const-string v5, "SHOOTINGMODE_BURST_onImageStoringCompleted - CE_STATE_SHUTDOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3786
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onBurstShotCompleted()V

    goto/16 :goto_0

    .line 3789
    :cond_b
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CaptureData;->getCaptureSmallBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CaptureData;->getOrientation()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->setPostCaptureProgressImage(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    .line 3791
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->setBurstShotStoring()V

    .line 3792
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgress()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->getPostCaptureProgressMax()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 3794
    :try_start_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->isBestPicMode()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3795
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3800
    :cond_c
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showHighlight()V

    .line 3801
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->terminateBurstShot()V

    goto/16 :goto_1

    .line 3803
    .end local v0           #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v4

    const/16 v5, 0x17

    if-ne v4, v5, :cond_3

    .line 3804
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 3805
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3806
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 3807
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v4, v8}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    .line 3810
    :cond_e
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v4, :cond_f

    .line 3811
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3812
    :cond_f
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3813
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startContinuousAF()V

    goto/16 :goto_1

    .line 3834
    :cond_10
    iget-object v4, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v4, v9}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 3797
    .restart local v0       #BurstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x12

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1382
    const-string v3, "Camera"

    const-string v6, "onKeyDown()"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/4 v2, 0x1

    .line 1386
    .local v2, shutterKey:Z
    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    if-nez v3, :cond_0

    move v3, v4

    .line 1629
    :goto_0
    return v3

    .line 1398
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 1399
    goto :goto_0

    .line 1401
    :catch_0
    move-exception v3

    .line 1405
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    .line 1406
    goto :goto_0

    .line 1409
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 1410
    goto :goto_0

    .line 1414
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isUsbMassStorageEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    .line 1415
    goto :goto_0

    .line 1418
    :cond_4
    const-string v3, "Camera"

    const-string v6, "handling onKeyDown event from Activity class"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    sparse-switch p1, :sswitch_data_0

    .line 1629
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    :sswitch_0
    move v3, v5

    .line 1422
    goto :goto_0

    :sswitch_1
    move v3, v4

    .line 1425
    goto :goto_0

    :sswitch_2
    move v3, v5

    .line 1429
    goto :goto_0

    .line 1431
    :sswitch_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v4

    .line 1432
    goto :goto_0

    .line 1434
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    .line 1435
    goto :goto_0

    .line 1438
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1447
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1450
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1452
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_9

    .line 1454
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1457
    :cond_9
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto :goto_1

    .line 1464
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    move v3, v4

    .line 1465
    goto/16 :goto_0

    .line 1468
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v3

    const/4 v6, 0x7

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v4

    .line 1469
    goto/16 :goto_0

    .line 1471
    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1472
    const-string v3, "Camera"

    const-string v5, "shutter is pressed. Preview is not ready..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1473
    goto/16 :goto_0

    .line 1481
    :cond_c
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1482
    const-string v3, "Camera"

    const-string v5, "shutter is pressed. Camera is capturing..."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1483
    goto/16 :goto_0

    .line 1486
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1487
    const-string v3, "Camera"

    const-string v5, "returning because it is launch gallery"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1488
    goto/16 :goto_0

    .line 1490
    :cond_e
    iget v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v3, :cond_f

    .line 1491
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v3, v4

    .line 1492
    goto/16 :goto_0

    .line 1495
    :cond_f
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_10

    move v3, v4

    .line 1496
    goto/16 :goto_0

    .line 1505
    :cond_10
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 1511
    :goto_2
    if-nez v2, :cond_13

    if-nez p2, :cond_13

    .line 1520
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1523
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1525
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_12

    .line 1527
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1529
    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 1530
    goto/16 :goto_0

    .line 1506
    :catch_1
    move-exception v0

    .line 1507
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 1533
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_13
    if-eqz p2, :cond_19

    .line 1536
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_14

    .line 1537
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 1540
    :cond_14
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1542
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_15

    move v3, v4

    .line 1543
    goto/16 :goto_0

    .line 1561
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isAutoFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1565
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-nez v3, :cond_16

    .line 1567
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 1570
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_17

    .line 1572
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->startAFWaitTimer()V

    .line 1576
    :cond_17
    const/16 v3, 0x1b

    if-eq v3, p1, :cond_18

    .line 1577
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v3, v4

    .line 1578
    goto/16 :goto_0

    .line 1592
    :cond_18
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v3

    if-nez v3, :cond_19

    .line 1593
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    :cond_19
    move v3, v4

    .line 1596
    goto/16 :goto_0

    .line 1604
    :sswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v3, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    move v3, v4

    .line 1605
    goto/16 :goto_0

    .line 1610
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1611
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 1612
    .local v1, menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->getVisibility()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1613
    :cond_1c
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    const/4 v6, 0x2

    invoke-static {v7, p0, v3, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 1615
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 1616
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 1618
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v3, :cond_1e

    .line 1620
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1621
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .end local v1           #menu:Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    :cond_1e
    move v3, v4

    .line 1624
    goto/16 :goto_0

    .line 1420
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_4
        0x18 -> :sswitch_4
        0x19 -> :sswitch_5
        0x1a -> :sswitch_1
        0x1b -> :sswitch_4
        0x42 -> :sswitch_4
        0x45 -> :sswitch_5
        0x46 -> :sswitch_5
        0x50 -> :sswitch_3
        0x52 -> :sswitch_0
        0x55 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x9c -> :sswitch_5
        0x9d -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1634
    const-string v0, "Camera"

    const-string v2, "onKeyUp()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLInitialized:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1807
    :goto_0
    return v0

    .line 1648
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1649
    const-string v0, "Camera"

    const-string v2, "Delivering onKeyUp to other view"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1650
    goto :goto_0

    .line 1652
    :catch_0
    move-exception v0

    .line 1656
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isResetDialogActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1657
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1658
    const-string v0, "Camera"

    const-string v2, "BACK KEY PRESSED! : dissmissResetDialog"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->dismissResetDialog()V

    :cond_2
    move v0, v1

    .line 1661
    goto :goto_0

    .line 1664
    :cond_3
    const-string v0, "Camera"

    const-string v2, "handling onKeyUp event from Activity class"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    sparse-switch p1, :sswitch_data_0

    .line 1807
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1668
    :sswitch_0
    const-string v0, "Camera"

    const-string v2, "BACK KEY PRESSED!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    if-eqz v0, :cond_5

    .line 1671
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mPreMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 1672
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    move v0, v1

    .line 1673
    goto :goto_0

    .line 1676
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 1677
    goto :goto_0

    .line 1679
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingEngine()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1680
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1683
    const-string v0, "Camera"

    const-string v2, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1684
    goto/16 :goto_0

    .line 1688
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1689
    :cond_9
    const-string v0, "Camera"

    const-string v2, "if smiledetecting or timercounting, call the cancelautofocus"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1693
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v0, v1

    .line 1694
    goto/16 :goto_0

    .line 1700
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 1701
    goto/16 :goto_0

    .line 1703
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_c

    .line 1704
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->getChkSideMenuItemsShow()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_c

    .line 1705
    const/16 v0, 0x27

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-static {v0, p0, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    :cond_c
    move v0, v1

    .line 1707
    goto/16 :goto_0

    .line 1711
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 1713
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    .line 1714
    goto/16 :goto_0

    .line 1717
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 1720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isUsbMassStorageEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 1721
    goto/16 :goto_0

    .line 1724
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1725
    const-string v0, "Camera"

    const-string v2, "shutter is pressed. Preview is not ready..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1726
    goto/16 :goto_0

    .line 1734
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1735
    const-string v0, "Camera"

    const-string v2, "shutter is returned. Camera is Capturing..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1736
    goto/16 :goto_0

    .line 1739
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    .line 1740
    goto/16 :goto_0

    .line 1742
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v1, :cond_12

    .line 1744
    const-string v0, "Camera"

    const-string v2, "camera is autofocusing in smile shot"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1745
    goto/16 :goto_0

    .line 1747
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1748
    const-string v0, "Camera"

    const-string v2, "returning because it is launch gallery"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1749
    goto/16 :goto_0

    .line 1751
    :cond_13
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v0, :cond_14

    .line 1752
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v0, v1

    .line 1753
    goto/16 :goto_0

    .line 1760
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->countForCurrenPictureSaving()I

    move-result v0

    sget v2, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    if-lt v0, v2, :cond_15

    .line 1761
    const-string v0, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returning because it is over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/Camera;->MAX_SIMULTANEOUS_CAPTURE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " picture save wating. Thread count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->countForCurrenPictureSaving()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1763
    goto/16 :goto_0

    .line 1766
    :cond_15
    if-nez p2, :cond_16

    .line 1767
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1768
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1

    .line 1771
    :cond_16
    const/16 v0, 0x1b

    if-eq v0, p1, :cond_4

    .line 1772
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1773
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto/16 :goto_1

    :sswitch_3
    move v0, v1

    .line 1781
    goto/16 :goto_0

    .line 1783
    :sswitch_4
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_17

    move v0, v1

    .line 1784
    goto/16 :goto_0

    .line 1786
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1787
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1788
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2

    :cond_18
    move v0, v1

    .line 1790
    goto/16 :goto_0

    .line 1793
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSmileDetecting()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    move v0, v1

    .line 1795
    goto/16 :goto_0

    .line 1798
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1800
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1801
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1802
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    :cond_1c
    move v0, v1

    .line 1805
    goto/16 :goto_0

    .line 1666
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_2
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_2
        0x42 -> :sswitch_2
        0x50 -> :sswitch_4
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4216
    .local p2, rectlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLaunchGalleryFromCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    if-nez p1, :cond_0

    .line 4233
    :goto_0
    return-void

    .line 4221
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4222
    const-string v0, "Camera"

    const-string v1, "returning because it is launch gallery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4226
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 4227
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4228
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 4229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    goto :goto_0

    .line 4231
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    goto :goto_0
.end method

.method public onModechanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2916
    const-string v0, "Camera"

    const-string v1, "changeMode failed - engine not started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    :goto_0
    return-void

    .line 2920
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2922
    :cond_1
    const-string v0, "Camera"

    const-string v1, "changeMode failed - image capturing"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2926
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2933
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelectedMode(I)V

    .line 2934
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder(Z)V

    goto :goto_0
.end method

.method public onMultiFrameShotCapturingProgressed(II)V
    .locals 4
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    const/4 v3, 0x1

    .line 3665
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiFrameShotCapturingProgressed, curCaptureNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxImageNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    if-le p1, p2, :cond_1

    .line 3668
    const-string v0, "Camera"

    const-string v1, "exceed max image number."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    :cond_0
    :goto_0
    return-void

    .line 3672
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3673
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 3674
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    .line 3675
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    .line 3678
    :cond_2
    const-string v0, "Camera"

    const-string v1, "play shutter sound for multi-frame shot"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    if-ne p1, v3, :cond_0

    .line 3683
    sget v0, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_SHORT:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    goto :goto_0
.end method

.method public onMultiFrameShotStarted()V
    .locals 2

    .prologue
    .line 3688
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 3689
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideFocusIndicator()V

    .line 3690
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideSideMenuItems()V

    .line 3691
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3692
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 3693
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 3694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 3695
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 904
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 906
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 907
    return-void
.end method

.method public onObjectTrackingStatus(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 4603
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingStatus - msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4604
    packed-switch p1, :pswitch_data_0

    .line 4616
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingStatus - undefined msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4619
    :pswitch_0
    return-void

    .line 4604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOutdoorVisibilitySelect(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 2716
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 2717
    return-void
.end method

.method public onPanoramaCaptureCancelled()V
    .locals 1

    .prologue
    .line 3523
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3524
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 3525
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 3526
    :cond_0
    return-void
.end method

.method public onPanoramaCaptureStart()Z
    .locals 4

    .prologue
    const/16 v3, 0x2a

    .line 3510
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_0

    .line 3511
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptureStart - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    const/4 v1, 0x0

    .line 3519
    :goto_0
    return v1

    .line 3514
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3515
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-nez v0, :cond_1

    .line 3516
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShootingmodeRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3517
    .restart local v0       #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->isPanoramaCapturing()Z

    move-result v1

    goto :goto_0
.end method

.method public onPanoramaCaptured()V
    .locals 4

    .prologue
    .line 3470
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3472
    const-string v1, "Camera"

    const-string v2, "onPanoramaCaptured - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    :cond_0
    :goto_0
    return-void

    .line 3475
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isPanoramaCapturing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3479
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3480
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3482
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setCaptureProgressIncreased()V

    .line 3483
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onPanoramaCapturedMaxFrames()V
    .locals 2

    .prologue
    .line 3538
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedMaxFrames()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    return-void
.end method

.method public onPanoramaCapturedNew()V
    .locals 3

    .prologue
    .line 3364
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedNew"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 3369
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaDirectionChanged - direction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3371
    const-string v1, "Camera"

    const-string v2, "onPanoramaDirectionChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    :cond_0
    :goto_0
    return-void

    .line 3375
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3381
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3382
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 3383
    :cond_2
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaDirectionChanged - panoramaView.getCaptureProgressIncreased() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3387
    :cond_3
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->panoramaDirectionChanged(I)V

    goto :goto_0
.end method

.method public onPanoramaError(I)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    .line 3393
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - error"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_1

    .line 3395
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mCameraEngine is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    :cond_0
    :goto_0
    return-void

    .line 3399
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 3401
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_2

    .line 3402
    const-string v1, "Camera"

    const-string v2, "onPanoramaError - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3406
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3408
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3409
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3411
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 3412
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 3413
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 3415
    const v1, 0x7f09001a

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPanoramaLivePreviewData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3504
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3505
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3506
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->onLivePreviewData([B)V

    .line 3507
    :cond_0
    return-void
.end method

.method public onPanoramaLowResolutionData([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3491
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 3492
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onPanoramaLowResolutionData([B)V

    .line 3493
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3494
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3495
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getPanoramaLowResolutionBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setLowResolutionBitmap(Landroid/graphics/Bitmap;)V

    .line 3497
    .end local v0           #panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    :cond_0
    return-void
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 3439
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPanoramaProgressStitching - Stitch progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3441
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    :cond_0
    :goto_0
    return-void

    .line 3445
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3448
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3449
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    .line 3451
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 3452
    const-string v1, "Camera"

    const-string v2, "onPanoramaProgressStitching - CE_STATE_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->reset()V

    .line 3454
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_0

    .line 3455
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->resetPanoramaCapturing()V

    goto :goto_0

    .line 3458
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->stopCancelTimer()V

    .line 3459
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->setPostCaptureProgress(I)V

    .line 3461
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 3462
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->showCaptureLayout()V

    .line 3463
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3421
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    if-nez v1, :cond_1

    .line 3422
    const-string v1, "Camera"

    const-string v2, "onPanoramaRectChanged - mMenuResourceData is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    :cond_0
    :goto_0
    return-void

    .line 3426
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3430
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;

    .line 3431
    .local v0, panoramaView:Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3434
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLPanoramaMenu;->panoramaRectChanged(II)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 929
    const-string v1, "Camera"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->PauseGLSurface()V

    .line 932
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->notifyOnPause()V

    .line 934
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v1, :cond_0

    .line 935
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 1044
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 940
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 941
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 942
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 943
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mDirtyCount:I

    .line 945
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 948
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_1

    .line 949
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 953
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 956
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    .line 958
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_3

    .line 959
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->IsWaitingAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 960
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    .line 961
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setWaitingAnimation(Z)V

    .line 963
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 967
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_4

    .line 968
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideAllFaceRect()V

    .line 971
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    .line 972
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSideMenuLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 978
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_6

    .line 979
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 980
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 981
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 982
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 987
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->interruptProcessforBestPics()V

    .line 990
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 995
    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->onFocusStateChanged(I)V

    .line 996
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideAllDlg()V

    .line 997
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 999
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_8

    .line 1000
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    .line 1002
    .local v0, oldState:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1004
    if-eqz v0, :cond_7

    .line 1007
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1010
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1022
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->onPause()V

    .line 1025
    .end local v0           #oldState:I
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_9

    .line 1026
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->onPause()V

    .line 1028
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 1029
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBlinkShutterAnimation()V

    .line 1036
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1037
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1038
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 1043
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    goto/16 :goto_0

    .line 991
    :catch_0
    move-exception v1

    goto :goto_2

    .line 974
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public onPreviewFileReceived(I)V
    .locals 3
    .parameter "preview"

    .prologue
    const/4 v1, 0x1

    .line 2691
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 2700
    :goto_0
    return-void

    .line 2694
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoPreview(Z)V

    .line 2695
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2696
    :catch_0
    move-exception v0

    .line 2698
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2694
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResolutionMenuSelect(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2547
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2548
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 2549
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2550
    return-void
.end method

.method public onRespondSharewithNotify()V
    .locals 5

    .prologue
    .line 5543
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UserInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/UserInfo;

    .line 5544
    .local v0, userInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 5545
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/sec/android/app/camera/Camera$25;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/Camera$25;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/dmc/ux/db/UserInfo;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 5556
    return-void
.end method

.method protected onResume()V
    .locals 15

    .prologue
    .line 1047
    const-string v11, "Camera"

    const-string v12, "onResume"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    if-nez v11, :cond_0

    .line 1055
    new-instance v11, Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/Camera$UserWrapper;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v11, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    .line 1056
    :cond_0
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1061
    .local v4, _axtime_st_1:J
    iget-boolean v11, p0, Lcom/sec/android/app/camera/Camera;->mFinishOnCreate:Z

    if-eqz v11, :cond_1

    .line 1062
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1292
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    if-eqz v11, :cond_f

    .line 1070
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 1071
    const/16 v11, 0xf

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    .line 1085
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1086
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Security()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1087
    const v11, 0x7f0900e9

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1089
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1100
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v10

    .line 1101
    .local v10, win:Landroid/view/Window;
    const/16 v11, 0x80

    invoke-virtual {v10, v11}, Landroid/view/Window;->addFlags(I)V

    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/MenuDimController;->getLowBatteryStatus()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 1104
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryDisableFlashPopupDisplayed:Z

    .line 1105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/MenuDimController;->setLowBatteryStatus(Z)V

    .line 1106
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1109
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Camera_BatteryTemperatureCheck"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1110
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->checkBatteryStatus()V

    .line 1114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "torch_light"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    const/4 v8, 0x1

    .line 1115
    .local v8, externalTorchEnabled:Z
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/sec/android/app/camera/MenuDimController;->setIsFlashDimmed(Z)V

    .line 1117
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->onResume()V

    .line 1120
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 1121
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 1124
    const-string v11, "enterprise_policy"

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1125
    .local v7, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1126
    const-string v11, "Camera"

    const-string v12, "onResume CAMERA disable"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const v11, 0x7f0900e9

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1128
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1132
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 1134
    .local v9, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1135
    const-string v11, "Camera"

    const-string v12, "onResume CAMERA disable"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const v11, 0x7f0900e9

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1138
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleProcessBack()V

    .line 1141
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1142
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1144
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilter()V

    .line 1146
    const-string v1, "Rcs_Camera_Request"

    .line 1147
    .local v1, RCS_CAMERA_VALUE:Ljava/lang/String;
    const-string v0, "Rcs_Camera_Key"

    .line 1148
    .local v0, RCS_CAMERA_KEY:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 1150
    .local v6, b:Landroid/os/Bundle;
    if-eqz v6, :cond_11

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 1151
    const-string v11, "onresume"

    const-string v12, "RCS camera launch during CS call :"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 1186
    const-string v11, "Camera"

    const-string v12, "Camera is finished due to MEDIA_UNMOUNTED"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-nez v11, :cond_9

    .line 1188
    const-string v11, ""

    const/4 v12, 0x0

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    sput-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    .line 1190
    :cond_9
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    const v12, 0x7f0900e1

    invoke-virtual {v11, v12}, Landroid/widget/Toast;->setText(I)V

    .line 1191
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1192
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1211
    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 1212
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 1213
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 1215
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_15

    .line 1216
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1217
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v11, :cond_a

    .line 1218
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setWifiDirectStatus()V

    .line 1225
    :cond_a
    :goto_4
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mbNeedToStartEngineSync:Z

    .line 1227
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1228
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentReceive()V

    .line 1230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 1232
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 1233
    const-string v11, "from_app"

    iput-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1234
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1235
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 1242
    :goto_5
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v11, :cond_b

    .line 1243
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton()V

    .line 1246
    :cond_b
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1248
    iget-boolean v11, p0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->isProviderEnabled()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1249
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEULAenable()Z

    move-result v11

    if-nez v11, :cond_17

    .line 1250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->displayEULADialog()V

    .line 1254
    :goto_6
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/app/camera/Camera;->bFromSecureSetting:Z

    .line 1257
    :cond_c
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v11, :cond_e

    .line 1258
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getChkSideMenuItemsShow()Z

    move-result v11

    if-nez v11, :cond_d

    .line 1259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showSideMenuItems()V

    .line 1261
    :cond_d
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refresh()V

    .line 1262
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 1265
    :cond_e
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->updateStorage()V

    .line 1267
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initRemains()V

    .line 1269
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->refreshButtonDimForCamera()V

    .line 1287
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 1289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1290
    .local v2, _axtime_ed_1:J
    const-string v11, "AXLOG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onResume-End**End["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]**["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v2, v4

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]**[]**"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    move-wide v4, v2

    .line 1292
    goto/16 :goto_0

    .line 1072
    .end local v0           #RCS_CAMERA_KEY:Ljava/lang/String;
    .end local v1           #RCS_CAMERA_VALUE:Ljava/lang/String;
    .end local v2           #_axtime_ed_1:J
    .end local v6           #b:Landroid/os/Bundle;
    .end local v7           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8           #externalTorchEnabled:Z
    .end local v9           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #win:Landroid/view/Window;
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v11

    const/16 v12, 0xf

    if-ne v11, v12, :cond_2

    .line 1073
    const/4 v11, 0x1

    sput-boolean v11, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->mIsSnsMode:Z

    .line 1074
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1075
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    goto/16 :goto_1

    .line 1114
    .restart local v10       #win:Landroid/view/Window;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1153
    .restart local v0       #RCS_CAMERA_KEY:Ljava/lang/String;
    .restart local v1       #RCS_CAMERA_VALUE:Ljava/lang/String;
    .restart local v6       #b:Landroid/os/Bundle;
    .restart local v7       #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v8       #externalTorchEnabled:Z
    .restart local v9       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Call()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_VoIPCall()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1156
    :cond_12
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_0

    .line 1194
    :cond_13
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-eqz v11, :cond_14

    .line 1195
    sget-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v11}, Landroid/widget/Toast;->cancel()V

    .line 1197
    :cond_14
    const/4 v11, 0x0

    sput-object v11, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    goto/16 :goto_3

    .line 1221
    :cond_15
    iget-object v11, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    goto/16 :goto_4

    .line 1237
    :cond_16
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 1238
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 1239
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_5

    .line 1252
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/camera/CameraSettings;->setGPS(I)V

    goto/16 :goto_6
.end method

.method public onReviewMenuSelect(I)V
    .locals 1
    .parameter "review"

    .prologue
    .line 2669
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    .line 2670
    return-void
.end method

.method public onRunSNSAfterConnect(I)V
    .locals 3
    .parameter "auto"

    .prologue
    const/4 v1, 0x1

    .line 2703
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-nez v2, :cond_0

    .line 2713
    :goto_0
    return-void

    .line 2706
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-interface {v2, v1}, Lcom/samsung/shareshot/IShareShotService;->setAutoStart(Z)V

    .line 2707
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2712
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNetWork(I)V

    goto :goto_0

    .line 2706
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2708
    :catch_0
    move-exception v0

    .line 2710
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onSaturationMenuSelect(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 2899
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 2900
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 1965
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1983
    :goto_0
    return v6

    .line 1969
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 1971
    .local v0, newZoomValue:I
    if-gez v0, :cond_1

    .line 1972
    const/4 v0, 0x0

    .line 1974
    :cond_1
    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    if-le v0, v1, :cond_2

    .line 1975
    sget v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    .line 1977
    :cond_2
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1979
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1980
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 1981
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1982
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 1987
    const-string v2, "Camera"

    const-string v3, "onScaleBegin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1989
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    .line 1991
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 1993
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v2, :cond_0

    .line 1994
    new-instance v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 1995
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->getLastOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setLastOrientation(I)V

    .line 1996
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1997
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2000
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2001
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2002
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2005
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 2006
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2007
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2008
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2010
    iput-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 2011
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2026
    const-string v0, "Camera"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2028
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2029
    return-void
.end method

.method public onSceneModeMenuSelect(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 2199
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2202
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 2204
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 2205
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateIfResolutionChanged()V

    .line 2206
    return-void
.end method

.method public onSearchingLastContentUriCompleted()V
    .locals 1

    .prologue
    .line 4236
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    if-eqz v0, :cond_0

    .line 4237
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 4238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 4240
    :cond_0
    return-void
.end method

.method public onSelfModeChangeSelected()V
    .locals 2

    .prologue
    .line 2213
    const-string v0, "Camera"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->firstElement()Lcom/sec/android/app/camera/CeRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2216
    const-string v0, "Camera"

    const-string v1, "onSelfModeChangeSelected failed - queue is not empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    :goto_0
    return-void

    .line 2219
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 2220
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 2221
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->hideHelpText()V

    .line 2224
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2225
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 2227
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 2229
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera()V

    .line 2231
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 2232
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 2233
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    goto :goto_0
.end method

.method public onSharpnessMenuSelect(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 2907
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 2908
    return-void
.end method

.method public onShootAndShareMenuSelect(I)V
    .locals 2
    .parameter "sns"

    .prologue
    .line 2673
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootAndShare(I)V

    .line 2674
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2676
    const-string v0, "onShootAndShareMenuSelect"

    const-string v1, "-----------on"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_0
    return-void
.end method

.method public onShootingModeMenuSelect(I)V
    .locals 5
    .parameter "shootingMode"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x1

    .line 2272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIfBackToPreMode:Z

    .line 2274
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 2275
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFaceZoomGuideDialog()V

    .line 2278
    :cond_0
    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkWifiConnection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2279
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 2281
    :cond_1
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShootingModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    if-ne p1, v4, :cond_2

    .line 2284
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/Camera;->manageLocalService(Z)V

    .line 2291
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 2292
    const-string v0, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Switching][Begin] - Shooting mode change start::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 2302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 2303
    return-void
.end method

.method public onShutterSoundMenuSelect(I)V
    .locals 1
    .parameter "shuttersound"

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraShutterSound(I)V

    .line 2721
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setOnShutterSound(I)V

    .line 2722
    return-void
.end method

.method public onSmileDetectingStopped()V
    .locals 3

    .prologue
    .line 3319
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 3320
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3321
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->stopDetect()V

    .line 3322
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->cleanSmileRect()V

    .line 3323
    return-void
.end method

.method public onSmileShotDetectionSuccess()V
    .locals 2

    .prologue
    .line 3326
    const-string v0, "Camera"

    const-string v1, "onOnSmileShotDetectionSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->smileDetectionCompleted()V

    .line 3328
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 3329
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    .line 3330
    return-void
.end method

.method public onSmileShotFaceRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3335
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 3345
    :cond_0
    :goto_0
    return-void

    .line 3339
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3340
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3344
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotFaceRectChanged([B)V

    goto :goto_0
.end method

.method public onSmileShotSmileRectChanged([B)V
    .locals 3
    .parameter "data"

    .prologue
    .line 3350
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 3360
    :cond_0
    :goto_0
    return-void

    .line 3354
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;

    .line 3355
    .local v0, smileView:Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->isDetecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3359
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLSmileMenu;->smileShotSmileRectChanged([B)V

    goto :goto_0
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 3012
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilterBattery()V

    .line 3013
    return-void
.end method

.method public onStorageMenuSelect(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 2729
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 2730
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 5
    .parameter "value"

    .prologue
    const/16 v4, 0x3d

    .line 3306
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimerEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .line 3308
    .local v0, menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    if-nez v0, :cond_0

    .line 3309
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;

    .end local v0           #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mPopupMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-direct {v0, p0, v4, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V

    .line 3310
    .restart local v0       #menu:Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3312
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3313
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->showMenu()V

    .line 3314
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLTimerMenu;->updateTime(I)V

    .line 3315
    return-void
.end method

.method public onTimerMenuSelect(I)V
    .locals 1
    .parameter "timer"

    .prologue
    .line 2543
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    .line 2544
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1811
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopPostCaptureAnimation()V

    .line 1813
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1814
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1904
    :goto_0
    return v0

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_1

    .line 1820
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1824
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1825
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1826
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move v0, v1

    .line 1828
    goto :goto_0

    .line 1830
    :catch_0
    move-exception v0

    .line 1834
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1835
    goto :goto_0

    .line 1838
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    .line 1839
    goto :goto_0

    .line 1842
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1844
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1848
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v0, v1

    .line 1850
    goto :goto_0

    .line 1854
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 1856
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGestureDetecor:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1859
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1904
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 1861
    :pswitch_0
    const-string v0, "Camera"

    const-string v2, "MotionEvent.ACTION_UP"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    move v0, v1

    .line 1875
    goto/16 :goto_0

    .line 1877
    :pswitch_1
    const-string v0, "Camera"

    const-string v2, "MotionEvent.ACTION_DOWN"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1885
    goto/16 :goto_0

    :pswitch_2
    move v0, v1

    .line 1895
    goto/16 :goto_0

    .line 1897
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1898
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1899
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1900
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    move v0, v1

    .line 1901
    goto/16 :goto_0

    .line 1845
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserSelectionListChanged(Lcom/samsung/shareshot/User;Z)V
    .locals 3
    .parameter "user"
    .parameter "isChecked"

    .prologue
    .line 5439
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5441
    if-eqz p2, :cond_0

    .line 5442
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserSelected(Lcom/samsung/shareshot/User;)V

    .line 5446
    :goto_0
    return-void

    .line 5444
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->onUserCancelSelected(Lcom/samsung/shareshot/User;)V

    goto :goto_0
.end method

.method public onWhiteBalanceMenuSelect(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 2623
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 2624
    if-eqz p1, :cond_0

    .line 2625
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 2627
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1297
    if-eqz p1, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isVoiceInputSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 1300
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    .line 1307
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onWindowFocusChanged(Z)V

    .line 1308
    return-void

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showVoiceInputIndicator(I)V

    goto :goto_0
.end method

.method public onZoomValueMenuSelect(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 2884
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValueForced(I)V

    .line 2888
    :goto_0
    return-void

    .line 2886
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_0
.end method

.method public pauseAudioPlayback()V
    .locals 4

    .prologue
    .line 697
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 699
    return-void
.end method

.method public playCameraSound(II)V
    .locals 9
    .parameter "Sound"
    .parameter "loop"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    .line 3849
	return-void
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 3850
    const-string v0, "Camera"

    const-string v1, "playCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3872
    :cond_0
    :goto_0
    return-void

    .line 3854
    :cond_1
    const/16 v7, 0xf

    .line 3855
    .local v7, MAX_VOLUME:I
    const/high16 v0, 0x4170

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 3856
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 3857
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 3858
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=4;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 3864
    :cond_3
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Camera_ShutterSoundMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3865
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraShutterSound()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3866
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v8, p1

    goto :goto_0

    .line 3859
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 3860
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=3;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_1

    .line 3869
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v8, p1

    goto :goto_0
.end method

.method public prepareMatrixForFaceRect(Landroid/graphics/Matrix;)V
    .locals 11
    .parameter "matrix"

    .prologue
    const/high16 v10, 0x44fa

    const/high16 v9, 0x4000

    const/high16 v6, 0x3f80

    const/4 v5, 0x1

    .line 3150
    invoke-static {}, Lcom/sec/android/app/camera/CameraHolder;->instance()Lcom/sec/android/app/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraHolder;->getCameraInfo()[Lcom/sec/android/seccamera/SecCamera$CameraInfo;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraId()I

    move-result v8

    aget-object v0, v7, v8

    .line 3151
    .local v0, info:Lcom/sec/android/seccamera/SecCamera$CameraInfo;
    iget v7, v0, Lcom/sec/android/seccamera/SecCamera$CameraInfo;->facing:I

    if-ne v7, v5, :cond_1

    move v1, v5

    .line 3156
    .local v1, mirror:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 3158
    .local v4, screenWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .line 3167
    .local v3, previewWidth:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 3170
    .local v2, previewHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getSelfFlip()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 3171
    const/4 v1, 0x0

    .line 3173
    :cond_0
    if-eqz v1, :cond_4

    const/high16 v5, -0x4080

    :goto_2
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3175
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getDisplayOrientation()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3178
    int-to-float v5, v3

    div-float/2addr v5, v10

    int-to-float v6, v2

    div-float/2addr v6, v10

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3179
    int-to-float v5, v3

    div-float/2addr v5, v9

    int-to-float v6, v2

    div-float/2addr v6, v9

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3182
    sub-int v5, v4, v3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 3183
    return-void

    .line 3151
    .end local v1           #mirror:Z
    .end local v2           #previewHeight:I
    .end local v3           #previewWidth:I
    .end local v4           #screenWidth:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3160
    .restart local v1       #mirror:Z
    .restart local v4       #screenWidth:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 3162
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060070

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .restart local v3       #previewWidth:I
    goto :goto_1

    .line 3164
    .end local v3           #previewWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    .restart local v3       #previewWidth:I
    goto/16 :goto_1

    .restart local v2       #previewHeight:I
    :cond_4
    move v5, v6

    .line 3173
    goto :goto_2
.end method

.method protected produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 5968
    new-instance v2, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    invoke-direct {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;-><init>()V

    .line 5969
    .local v2, personalInfo:Lcom/samsung/dmc/ux/db/PersonalSettingInfo;
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setSettingID(I)V

    .line 5971
    invoke-virtual {v2, p1}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setUserName(Ljava/lang/String;)V

    .line 5973
    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5974
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic_tmp.b"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5975
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5976
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    .line 5981
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5991
    :goto_1
    return-object v2

    .line 5978
    :cond_1
    invoke-virtual {v2, v4}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconType(I)V

    goto :goto_0

    .line 5983
    :pswitch_0
    const v3, 0x7f02020e

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconResID(I)V

    goto :goto_1

    .line 5986
    :pswitch_1
    const-string v3, "/sdcard/Android/data/com.sec.android.app.camera/user_pic.b"

    invoke-virtual {v2, v3}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->setIconPath(Ljava/lang/String;)V

    goto :goto_1

    .line 5981
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized refreshDeviceList()V
    .locals 6

    .prologue
    .line 5102
    monitor-enter p0

    :try_start_0
    const-string v2, "Camera"

    const-string v3, "refreshDeviceList"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    if-eqz v2, :cond_1

    .line 5104
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_WIDTH:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->MENU_HEIGHT:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 5105
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLList;->invalidate()V

    .line 5106
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mDeviceListMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mDeviceList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->TITLE_HEIGHT:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLTitleDecorator;->setSize(FF)V

    .line 5107
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x36

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    .line 5108
    .local v0, menu:Lcom/sec/android/app/camera/MenuBase;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 5109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 5112
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5113
    .local v1, text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5117
    .end local v0           #menu:Lcom/sec/android/app/camera/MenuBase;
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 5102
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public resetPosIndicator()V
    .locals 2

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-nez v0, :cond_1

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1958
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetPosIndicator()V

    .line 1959
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->resetFaceRect()V

    goto :goto_0
.end method

.method public resetScaleDetector()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2042
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    .line 2043
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 2044
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 2047
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 2048
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 2049
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2050
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 2055
    return-void
.end method

.method public resetToDefaultSettings()V
    .locals 1

    .prologue
    .line 3891
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 3892
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopEngine()V

    .line 3894
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleResetSettings()V

    .line 3896
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 3897
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 3898
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 3900
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3902
    return-void
.end method

.method public resetTouchFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4622
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4623
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 4626
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_1

    .line 4627
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4629
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 4630
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 4632
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 4633
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 4634
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsTouchFocusStarted:Z

    .line 4635
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 8

    .prologue
    .line 2995
    const-string v4, "Camera"

    const-string v5, "resizeForPreviewAspectRatio"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    const/4 v2, 0x0

    .line 3001
    .local v2, result:Z
    const v4, 0x7f0b0004

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 3002
    .local v1, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3003
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    .line 3004
    .local v3, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v0

    .line 3005
    .local v0, height:I
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeForPreviewAspectRatio - width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    int-to-double v4, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v2

    .line 3007
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 3008
    return v2
.end method

.method public restartTouchAF()V
    .locals 0

    .prologue
    .line 1920
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->cancelTouchAutoFocus()V

    .line 1921
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartTouchAutoFocus()V

    .line 1922
    return-void
.end method

.method public restartTouchAutoFocus()V
    .locals 0

    .prologue
    .line 1941
    return-void
.end method

.method public resumeAudioPlayback()V
    .locals 2

    .prologue
    .line 702
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 704
    return-void
.end method

.method public runComfirmedDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 5356
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Notice"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has accepted your request!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$21;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$21;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5363
    return-void
.end method

.method public runDialog(Lcom/samsung/shareshot/User;)V
    .locals 3
    .parameter "user"

    .prologue
    .line 5366
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Share with request"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wants to share image with you. Continue?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/app/camera/Camera$23;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$23;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/sec/android/app/camera/Camera$22;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/camera/Camera$22;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5397
    return-void
.end method

.method public saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 4404
    const/4 v1, 0x0

    .line 4406
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4407
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 4411
    if-eqz v2, :cond_0

    .line 4413
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4419
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 4408
    :catch_0
    move-exception v0

    .line 4409
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 4411
    if-eqz v1, :cond_1

    .line 4413
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 4414
    :catch_1
    move-exception v4

    goto :goto_1

    .line 4411
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 4413
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 4416
    :cond_2
    :goto_4
    throw v3

    .line 4414
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_4

    .line 4411
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 4408
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public searchUser(Lcom/samsung/dmc/ux/db/UserInfo;)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter "gsUserInfo"

    .prologue
    .line 5400
    const/4 v3, 0x0

    .line 5401
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 5403
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v5}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v4

    .line 5404
    .local v4, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5405
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 5406
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 5407
    if-eqz v2, :cond_0

    .line 5408
    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {p1}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    .line 5417
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v4           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v5

    .line 5414
    :catch_0
    move-exception v5

    .line 5417
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter "userIP"

    .prologue
    .line 5489
    const/4 v4, 0x0

    .line 5490
    .local v4, user:Lcom/samsung/shareshot/User;
    const/4 v3, 0x0

    .line 5493
    .local v3, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-interface {v6}, Lcom/samsung/shareshot/IShareShotService;->getUserList()Ljava/util/List;

    move-result-object v5

    .line 5494
    .local v5, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5495
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v4, v0

    .line 5497
    invoke-virtual {v4}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v3

    .line 5498
    if-eqz v3, :cond_0

    .line 5499
    invoke-virtual {v3}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5501
    monitor-exit v5

    move-object v6, v4

    .line 5511
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_0
    return-object v6

    .line 5505
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :cond_1
    monitor-exit v5

    .line 5511
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 5505
    .restart local v5       #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5506
    .end local v5           #userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    :catch_0
    move-exception v1

    .line 5508
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public searchUser(Ljava/util/List;II)Lcom/samsung/shareshot/User;
    .locals 7
    .parameter
    .parameter "userID"
    .parameter "selected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/shareshot/User;",
            ">;II)",
            "Lcom/samsung/shareshot/User;"
        }
    .end annotation

    .prologue
    .line 5421
    .local p1, userList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/shareshot/User;>;"
    const/4 v3, 0x0

    .line 5422
    .local v3, user:Lcom/samsung/shareshot/User;
    const/4 v2, 0x0

    .line 5423
    .local v2, searchInfo:Lcom/samsung/dmc/ux/db/UserInfo;
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " this user list have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " userID is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    monitor-enter p1

    .line 5425
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5426
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/shareshot/User;

    move-object v3, v0

    .line 5427
    invoke-virtual {v3}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v2

    .line 5428
    if-eqz v2, :cond_0

    .line 5429
    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getUserID()I

    move-result v4

    if-ne p2, v4, :cond_0

    invoke-virtual {v2}, Lcom/samsung/dmc/ux/db/UserInfo;->getGroupID()I

    move-result v4

    if-ne p3, v4, :cond_0

    .line 5430
    monitor-exit p1

    move-object v4, v3

    .line 5434
    :goto_0
    return-object v4

    .line 5433
    :cond_1
    monitor-exit p1

    .line 5434
    const/4 v4, 0x0

    goto :goto_0

    .line 5433
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/shareshot/User;>;"
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 4727
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 4728
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setConnectingStateGPS(I)V

    .line 4729
    :cond_0
    return-void
.end method

.method public setDefaultLayout()V
    .locals 0

    .prologue
    .line 3887
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateUIWhenDefaultLayout()V

    .line 3888
    return-void
.end method

.method public setEULAenable(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 2828
    sput-boolean p1, Lcom/sec/android/app/camera/Camera;->isEULAenabled:Z

    .line 2829
    return-void
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 5740
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 5741
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setGuideLineSize(Landroid/view/View;)V

    .line 5742
    :cond_0
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 2062
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 2063
    return-void
.end method

.method public setLastCapturedTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 4384
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastCapturedTitle(Ljava/lang/String;)V

    .line 4385
    return-void
.end method

.method public setLastContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 4380
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 4381
    return-void
.end method

.method public setOnUserSelected(Lcom/sec/android/app/camera/Camera$OnUserSelected;I)V
    .locals 2
    .parameter "l"
    .parameter "position"

    .prologue
    .line 5481
    const-string v0, "Camera"

    const-string v1, "set on user selceted listen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5482
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5483
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5484
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mOnUserSelected:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5485
    return-void
.end method

.method public setSelectedMenuId(I)V
    .locals 1
    .parameter "commandId"

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setSelectedMenuId(I)V

    .line 2059
    return-void
.end method

.method public setShutterSoundToDefault()V
    .locals 2

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setOnShutterSound(I)V

    .line 2726
    return-void
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 1
    .parameter "active"

    .prologue
    .line 2073
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 2075
    return-void
.end method

.method public showBurstShotsGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 6093
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6127
    :cond_0
    :goto_0
    return-void

    .line 6096
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showBurstShotsGuideDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getBurstShotsGuideTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6097
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getBurstShotsGuideTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 6098
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6099
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 6101
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 6102
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6103
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 6105
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090138

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 6107
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6108
    const v5, 0x7f09002e

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6109
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6110
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6112
    new-instance v5, Lcom/sec/android/app/camera/Camera$34;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$34;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6119
    const v5, 0x7f09009f

    new-instance v6, Lcom/sec/android/app/camera/Camera$35;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$35;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6124
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    .line 6125
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mSavingBurstshotInPhoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showEditBackground(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 5036
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 5037
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showEditBackground(Z)V

    .line 5039
    :cond_0
    return-void
.end method

.method public showFaceZoomGuideDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 6056
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6090
    :cond_0
    :goto_0
    return-void

    .line 6059
    :cond_1
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create showFaceZoomGuideDialog - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getFaceZoomHelpTextDialog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6060
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getFaceZoomHelpTextDialog()I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 6061
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6062
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 6064
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 6065
    .local v3, layout:Landroid/view/View;
    const v5, 0x7f0b0015

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6066
    .local v4, message:Landroid/widget/TextView;
    const v5, 0x7f0b0016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 6068
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v5, 0x7f090137

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 6070
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6071
    const v5, 0x7f090073

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 6072
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6073
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 6075
    new-instance v5, Lcom/sec/android/app/camera/Camera$32;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/Camera$32;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6082
    const v5, 0x7f09009f

    new-instance v6, Lcom/sec/android/app/camera/Camera$33;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/Camera$33;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6087
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    .line 6088
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mFaceZoomHelpTextDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showFocusIndicator()V
    .locals 1

    .prologue
    .line 4978
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 4979
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4980
    :cond_0
    return-void
.end method

.method public showSideMenu()V
    .locals 1

    .prologue
    .line 4987
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenu()V

    .line 4988
    return-void
.end method

.method public showSideMenuItems()V
    .locals 1

    .prologue
    .line 4973
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 4974
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showSideMenuItems()V

    .line 4975
    :cond_0
    return-void
.end method

.method public showWifiConnectionDialog()V
    .locals 1

    .prologue
    .line 2268
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->showDialog(I)V

    .line 2269
    return-void
.end method

.method public shrinkFocusRect()V
    .locals 1

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->shrinkFocusRect()V

    .line 1952
    :cond_0
    return-void
.end method

.method public shutterButtonCancelAction()V
    .locals 2

    .prologue
    .line 5021
    const-string v0, "Camera"

    const-string v1, "shutterButtonCancelAction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->stopAFWaitTimer()V

    .line 5023
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 5024
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 5025
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 5026
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 5028
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5031
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopBurstShot()V

    .line 5033
    :cond_1
    return-void
.end method

.method public declared-synchronized startBlinkShutterAnimation()V
    .locals 7

    .prologue
    .line 4936
    monitor-enter p0

    const v0, 0x7f0b0004

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 4937
    .local v6, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getLeft()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getTop()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v6}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLPostViewBlink;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    .line 4938
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 4940
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    new-instance v1, Lcom/sec/android/app/camera/Camera$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$14;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLAniViewGroup;->setProgressListener(Lcom/sec/android/glview/TwGLAniViewGroup$OnProgressListener;)V

    .line 4955
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->startCustomAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4956
    monitor-exit p0

    return-void

    .line 4936
    .end local v6           #previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startContinuousAF()V
    .locals 1

    .prologue
    .line 5745
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 5746
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->startContinuousAF()V

    .line 5747
    :cond_0
    return-void
.end method

.method public declared-synchronized startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 4813
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 4901
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 4818
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v0

    .line 4819
    .local v0, orientation:I
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPostCaptureAnimation - OrientationForPicture : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v1, :cond_0

    .line 4822
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4823
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->getCaptureBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4898
    .end local v0           #orientation:I
    :catch_0
    move-exception v1

    goto :goto_0

    .line 4813
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public startVoiceRecognizer()V
    .locals 3

    .prologue
    .line 6003
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_0

    .line 6004
    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 6005
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    new-instance v1, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/Camera$VoiceRecognizer;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    .line 6007
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-eqz v0, :cond_1

    .line 6008
    const-string v0, "Camera"

    const-string v1, "start voice recognition"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6009
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    .line 6011
    :cond_1
    return-void
.end method

.method public declared-synchronized stopBlinkShutterAnimation()V
    .locals 2

    .prologue
    .line 4959
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    if-eqz v0, :cond_1

    .line 4960
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_0

    .line 4961
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuRoot:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 4962
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLAniViewGroup;->clear()V

    .line 4963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCaptureBlinkRect:Lcom/sec/android/glview/TwGLAniViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4965
    :cond_1
    monitor-exit p0

    return-void

    .line 4959
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopBurstShot()V
    .locals 1

    .prologue
    .line 5777
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 5778
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopBurstShot()V

    .line 5779
    :cond_0
    return-void
.end method

.method public stopCameraSound(I)V
    .locals 2
    .parameter "Sound"

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 3876
    const-string v0, "Camera"

    const-string v1, "stopCameraSound - mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3884
    :goto_0
    return-void

    .line 3879
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    if-nez v0, :cond_1

    .line 3880
    const-string v0, "Camera"

    const-string v1, "stopCameraSound - mStreamId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3883
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mStreamId:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0
.end method

.method public stopContinuousAF()V
    .locals 1

    .prologue
    .line 5750
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 5751
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopContinuousAF()V

    .line 5752
    :cond_0
    return-void
.end method

.method public updateIfResolutionChanged()V
    .locals 3

    .prologue
    .line 2553
    const-string v0, "Camera"

    const-string v1, "updateIfResolutionChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2556
    const-string v0, "Camera"

    const-string v1, "resolution is changed. update for new resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolutionChanged(Z)V

    .line 2559
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2560
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 2562
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2568
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 2569
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 2570
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isFaceZoomed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopFaceZoom()V

    .line 2573
    :cond_1
    return-void
.end method

.method public updateRemainTime()V
    .locals 4

    .prologue
    .line 4664
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getRemainStorage()I

    move-result v0

    .line 4666
    .local v0, nRemainCount:I
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v1, :cond_0

    .line 4667
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setRemainCount(I)V

    .line 4669
    :cond_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRemainStorageIndicator("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    return-void
.end method

.method public updateSideMenuBackground(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 2577
    invoke-static {p1}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2578
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->hideBackground()V

    .line 2583
    :cond_0
    :goto_0
    return-void

    .line 2580
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->showBackground()V

    goto :goto_0
.end method

.method public updateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "data"
    .parameter "orientation"

    .prologue
    .line 4802
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4809
    :cond_0
    :goto_0
    return-void

    .line 4806
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    if-eqz v0, :cond_0

    .line 4807
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->updateThumbnailButton(Landroid/graphics/Bitmap;IZ)V

    goto :goto_0
.end method

.method public updateUIWhenDefaultLayout()V
    .locals 5

    .prologue
    const/16 v4, 0x28

    .line 3905
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->resetLayout()V

    .line 3907
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 3908
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v1, :cond_0

    .line 3909
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 3910
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 3912
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3913
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_1

    .line 3914
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3919
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3920
    return-void

    .line 3916
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenResetSettings()V
    .locals 5

    .prologue
    const/16 v4, 0x28

    .line 3923
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 3924
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 3925
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3926
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 3927
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 3928
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->closeVisibleViews()V

    .line 3929
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->clearInvisibleViews()V

    .line 3931
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;

    .line 3932
    .local v0, editableMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;
    if-eqz v0, :cond_2

    .line 3933
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableShortcutMenu;->refreshEditableMenu()V

    .line 3938
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v3, 0x29

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    .line 3939
    .local v1, sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    if-eqz v1, :cond_0

    .line 3940
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshEditableMenu()V

    .line 3941
    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->refreshAnchors()V

    .line 3944
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    if-eqz v2, :cond_1

    .line 3945
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 3947
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 3948
    return-void

    .line 3935
    .end local v1           #sideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEditableShortcutOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateUIWhenSwitchCamera()V
    .locals 1

    .prologue
    .line 2242
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 2243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 2244
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->updateSideMenuBackground(I)V

    .line 2245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainTime()V

    .line 2250
    return-void
.end method

.method public wakeupToSnSMod()V
    .locals 6

    .prologue
    const/16 v5, 0xf

    .line 5516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "IntentExtraMessageType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5517
    .local v1, intent_extra_message:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "ActivateConfirm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5518
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mRespondNoti:Z

    .line 5519
    const-string v2, "Camera"

    const-string v3, " will wake up camera to deal with share with request"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onRespondSharewithNotify()V

    .line 5526
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 5527
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/sec/android/app/camera/Camera$24;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/Camera$24;-><init>(Lcom/sec/android/app/camera/Camera;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5540
    :cond_1
    :goto_1
    return-void

    .line 5521
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "isfromhistory"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5522
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto :goto_0

    .line 5536
    :catch_0
    move-exception v0

    .line 5538
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
