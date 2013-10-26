.class Lcom/sec/android/app/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0xf

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 362
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage :: msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 366
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->restartTouchAF()V

    goto :goto_0

    .line 369
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->setFocusIndicator(I)V

    .line 370
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    goto :goto_0

    .line 374
    :sswitch_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLContext;->resumeOrientationListener()V

    .line 375
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 376
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v3

    const/4 v4, 0x4

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "Camera"

    const-string v4, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    .end local v1           #e:Ljava/lang/NullPointerException;
    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$404(Lcom/sec/android/app/camera/Camera;)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    .line 384
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 385
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$300(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/Camera$MainHandler;

    move-result-object v3

    const/4 v4, 0x4

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 386
    :catch_1
    move-exception v1

    .line 387
    .restart local v1       #e:Ljava/lang/NullPointerException;
    const-string v3, "Camera"

    const-string v4, "MSG arrived after the onDestro. Ignore exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mDirtyCount:I
    invoke-static {v3, v7}, Lcom/sec/android/app/camera/Camera;->access$402(Lcom/sec/android/app/camera/Camera;I)I

    goto :goto_0

    .line 395
    :sswitch_4
    :try_start_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 396
    .local v2, user:Lcom/samsung/shareshot/User;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/shareshot/IShareShotService;->ackActivateUser(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->onSelected()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 398
    .end local v2           #user:Lcom/samsung/shareshot/User;
    :catch_2
    move-exception v1

    .line 399
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 404
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_5
    :try_start_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/shareshot/User;

    .line 405
    .restart local v2       #user:Lcom/samsung/shareshot/User;
    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->onUnSelected()V

    .line 406
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/dmc/ux/db/UserInfo;->getIPAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/shareshot/IShareShotService;->rejectActivateUser(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 407
    .end local v2           #user:Lcom/samsung/shareshot/User;
    :catch_3
    move-exception v1

    .line 408
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 412
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_6
    const-string v3, "Camera"

    const-string v4, " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/shareshot/User;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/Camera;->runDialog(Lcom/samsung/shareshot/User;)V

    goto/16 :goto_0

    .line 422
    :sswitch_7
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 423
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    new-instance v4, Lcom/sec/android/app/camera/Camera$MainHandler$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/Camera$MainHandler$1;-><init>(Lcom/sec/android/app/camera/Camera$MainHandler;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_0

    .line 434
    :sswitch_8
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3, v8}, Lcom/sec/android/app/camera/Camera;->onShootingModeMenuSelect(I)V

    goto/16 :goto_0

    .line 437
    :sswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->showFocusIndicator()V

    goto/16 :goto_0

    .line 440
    :sswitch_a
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/shareshot/User;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/Camera;->runComfirmedDialog(Lcom/samsung/shareshot/User;)V

    goto/16 :goto_0

    .line 443
    :sswitch_b
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->isShutterPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x3b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;

    .line 445
    .local v0, burstView:Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstMenu;->showCaptureLayout()V

    .line 450
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/CameraEngine;->setSingleShotBurst(Z)V

    .line 452
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$MainHandler;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v3}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    goto/16 :goto_0

    .line 364
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_1
        0x16 -> :sswitch_4
        0x1b -> :sswitch_5
        0x20 -> :sswitch_7
        0xc8 -> :sswitch_6
        0xc9 -> :sswitch_8
        0xca -> :sswitch_a
        0xcf -> :sswitch_9
        0x12c -> :sswitch_b
    .end sparse-switch
.end method
