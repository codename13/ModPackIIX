.class Lcom/sec/android/app/camera/Camera$LastContentUriCallback;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastContentUriCallback"
.end annotation


# instance fields
.field private mKeyValue:Ljava/lang/String;

.field private mRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
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
    .line 4248
    .local p3, rectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4249
    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    .line 4250
    iput-object p3, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mRectList:Ljava/util/ArrayList;

    .line 4251
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 4254
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v8

    if-nez v8, :cond_1

    .line 4255
    const-string v8, "Camera"

    const-string v9, "onCompleted: mCameraEnine is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    :cond_0
    :goto_0
    return-void

    .line 4260
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v12}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 4262
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v11, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v11}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 4264
    const-string v8, "quickview"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "reviewon"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4265
    :cond_2
    const-string v8, "reviewon"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v8

    const/16 v9, 0x12

    if-ne v8, v9, :cond_3

    .line 4267
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.BUDDY_PHOTO_SHARING"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4268
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "image/*"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4269
    const-string v8, "FACE_IMAGE_URI"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4270
    const-string v8, "FACE_IMAGE_MODIFIED_DATE"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getLastDateTaken()J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4271
    const-string v8, "FACE_IMAGE_PATH"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4272
    const-string v8, "FACE_IMAGE_SIZE"

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v10}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4273
    const-string v8, "startApp"

    const-string v9, "camera"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4274
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4299
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v13, v13}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 4279
    :cond_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4280
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v8, "com.sec.android.gallery3d"

    const-string v9, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4281
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 4282
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4283
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4288
    :goto_2
    const-string v8, "from-Camera"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4290
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4291
    :catch_0
    move-exception v1

    .line 4292
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v8, "Camera"

    const-string v9, "Gallery was disabled!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4293
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v13}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto/16 :goto_0

    .line 4285
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_4
    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    .line 4300
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    const-string v8, "from_app"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->mKeyValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4301
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 4302
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;->showFocusIndicator()V

    .line 4304
    :cond_6
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 4305
    .local v6, newExtras:Landroid/os/Bundle;
    const-string v8, "fromApp"

    invoke-virtual {v6, v8, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4307
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 4308
    const-string v8, "circle"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 4309
    const-string v8, "circleCrop"

    const-string v9, "true"

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4322
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 4323
    const-string v8, "output"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4324
    const/4 v7, 0x0

    .line 4326
    .local v7, outputStream:Ljava/io/OutputStream;
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1600(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 4328
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v4

    .line 4329
    .local v4, lastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    if-eqz v4, :cond_8

    .line 4330
    invoke-virtual {v4}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v5

    .line 4332
    .local v5, lastCaptureRawData:[B
    if-eqz v5, :cond_8

    .line 4333
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #setter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v8, v5}, Lcom/sec/android/app/camera/Camera;->access$1702(Lcom/sec/android/app/camera/Camera;[B)[B

    .line 4336
    .end local v5           #lastCaptureRawData:[B
    :cond_8
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v8

    if-eqz v8, :cond_9

    .line 4337
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mLastCaptureRawData:[B
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$1700(Lcom/sec/android/app/camera/Camera;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 4340
    :cond_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4344
    invoke-static {v7}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 4352
    .end local v4           #lastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    :goto_4
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mSkipSaveDiscard:Z
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$1900(Lcom/sec/android/app/camera/Camera;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4353
    const-string v8, "skip-savediscard"

    invoke-virtual {v6, v8, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4356
    :cond_a
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 4357
    const-string v8, "latitude"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 4358
    const-string v8, "longitude"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 4360
    :cond_b
    const-string v8, "takenTime"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CameraEngine;->getLastDateTaken()J

    move-result-wide v9

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4362
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getContextualFilename()I

    move-result v8

    if-ne v8, v12, :cond_c

    .line 4363
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 4364
    const-string v8, "weather"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/Camera;->getWeather()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4368
    :cond_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4369
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v8, "com.sec.android.app.camera"

    const-string v9, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4371
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$100(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4372
    invoke-virtual {v0, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4374
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    const/16 v9, 0x7d1

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/app/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4310
    .end local v0           #cropIntent:Landroid/content/Intent;
    :cond_d
    const-string v8, "true"

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/android/app/camera/Camera;->access$1500(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4311
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 4312
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 4314
    .local v2, extras:Landroid/os/Bundle;
    const-string v8, "rectCrop"

    const-string v9, "true"

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4315
    const-string v8, "aspectX"

    const-string v9, "aspectX"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4316
    const-string v8, "aspectY"

    const-string v9, "aspectY"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4317
    const-string v8, "outputX"

    const-string v9, "outputX"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4318
    const-string v8, "outputY"

    const-string v9, "outputY"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 4341
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v3           #intent:Landroid/content/Intent;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    .line 4344
    invoke-static {v7}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v8

    invoke-static {v7}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v8

    .line 4346
    .end local v7           #outputStream:Ljava/io/OutputStream;
    :cond_e
    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mReturnUri:Z
    invoke-static {v8}, Lcom/sec/android/app/camera/Camera;->access$1800(Lcom/sec/android/app/camera/Camera;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4347
    const-string v8, "return-uri"

    invoke-virtual {v6, v8, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 4349
    :cond_f
    const-string v8, "return-data"

    invoke-virtual {v6, v8, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 4275
    .end local v6           #newExtras:Landroid/os/Bundle;
    :catch_2
    move-exception v8

    goto/16 :goto_1
.end method
