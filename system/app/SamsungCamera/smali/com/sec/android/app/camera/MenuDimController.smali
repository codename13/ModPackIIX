.class public Lcom/sec/android/app/camera/MenuDimController;
.super Ljava/lang/Object;
.source "MenuDimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/MenuDimController$DimArray;,
        Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;
    }
.end annotation


# static fields
.field public static final ANTI_SHAKE:I = 0x2

.field public static final AUTOCONTRAST:I = 0x4

.field public static final BRIGHTNESS:I = 0x3

.field public static final BURST_SETTINGS:I = 0x31

.field public static final CAMCORDER_ADJUST:I = 0x21

.field public static final CAMCORDER_ANTISHAKE:I = 0x2c

.field public static final CAMCORDER_AUTOCONTRAST:I = 0x26

.field public static final CAMCORDER_CONTEXTUAL_FILENAME:I = 0x33

.field public static final CAMCORDER_EFFECT:I = 0x1f

.field public static final CAMCORDER_EFFECT_RECORDER:I = 0x2f

.field public static final CAMCORDER_EXPOSURE_VALUE:I = 0x1d

.field public static final CAMCORDER_FLASH_MODE:I = 0x25

.field public static final CAMCORDER_MODE_SWITCH:I = 0x19

.field public static final CAMCORDER_RESOLUTION:I = 0x1e

.field public static final CAMCORDER_REVIEW:I = 0x22

.field public static final CAMCORDER_SCENE_MODE:I = 0x1c

.field public static final CAMCORDER_SELF_SWITCH:I = 0x1a

.field public static final CAMCORDER_STORAGE:I = 0x23

.field public static final CAMCORDER_WHITEBALANCE:I = 0x20

.field public static final CAMCORDER_ZOOM:I = 0x27

.field public static final CAMERA_MODE_SWITCH:I = 0x0

.field public static final CAMERA_QUALITY:I = 0x30

.field public static final CAMERA_SELF_SWITCH:I = 0x1

.field public static final CONTEXTUAL_FILENAME:I = 0x32

.field public static final DEVICELIST:I = 0x2a

.field public static final EFFECT:I = 0x8

.field public static final EXPOSURE_VALUE:I = 0x10

.field public static final FLASH_MODE:I = 0xb

.field public static final FLIP:I = 0x28

.field public static final FOCUS_MODE:I = 0xc

.field public static final GUIDELINE:I = 0x17

.field public static final HDR_SETTINGS:I = 0x2d

.field public static final IMAGE_VIEWER:I = 0x18

.field public static final ISO:I = 0x7

.field public static final METERING:I = 0xe

.field public static final NUM_OF_DIM_BUTTONS:I = 0x34

.field public static final RECORDING_MODE:I = 0x1b

.field public static final RECORDING_SPEED:I = 0x2e

.field public static final REFRESH:I = 0x2b

.field public static final RESOLUTION:I = 0x11

.field public static final REVIEW:I = 0x15

.field public static final SCENE_MODE:I = 0x5

.field public static final SHOOTANDSHARE:I = 0x29

.field public static final SHOOTING_MODE:I = 0x6

.field public static final SHUTTER_SOUND:I = 0x24

.field public static final SMILE_SHOT:I = 0xa

.field public static final STORAGE:I = 0x16

.field private static final TAG:Ljava/lang/String; = "MenuDimController"

.field public static final TIMER:I = 0x14

.field public static final WHITEBALANCE:I = 0x12

.field public static final ZOOM:I = 0x9


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckSceneModeSet:Z

.field private mCurrentDimArray:[Z

.field private mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$DimArray;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFlashDimmed:Z

.field private mLowBattery:Z

.field private mPreviousFlashValue:I

.field private mPreviousMeteringValue:I

.field private mUserSettingValueList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/MenuDimController$SettingValueReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 2
    .parameter "activityContext"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x34

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    .line 93
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 94
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 95
    iput-boolean v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 97
    iput v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 103
    iput-object p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/MenuDimController;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/MenuDimController;)Lcom/sec/android/app/camera/AbstractCameraActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/MenuDimController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    return v0
.end method

.method private getkeyFromCommandId(I)I
    .locals 1
    .parameter "commandId"

    .prologue
    .line 717
    const/4 v0, -0x1

    .line 719
    .local v0, key:I
    sparse-switch p1, :sswitch_data_0

    .line 849
    :goto_0
    :sswitch_0
    return v0

    .line 721
    :sswitch_1
    const/4 v0, 0x0

    .line 722
    goto :goto_0

    .line 724
    :sswitch_2
    const/4 v0, 0x6

    .line 725
    goto :goto_0

    .line 727
    :sswitch_3
    const/4 v0, 0x5

    .line 728
    goto :goto_0

    .line 730
    :sswitch_4
    const/16 v0, 0xb

    .line 731
    goto :goto_0

    .line 733
    :sswitch_5
    const/16 v0, 0x11

    .line 734
    goto :goto_0

    .line 736
    :sswitch_6
    const/16 v0, 0xc

    .line 737
    goto :goto_0

    .line 739
    :sswitch_7
    const/16 v0, 0x14

    .line 740
    goto :goto_0

    .line 742
    :sswitch_8
    const/16 v0, 0x10

    .line 743
    goto :goto_0

    .line 745
    :sswitch_9
    const/16 v0, 0x8

    .line 746
    goto :goto_0

    .line 748
    :sswitch_a
    const/16 v0, 0x12

    .line 749
    goto :goto_0

    .line 751
    :sswitch_b
    const/4 v0, 0x7

    .line 752
    goto :goto_0

    .line 754
    :sswitch_c
    const/16 v0, 0xe

    .line 755
    goto :goto_0

    .line 757
    :sswitch_d
    const/4 v0, 0x2

    .line 758
    goto :goto_0

    .line 760
    :sswitch_e
    const/4 v0, 0x4

    .line 761
    goto :goto_0

    .line 763
    :sswitch_f
    const/16 v0, 0x15

    .line 764
    goto :goto_0

    .line 766
    :sswitch_10
    const/16 v0, 0x9

    .line 767
    goto :goto_0

    .line 769
    :sswitch_11
    const/16 v0, 0x17

    .line 770
    goto :goto_0

    .line 772
    :sswitch_12
    const/16 v0, 0x16

    .line 773
    goto :goto_0

    .line 775
    :sswitch_13
    const/16 v0, 0x18

    .line 776
    goto :goto_0

    .line 778
    :sswitch_14
    const/4 v0, 0x1

    .line 779
    goto :goto_0

    .line 781
    :sswitch_15
    const/16 v0, 0x1a

    .line 782
    goto :goto_0

    .line 784
    :sswitch_16
    const/16 v0, 0x19

    .line 785
    goto :goto_0

    .line 787
    :sswitch_17
    const/16 v0, 0x1b

    .line 788
    goto :goto_0

    .line 790
    :sswitch_18
    const/16 v0, 0x1e

    .line 791
    goto :goto_0

    .line 793
    :sswitch_19
    const/16 v0, 0x20

    .line 794
    goto :goto_0

    .line 796
    :sswitch_1a
    const/16 v0, 0x1f

    .line 797
    goto :goto_0

    .line 799
    :sswitch_1b
    const/16 v0, 0x1d

    .line 800
    goto :goto_0

    .line 802
    :sswitch_1c
    const/16 v0, 0x22

    .line 803
    goto :goto_0

    .line 805
    :sswitch_1d
    const/16 v0, 0x23

    .line 806
    goto :goto_0

    .line 808
    :sswitch_1e
    const/16 v0, 0x2c

    .line 809
    goto :goto_0

    .line 811
    :sswitch_1f
    const/16 v0, 0x25

    .line 812
    goto :goto_0

    .line 814
    :sswitch_20
    const/16 v0, 0x26

    .line 815
    goto :goto_0

    .line 817
    :sswitch_21
    const/16 v0, 0x2a

    .line 818
    goto :goto_0

    .line 820
    :sswitch_22
    const/16 v0, 0x29

    .line 821
    goto :goto_0

    .line 823
    :sswitch_23
    const/16 v0, 0x28

    .line 824
    goto :goto_0

    .line 826
    :sswitch_24
    const/16 v0, 0x2d

    .line 827
    goto :goto_0

    .line 834
    :sswitch_25
    const/16 v0, 0x30

    .line 835
    goto :goto_0

    .line 837
    :sswitch_26
    const/16 v0, 0x31

    .line 838
    goto :goto_0

    .line 840
    :sswitch_27
    const/16 v0, 0x32

    .line 841
    goto :goto_0

    .line 843
    :sswitch_28
    const/16 v0, 0x33

    .line 844
    goto :goto_0

    .line 719
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x10 -> :sswitch_25
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x16 -> :sswitch_12
        0x1d -> :sswitch_13
        0x24 -> :sswitch_14
        0x33 -> :sswitch_23
        0x35 -> :sswitch_22
        0x36 -> :sswitch_21
        0x3c -> :sswitch_24
        0x3f -> :sswitch_26
        0x40 -> :sswitch_27
        0xbb8 -> :sswitch_16
        0xbb9 -> :sswitch_17
        0xbbb -> :sswitch_1f
        0xbbc -> :sswitch_18
        0xbbf -> :sswitch_19
        0xbc0 -> :sswitch_1a
        0xbc1 -> :sswitch_1b
        0xbc2 -> :sswitch_20
        0xbc9 -> :sswitch_1d
        0xbcd -> :sswitch_1c
        0xbce -> :sswitch_15
        0xbd6 -> :sswitch_1e
        0xbd7 -> :sswitch_0
        0xbdb -> :sswitch_28
    .end sparse-switch
.end method

.method private merge([Z)V
    .locals 4
    .parameter "array"

    .prologue
    .line 1522
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x34

    if-ge v0, v1, :cond_0

    .line 1523
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v2, v2, v0

    aget-boolean v3, p1, v0

    or-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1525
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 709
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    monitor-exit p0

    return-void

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 696
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    monitor-exit p0

    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDimArray([Z)V
    .locals 3
    .parameter "dimArray"

    .prologue
    const/4 v2, 0x0

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x34

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    return-void
.end method

.method public getIsFlashDimmed()Z
    .locals 1

    .prologue
    .line 1503
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    return v0
.end method

.method public getLowBatteryStatus()Z
    .locals 1

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    return v0
.end method

.method public processDim()V
    .locals 4

    .prologue
    .line 1507
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x34

    if-ge v0, v2, :cond_0

    .line 1508
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 1507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1511
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 1512
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1513
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1514
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getArray()[Z

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/MenuDimController;->merge([Z)V

    goto :goto_1

    .line 1516
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 1519
    return-void
.end method

.method public declared-synchronized refreshButtonDim(II)V
    .locals 8
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 889
    monitor-enter p0

    :try_start_0
    const-string v3, "MenuDimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshButtonDim: menuid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " modeid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 895
    .local v0, cs:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .line 897
    .local v1, dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    if-eqz v1, :cond_0

    .line 898
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    .line 899
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->getMenuId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v3, "MenuDimController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoring user setting values. CameraResolutionChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolutionChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CamcorderResolutionChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolutionChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/MenuDimController$DimArray;-><init>(Lcom/sec/android/app/camera/MenuDimController;I)V

    .line 905
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    sparse-switch p1, :sswitch_data_0

    .line 1464
    :cond_1
    :goto_0
    :sswitch_0
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    if-eqz v3, :cond_2

    .line 1465
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1466
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1467
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1468
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1471
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    if-eqz v3, :cond_3

    .line 1472
    const-string v3, "MenuDimController"

    const-string v4, "set flash dim by external"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1474
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1475
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1476
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1479
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1480
    :cond_4
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1481
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1484
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuDimController;->processDim()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    monitor-exit p0

    return-void

    .line 907
    :sswitch_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 908
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x28

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 909
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x28

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 910
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 912
    :cond_6
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 914
    :pswitch_1
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 915
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 916
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 919
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 920
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 889
    .end local v0           #cs:Lcom/sec/android/app/camera/CameraSettings;
    .end local v1           #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 924
    .restart local v0       #cs:Lcom/sec/android/app/camera/CameraSettings;
    .restart local v1       #dimArray:Lcom/sec/android/app/camera/MenuDimController$DimArray;
    :pswitch_2
    const/16 v3, 0xe

    :try_start_2
    new-array v3, v3, [I

    fill-array-data v3, :array_7

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 926
    const/16 v3, 0xe

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 928
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 929
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 930
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 931
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 932
    const/16 v3, 0x11

    if-ne p2, v3, :cond_7

    .line 933
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 935
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 938
    :pswitch_3
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 940
    const/16 v3, 0xd

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 942
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 947
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 948
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto/16 :goto_0

    .line 951
    :pswitch_4
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 953
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 955
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 957
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 958
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 961
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto/16 :goto_0

    .line 960
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 964
    :pswitch_5
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 965
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 966
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 967
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 968
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 970
    :cond_9
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 973
    :pswitch_6
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 975
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 977
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_15

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 978
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 979
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 981
    :cond_a
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 984
    :pswitch_7
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 985
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 986
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_18

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 989
    :pswitch_8
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_19

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 991
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 993
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 998
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1001
    :pswitch_9
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1003
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_1d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1005
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_1e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1007
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1008
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1010
    :cond_b
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1013
    :pswitch_a
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_1f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1015
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1017
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_21

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1019
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1022
    :pswitch_b
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_22

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1024
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_23

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1026
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_24

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1030
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1041
    :pswitch_c
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_25

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1044
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1048
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_27

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1053
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1056
    :pswitch_d
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_28

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1057
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_29

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1058
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1061
    :pswitch_e
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_2b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1062
    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_2c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1063
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_2d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1064
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1067
    :pswitch_f
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1068
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1069
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1077
    :sswitch_2
    if-eqz p2, :cond_d

    .line 1079
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-nez v3, :cond_c

    .line 1080
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    .line 1081
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    .line 1082
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraExposureMeter()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    .line 1085
    :cond_c
    packed-switch p2, :pswitch_data_1

    .line 1191
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    .line 1192
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto/16 :goto_0

    .line 1087
    :pswitch_10
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_2e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1088
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_2f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1089
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_30

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1095
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1096
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    .line 1099
    :pswitch_11
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_31

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1100
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_32

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1101
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_33

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1102
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1103
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    .line 1106
    :pswitch_12
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_34

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1107
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_35

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1108
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_36

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1110
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_2

    .line 1113
    :pswitch_13
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_37

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1114
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_38

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1115
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_39

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1117
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1118
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1121
    :pswitch_14
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_3a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1122
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_3b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1123
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_3c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1125
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    .line 1126
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1127
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1130
    :pswitch_15
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_3d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1131
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_3e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1132
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_3f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1133
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1134
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1137
    :pswitch_16
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_40

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1138
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_41

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1139
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_42

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1140
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1141
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1144
    :pswitch_17
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_43

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1145
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_44

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1146
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_45

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1147
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1150
    :pswitch_18
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_46

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1151
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_47

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1152
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_48

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1154
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1157
    :pswitch_19
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_49

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1158
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_4a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1159
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_4b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1160
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1163
    :pswitch_1a
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_4c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1164
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_4d

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1165
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_4e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1169
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1170
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1173
    :pswitch_1b
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_4f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1174
    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_50

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1175
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_51

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1176
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    .line 1177
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1180
    :pswitch_1c
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_52

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1181
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_53

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1182
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_54

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1184
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto/16 :goto_2

    .line 1195
    :cond_d
    iget-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    if-eqz v3, :cond_1

    .line 1196
    iget v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousFlashValue:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1197
    iget v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mPreviousMeteringValue:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    .line 1198
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCheckSceneModeSet:Z

    goto/16 :goto_0

    .line 1203
    :sswitch_3
    if-eqz p2, :cond_1

    .line 1204
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1205
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1206
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_0

    .line 1219
    :sswitch_4
    if-ne p2, v6, :cond_1

    .line 1220
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1221
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1222
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x10

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1226
    :sswitch_5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1227
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x28

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1228
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x28

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1229
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    .line 1231
    :cond_e
    if-ne p2, v6, :cond_12

    .line 1237
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1238
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1239
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1240
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1241
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1242
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1244
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1245
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 1249
    .local v2, resolutionId:I
    :goto_3
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1247
    .end local v2           #resolutionId:I
    :cond_f
    const/16 v2, 0x13

    .restart local v2       #resolutionId:I
    goto :goto_3

    .line 1251
    .end local v2           #resolutionId:I
    :cond_10
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1252
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1254
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v2

    .line 1259
    .restart local v2       #resolutionId:I
    :goto_4
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1257
    .end local v2           #resolutionId:I
    :cond_11
    const/16 v2, 0x13

    .restart local v2       #resolutionId:I
    goto :goto_4

    .line 1261
    .end local v2           #resolutionId:I
    :cond_12
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 1267
    if-nez p2, :cond_1

    .line 1273
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1275
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1276
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1277
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1278
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1282
    :cond_13
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1283
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1284
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1285
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1315
    :sswitch_6
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1316
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1317
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x16

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1321
    :sswitch_7
    if-ne p2, v6, :cond_16

    .line 1322
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v3

    if-nez v3, :cond_14

    .line 1323
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_55

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1324
    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_56

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1325
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1327
    :cond_14
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isVideocallPresetSelected()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1328
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_57

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1329
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_58

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1330
    const/16 v3, 0x13

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto/16 :goto_0

    .line 1332
    :cond_15
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_59

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1333
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_5a

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1336
    :cond_16
    if-ne p2, v7, :cond_17

    .line 1337
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_5b

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1339
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_5c

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1341
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_5d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1342
    :cond_17
    const/4 v3, 0x3

    if-ne p2, v3, :cond_18

    .line 1343
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_5e

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1344
    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_5f

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1345
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1347
    :cond_18
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1348
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1352
    :sswitch_8
    if-nez p2, :cond_1

    .line 1353
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x18

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1354
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x18

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1358
    :sswitch_9
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1359
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x23

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1360
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x23

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    goto/16 :goto_0

    .line 1364
    :sswitch_a
    const/16 v3, 0xd

    if-ne p2, v3, :cond_19

    .line 1370
    :cond_19
    const/16 v3, 0xd

    if-eq p2, v3, :cond_1

    const/16 v3, 0xe

    if-eq p2, v3, :cond_1

    .line 1371
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1372
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1373
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x2c

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1377
    :sswitch_b
    if-nez p2, :cond_1a

    .line 1378
    const/16 v3, 0x29

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_0

    .line 1380
    :cond_1a
    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->set(IZ)V

    goto/16 :goto_0

    .line 1384
    :sswitch_c
    if-ne p2, v6, :cond_1

    .line 1391
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_60

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1393
    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_61

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1396
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_62

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1398
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto/16 :goto_0

    .line 1403
    :sswitch_d
    if-ne p2, v6, :cond_1

    .line 1405
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_63

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1408
    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_64

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1420
    :sswitch_e
    if-ne p2, v6, :cond_1

    .line 1422
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_65

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1425
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_66

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1433
    :sswitch_f
    if-ne p2, v6, :cond_1

    .line 1434
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_67

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1435
    const/4 v3, 0x6

    new-array v3, v3, [I

    fill-array-data v3, :array_68

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1436
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_69

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    .line 1437
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1438
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    .line 1441
    :goto_5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1442
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1443
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    goto/16 :goto_0

    .line 1440
    :cond_1b
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_5

    .line 1447
    :sswitch_10
    if-nez p2, :cond_1

    .line 1448
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x32

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1449
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x32

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1450
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x32

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V

    goto/16 :goto_0

    .line 1454
    :sswitch_11
    if-nez p2, :cond_1

    .line 1455
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x33

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->setDimMulti([I)V

    .line 1456
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x33

    aput v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->saveSettingMulti([I)V

    .line 1457
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x33

    aput v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->setSettingDefault([I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 905
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xa -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_4
        0x14 -> :sswitch_10
        0x16 -> :sswitch_6
        0x1d -> :sswitch_8
        0x24 -> :sswitch_d
        0x27 -> :sswitch_b
        0x2d -> :sswitch_c
        0x2f -> :sswitch_f
        0x65 -> :sswitch_5
        0x68 -> :sswitch_a
        0x75 -> :sswitch_9
        0x79 -> :sswitch_e
        0x82 -> :sswitch_11
    .end sparse-switch

    .line 1465
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1466
    :array_1
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1473
    :array_2
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 1474
    :array_3
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 912
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_5
        :pswitch_2
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_2
    .end packed-switch

    .line 914
    :array_4
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 915
    :array_5
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 916
    :array_6
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 924
    :array_7
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 926
    :array_8
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 928
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 938
    :array_a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 940
    :array_b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 942
    :array_c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 951
    :array_d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 953
    :array_e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 955
    :array_f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 964
    :array_10
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 965
    :array_11
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 966
    :array_12
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 973
    :array_13
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 975
    :array_14
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 977
    :array_15
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 984
    :array_16
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 985
    :array_17
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 986
    :array_18
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 989
    :array_19
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 991
    :array_1a
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 993
    :array_1b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1001
    :array_1c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1003
    :array_1d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1005
    :array_1e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1013
    :array_1f
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1015
    :array_20
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1017
    :array_21
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1022
    :array_22
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1024
    :array_23
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1026
    :array_24
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1041
    :array_25
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1044
    :array_26
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1048
    :array_27
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1056
    :array_28
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1057
    :array_29
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1058
    :array_2a
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1061
    :array_2b
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1062
    :array_2c
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1063
    :array_2d
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1085
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    .line 1087
    :array_2e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1088
    :array_2f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1089
    :array_30
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1099
    :array_31
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1100
    :array_32
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1101
    :array_33
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1106
    :array_34
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1107
    :array_35
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1108
    :array_36
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1113
    :array_37
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1114
    :array_38
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1115
    :array_39
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1121
    :array_3a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1122
    :array_3b
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1123
    :array_3c
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1130
    :array_3d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1131
    :array_3e
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1132
    :array_3f
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1137
    :array_40
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1138
    :array_41
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1139
    :array_42
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1144
    :array_43
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1145
    :array_44
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1146
    :array_45
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1150
    :array_46
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1151
    :array_47
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1152
    :array_48
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1157
    :array_49
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1158
    :array_4a
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1159
    :array_4b
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1163
    :array_4c
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1164
    :array_4d
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1165
    :array_4e
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1173
    :array_4f
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1174
    :array_50
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1175
    :array_51
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1180
    :array_52
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1181
    :array_53
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1182
    :array_54
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1323
    :array_55
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1324
    :array_56
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
    .end array-data

    .line 1328
    :array_57
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1329
    :array_58
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1332
    :array_59
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1333
    :array_5a
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1337
    :array_5b
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1339
    :array_5c
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1341
    :array_5d
    .array-data 0x4
        0x1bt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1343
    :array_5e
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1344
    :array_5f
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 1391
    :array_60
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1393
    :array_61
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1396
    :array_62
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    .line 1405
    :array_63
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1408
    :array_64
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 1422
    :array_65
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1425
    :array_66
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 1434
    :array_67
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 1435
    :array_68
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    .line 1436
    :array_69
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized removeButton(Lcom/sec/android/app/camera/glwidget/TwGLItem;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 713
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetDim()V
    .locals 2

    .prologue
    .line 853
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 854
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mUserSettingValueList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 856
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x34

    if-ge v0, v1, :cond_0

    .line 857
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/MenuDimController;->setDim(IZ)V

    .line 856
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 859
    :cond_0
    return-void
.end method

.method public restoreUserSettingValues()V
    .locals 3

    .prologue
    .line 868
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 869
    .local v0, itor:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/MenuDimController$DimArray;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuDimController$DimArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuDimController$DimArray;->restoreUserSettingValues(Z)V

    goto :goto_0

    .line 872
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/MenuDimController;->mDimArrayList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 873
    return-void
.end method

.method declared-synchronized setDim(IZ)V
    .locals 1
    .parameter "key"
    .parameter "dimmed"

    .prologue
    .line 862
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aput-boolean p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    :cond_0
    monitor-exit p0

    return-void

    .line 862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDimArray([Z)V
    .locals 3
    .parameter "dimArray"

    .prologue
    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    const/16 v1, 0x34

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    return-void
.end method

.method public setIsFlashDimmed(Z)V
    .locals 0
    .parameter "isflashDimmed"

    .prologue
    .line 1499
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mIsFlashDimmed:Z

    .line 1500
    return-void
.end method

.method public setLowBatteryStatus(Z)V
    .locals 0
    .parameter "lowBattery"

    .prologue
    .line 1490
    iput-boolean p1, p0, Lcom/sec/android/app/camera/MenuDimController;->mLowBattery:Z

    .line 1491
    return-void
.end method

.method public varargs setSettingDefault([I)V
    .locals 10
    .parameter "indices"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1529
    iget-object v6, p0, Lcom/sec/android/app/camera/MenuDimController;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    .line 1533
    .local v1, cs:Lcom/sec/android/app/camera/CameraSettings;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_4

    aget v3, v0, v2

    .line 1534
    .local v3, index:I
    packed-switch v3, :pswitch_data_0

    .line 1533
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1536
    :pswitch_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    goto :goto_1

    .line 1540
    :pswitch_2
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1

    .line 1544
    :pswitch_3
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraISO(I)V

    goto :goto_1

    .line 1550
    :pswitch_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraFocusMode()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFocusMode(I)V

    goto :goto_1

    .line 1553
    :pswitch_5
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureMeter(I)V

    goto :goto_1

    .line 1556
    :pswitch_6
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    goto :goto_1

    .line 1559
    :pswitch_7
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutoContrast(I)V

    goto :goto_1

    .line 1562
    :pswitch_8
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    goto :goto_1

    .line 1565
    :pswitch_9
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto :goto_1

    .line 1568
    :pswitch_a
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setTimer(I)V

    goto :goto_1

    .line 1571
    :pswitch_b
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    goto :goto_1

    .line 1574
    :pswitch_c
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCameraReview(I)V

    goto :goto_1

    .line 1577
    :pswitch_d
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMode()Z

    move-result v6

    if-ne v6, v9, :cond_2

    .line 1578
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v6

    if-ne v6, v9, :cond_0

    .line 1579
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1580
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachEmailMode()Z

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1581
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1583
    :cond_1
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1586
    :cond_2
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderRecordingMode(I)V

    goto :goto_1

    .line 1591
    :pswitch_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1592
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Message_MmsModeCaptureVideoResolution"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v5

    .line 1598
    .local v5, resolutionId:I
    :goto_2
    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    goto :goto_1

    .line 1595
    .end local v5           #resolutionId:I
    :cond_3
    const/16 v5, 0x13

    .restart local v5       #resolutionId:I
    goto :goto_2

    .line 1601
    .end local v5           #resolutionId:I
    :pswitch_f
    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    goto/16 :goto_1

    .line 1604
    :pswitch_10
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAntiShake(I)V

    goto/16 :goto_1

    .line 1607
    :pswitch_11
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderAntishake()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAntishake(I)V

    goto/16 :goto_1

    .line 1611
    :pswitch_12
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    goto/16 :goto_1

    .line 1615
    :pswitch_13
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    goto/16 :goto_1

    .line 1618
    :pswitch_14
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setWhiteBalance(I)V

    goto/16 :goto_1

    .line 1621
    :pswitch_15
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    goto/16 :goto_1

    .line 1624
    :pswitch_16
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setSelfFlip(I)V

    goto/16 :goto_1

    .line 1627
    :pswitch_17
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setHDR(I)V

    goto/16 :goto_1

    .line 1635
    :pswitch_18
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setBurstMode(I)V

    goto/16 :goto_1

    .line 1639
    :pswitch_19
    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/CameraSettings;->setContextualFilename(I)V

    goto/16 :goto_1

    .line 1646
    .end local v3           #index:I
    :cond_4
    return-void

    .line 1534
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public declared-synchronized synchronizeDim()V
    .locals 5

    .prologue
    .line 876
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x34

    if-ge v0, v3, :cond_2

    .line 877
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    .line 878
    .local v2, item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/MenuDimController;->getkeyFromCommandId(I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 879
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getDim()Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 880
    iget-object v3, p0, Lcom/sec/android/app/camera/MenuDimController;->mCurrentDimArray:[Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setDim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 876
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/sec/android/app/camera/glwidget/TwGLItem;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void
.end method
