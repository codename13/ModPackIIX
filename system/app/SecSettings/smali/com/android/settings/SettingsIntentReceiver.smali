.class public Lcom/android/settings/SettingsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsIntentReceiver.java"


# instance fields
.field private USB_PATH:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mVibrator:Landroid/os/Vibrator;

.field private final modem:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    const-string v0, "/sys/class/sec/switch/usb_sel"

    iput-object v0, p0, Lcom/android/settings/SettingsIntentReceiver;->USB_PATH:Ljava/lang/String;

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SettingsIntentReceiver;->modem:[B

    return-void

    :array_0
    .array-data 0x1
        0x4dt
        0x4ft
        0x44t
        0x45t
        0x4dt
        0x0t
    .end array-data
.end method

.method private checkSmartDockType()Z
    .locals 11

    .prologue
    const/16 v8, 0x400

    const/4 v7, 0x0

    .line 100
    const-string v0, "sys/class/sec/switch/adc"

    .line 101
    .local v0, SmartDockName:Ljava/lang/String;
    new-array v1, v8, [C

    .line 102
    .local v1, buffer:[C
    const/4 v3, 0x0

    .line 103
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 105
    .local v5, fileString:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v3           #file:Ljava/io/FileReader;
    .local v4, file:Ljava/io/FileReader;
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    .line 107
    .local v6, len:I
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 108
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 116
    .end local v4           #file:Ljava/io/FileReader;
    .end local v6           #len:I
    .restart local v3       #file:Ljava/io/FileReader;
    :goto_0
    const-string v8, "SettingsIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 118
    const/4 v7, 0x1

    .line 120
    :cond_0
    return v7

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 113
    .local v2, e:Ljava/io/IOException;
    :goto_2
    const-string v8, "SettingsIntentReceiver"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 112
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_2

    .line 110
    .end local v3           #file:Ljava/io/FileReader;
    .restart local v4       #file:Ljava/io/FileReader;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private makeDMfile()V
    .locals 8

    .prologue
    .line 536
    const/4 v3, 0x0

    .line 539
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/samsungaccount.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, dmFileName:Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dmFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 547
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz v4, :cond_2

    .line 550
    :try_start_1
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    .line 557
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 552
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    .line 553
    .local v2, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 554
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 542
    .end local v0           #dmFileName:Ljava/lang/String;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 543
    .local v1, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz v3, :cond_0

    .line 550
    :try_start_3
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 552
    :catch_2
    move-exception v2

    .line 553
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 544
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 545
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 547
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz v3, :cond_0

    .line 550
    :try_start_5
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 552
    :catch_4
    move-exception v2

    .line 553
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 547
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    if-eqz v3, :cond_1

    .line 550
    :try_start_6
    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 554
    :cond_1
    :goto_1
    throw v5

    .line 552
    :catch_5
    move-exception v2

    .line 553
    .restart local v2       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v0       #dmFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private writeMTData(Ljava/lang/String;)V
    .locals 8
    .parameter "mtData"

    .prologue
    .line 560
    const/4 v3, 0x0

    .line 563
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/system/mobiletracker.txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, mtFileName:Ljava/lang/String;
    const-string v5, "SettingsIntentReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mtFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 566
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 574
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz v4, :cond_2

    .line 577
    :try_start_2
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 584
    .end local v2           #mtFileName:Ljava/lang/String;
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    return-void

    .line 579
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 580
    .local v1, ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 581
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 567
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v2           #mtFileName:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 568
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - Exception in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 574
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz v3, :cond_0

    .line 577
    :try_start_4
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 579
    :catch_2
    move-exception v1

    .line 580
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 569
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 570
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :goto_2
    :try_start_5
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - UnsupportedEncodingException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 574
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz v3, :cond_0

    .line 577
    :try_start_6
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 579
    :catch_4
    move-exception v1

    .line 580
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 571
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 572
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - IOException in steam write"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 574
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - finally"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz v3, :cond_0

    .line 577
    :try_start_8
    const-string v5, "SettingsIntentReceiver"

    const-string v6, "writedatatonv - call raf.close()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 579
    :catch_6
    move-exception v1

    .line 580
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v5, "SettingsIntentReceiver"

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 574
    .end local v0           #ex:Ljava/io/IOException;
    .end local v1           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - finally"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-eqz v3, :cond_1

    .line 577
    :try_start_9
    const-string v6, "SettingsIntentReceiver"

    const-string v7, "writedatatonv - call raf.close()"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 581
    :cond_1
    :goto_5
    throw v5

    .line 579
    :catch_7
    move-exception v1

    .line 580
    .restart local v1       #ex1:Ljava/io/IOException;
    const-string v6, "SettingsIntentReceiver"

    invoke-static {v6, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 574
    .end local v1           #ex1:Ljava/io/IOException;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #mtFileName:Ljava/lang/String;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 571
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 569
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 567
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_1

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method


# virtual methods
.method public GetMTStatus(Ljava/lang/String;)Z
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 603
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v5, ";"

    invoke-direct {v1, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    .line 605
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 606
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 607
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 611
    :cond_0
    const/4 v5, 0x2

    if-ge v0, v5, :cond_2

    .line 614
    :cond_1
    :goto_1
    return v3

    .line 613
    :cond_2
    aget-object v5, v2, v4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    goto :goto_1
.end method

.method public GetPhPWD(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "mtData"

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 587
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v1, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .local v1, str:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 589
    .local v2, tokens:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 590
    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    :cond_0
    const/4 v4, 0x1

    if-ge v0, v4, :cond_2

    .line 598
    :cond_1
    :goto_1
    return-object v3

    .line 597
    :cond_2
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v6, :cond_1

    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_1

    .line 598
    aget-object v3, v2, v5

    goto :goto_1
.end method

.method public disableFMM(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 521
    const-string v2, "SettingsIntentReceiver"

    const-string v3, "Disabled FMM"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_signin"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 532
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 528
    const-string v2, "GoogleAccountPreferences"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 529
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public enableFMM(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 499
    const-string v2, "SettingsIntentReceiver"

    const-string v3, "Enabled FMM"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string v2, "GoogleAccountPreferences"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 501
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_google_account"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_signin"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 503
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samsung_signin"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 512
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 513
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_fmm"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 514
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    const-string v2, "CHN"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "remote_control"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    const-string v28, "audio"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/media/AudioManager;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 133
    new-instance v28, Landroid/os/Vibrator;

    invoke-direct/range {v28 .. v28}, Landroid/os/Vibrator;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mVibrator:Landroid/os/Vibrator;

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.samsung.wipe.MTDATA"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 136
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "onReceive() : com.samsung.wipe.MTDATA"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 139
    .local v7, extras:Landroid/os/Bundle;
    const-string v28, "MTDATA"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 140
    .local v26, temp:Ljava/lang/String;
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "extras.getString(MTDATA) : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->writeMTData(Ljava/lang/String;)V

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->makeDMfile()V

    .line 146
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "mt_pwd"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetPhPWD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsIntentReceiver;->GetMTStatus(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "mt_state"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 455
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v26           #temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.REGISTRATION_COMPLETED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "samsung_signin"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->enableFMM(Landroid/content/Context;)V

    .line 474
    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.sec.samsung.torchwidget.torch_on_1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_20

    .line 475
    const/16 v28, 0xe

    invoke-static/range {v28 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 476
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "SecHardwareInterface.setFlashLed(LIGHT_MIN)"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_2
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 489
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "onReceive() : ACTION_SETUPWIZARD_COMPLETED"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "device_provisioned"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    .line 491
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Not provisioned"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "device_provisioned"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    :cond_3
    return-void

    .line 150
    .restart local v7       #extras:Landroid/os/Bundle;
    .restart local v26       #temp:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "mt_state"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 152
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v26           #temp:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 153
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "onReceive() : RINGER_MODE_CHANGED_ACTION"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 155
    .restart local v7       #extras:Landroid/os/Bundle;
    const/16 v23, 0x0

    .line 157
    .local v23, ringer_mode:I
    if-eqz v7, :cond_6

    .line 158
    const-string v28, "android.media.EXTRA_RINGER_MODE"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 159
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Extras (ringer mode) : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_3
    packed-switch v23, :pswitch_data_0

    goto/16 :goto_0

    .line 167
    :pswitch_0
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Ringer mode: silent & set driving mode off"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "driving_mode_on"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "vibrate_in_silent"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 161
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v23

    .line 162
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "No extras (ringer mode) : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 173
    :pswitch_1
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Ringer mode: vibrate"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "vibrate_in_silent"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 180
    :pswitch_2
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Ringer mode: normal"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "vibrate_in_silent"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 186
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v23           #ringer_mode:I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 187
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Received intent : android.intent.action.BOOT_COMPLETED"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v28, "pref_sbeam"

    const/16 v29, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    const-string v29, "SBeam_support"

    invoke-interface/range {v28 .. v29}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_8

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SettingsIntentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v28, v0

    const-string v29, "SBeam_support"

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SettingsIntentReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "SBeam SBEAM_SUPPORT field createpref_sbeam"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 252
    .local v22, resolver:Landroid/content/ContentResolver;
    const-string v28, "power_saving_mode"

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 253
    .local v13, mPowerSavingMode:I
    if-eqz v13, :cond_d

    const/16 v28, 0x1

    :goto_4
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "high_contrast"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 256
    .local v11, mNegativeColor:I
    if-eqz v11, :cond_e

    const/16 v28, 0x1

    :goto_5
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "torch_light"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "torch_light"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 263
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "screen_mode_setting"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 285
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 286
    .local v15, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v28, "pref_device_provision"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-nez v28, :cond_b

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "screen_off_timeout"

    const/16 v30, 0x7530

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const v29, 0x1d8a8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 288
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Overriding setup wizard set screen timeout"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "screen_off_timeout"

    const/16 v30, 0x7530

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    const-string v28, "USC"

    const-string v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "screen_off_timeout"

    const v30, 0xea60

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "device_provisioned"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 295
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 296
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v28, "pref_device_provision"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_b
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "<Boot Complete> in Settings"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "usb_setting_mode"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "usb_setting_mode"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    :cond_c
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "salesCode = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "ro.csc.sales_code"

    invoke-static/range {v30 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v28, "TMB"

    const-string v29, "ro.csc.sales_code"

    invoke-static/range {v29 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "auto_time"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "auto_time_zone"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 253
    .end local v11           #mNegativeColor:I
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 256
    .restart local v11       #mNegativeColor:I
    :cond_e
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 336
    .end local v11           #mNegativeColor:I
    .end local v13           #mPowerSavingMode:I
    .end local v22           #resolver:Landroid/content/ContentResolver;
    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.DOCK_EVENT"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 337
    const-string v28, "android.intent.extra.DOCK_STATE"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 338
    .local v25, state:I
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received intent : android.intent.action.DOCK_EVENT with State:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "cradle_enable"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 344
    .local v9, mCradleEnabled:I
    if-nez v25, :cond_12

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "cradle_connect"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    if-eqz v9, :cond_11

    .line 348
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cradle is enabled:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v14, mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 351
    const-string v28, "smartdock"

    const/16 v29, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    const-string v28, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    :goto_6
    const/4 v3, 0x0

    .line 357
    .local v3, PhoneSpeakerState:I
    const-string v28, "state"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 359
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Sound state changed to Phone:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 354
    .end local v3           #PhoneSpeakerState:I
    :cond_10
    const-string v28, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 361
    .end local v14           #mSendIntent:Landroid/content/Intent;
    :cond_11
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cradle is disabled:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Sound state is Phone:"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 366
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "cradle_connect"

    const/16 v30, 0x1

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    if-eqz v9, :cond_14

    .line 368
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cradle is enabled:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 370
    .restart local v14       #mSendIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsIntentReceiver;->checkSmartDockType()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 371
    const-string v28, "smartdock"

    const/16 v29, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    const-string v28, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :goto_7
    const/4 v3, 0x1

    .line 377
    .restart local v3       #PhoneSpeakerState:I
    const-string v28, "state"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 379
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Sound state changed to Line out:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 374
    .end local v3           #PhoneSpeakerState:I
    :cond_13
    const-string v28, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 381
    .end local v14           #mSendIntent:Landroid/content/Intent;
    :cond_14
    const-string v28, "SettingsIntentReceiver"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cradle is disabled:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Sound state is Phone:"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 387
    .end local v9           #mCradleEnabled:I
    .end local v25           #state:I
    :cond_15
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 388
    const-string v28, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 389
    .local v12, mPowerManager:Landroid/os/PowerManager;
    invoke-virtual {v12}, Landroid/os/PowerManager;->getPlugType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "usb_setting_mode"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "usb_setting_mode"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 393
    .end local v12           #mPowerManager:Landroid/os/PowerManager;
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.CSC_CHAMELEON_UPDATE_SETTINGS"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    .line 394
    const-string v28, "roaming_menu"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 395
    .local v18, menuDisplay:Ljava/lang/String;
    const-string v28, "persist.sys.roaming_menu"

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v28, "tether_data"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 397
    .local v27, tetherdData:Ljava/lang/String;
    const-string v28, "persist.sys.tether_data"

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 398
    .end local v18           #menuDisplay:Ljava/lang/String;
    .end local v27           #tetherdData:Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "torch_light"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    const/16 v28, 0x0

    :try_start_0
    invoke-static/range {v28 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_8
    const-string v28, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 406
    .local v19, notificationManager:Landroid/app/NotificationManager;
    const v28, 0x7f020266

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 402
    .end local v19           #notificationManager:Landroid/app/NotificationManager;
    :catch_0
    move-exception v5

    .line 403
    .local v5, e:Ljava/lang/Exception;
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "could not turn off torch light"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 407
    .end local v5           #e:Ljava/lang/Exception;
    :cond_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 409
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Limit brightness"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v28, "max_brightness"

    const/16 v29, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 411
    .local v10, mMaxBrightness:I
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 412
    .restart local v15       #mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 413
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v28, "pref_siop_brightness"

    move-object/from16 v0, v28

    invoke-interface {v6, v0, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 415
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v10           #mMaxBrightness:I
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.GOOGLEACCOUNT_REGISTED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 416
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Google account Registed"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v28, "GoogleAccountPreferences"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 418
    .restart local v15       #mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 419
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v28, "pref_google_account"

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 420
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 421
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->enableFMM(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 422
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.GOOGLEACCOUNT_REMOVED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 423
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "Google account removed"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v28, "GoogleAccountPreferences"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 425
    .restart local v15       #mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 426
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v28, "pref_google_account"

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 428
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->disableFMM(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 429
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v15           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "osp.signin.SAMSUNG_ACCOUNT_SIGNOUT"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "change_alert"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "remote_control"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string v29, "samsung_signin"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 433
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/SettingsIntentReceiver;->disableFMM(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 434
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 436
    const-string v28, "com.android.settings_reverb"

    const/16 v29, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 439
    .local v24, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->size()I

    move-result v28

    if-eqz v28, :cond_3

    .line 441
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 442
    .restart local v6       #editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v20

    .line 444
    .local v20, pkgName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 445
    .local v21, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/autohaptic/AutoHapticSettings;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/settings/autohaptic/AutoHapticSettings;->isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 447
    const-string v28, "android.permission.VIBRATE"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    if-nez v28, :cond_1d

    const/4 v8, 0x1

    .line 449
    .local v8, hasVibPerm:Z
    :goto_9
    if-eqz v8, :cond_0

    .line 450
    const-string v28, "disabled"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 447
    .end local v8           #hasVibPerm:Z
    :cond_1d
    const/4 v8, 0x0

    goto :goto_9

    .line 459
    .end local v6           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v20           #pkgName:Ljava/lang/String;
    .end local v21           #pm:Landroid/content/pm/PackageManager;
    .end local v24           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1e
    const-string v28, "android.settings.EAS_POLICY_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 460
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "receive android.settings.EAS_POLICY_STATE_CHANGED"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 462
    .restart local v22       #resolver:Landroid/content/ContentResolver;
    const-string v28, "device_policy"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 463
    .local v4, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v4, :cond_1f

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v16

    .line 464
    .local v16, maxTimeout:J
    :goto_a
    const-wide/16 v28, 0x1

    cmp-long v28, v16, v28

    if-gez v28, :cond_1

    .line 465
    const-string v28, "SettingsIntentReceiver"

    const-string v29, " Max timeout is removed. rollback timeout value"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v28, "screen_off_timeout"

    const-string v29, "screen_off_timeout_rollback"

    const/16 v30, 0x7530

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    const-string v28, "lock_screen_lock_after_timeout"

    const-string v29, "lock_after_timeout_rollback"

    const/16 v30, 0x1388

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 463
    .end local v16           #maxTimeout:J
    :cond_1f
    const-wide/16 v16, 0x0

    goto :goto_a

    .line 477
    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v22           #resolver:Landroid/content/ContentResolver;
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.sec.samsung.torchwidget.torch_on_2"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_21

    .line 478
    const/16 v28, 0x6

    invoke-static/range {v28 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 479
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "SecHardwareInterface.setFlashLed(LIGHT_STANDARD)"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 480
    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.sec.samsung.torchwidget.torch_on_3"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 481
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 482
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "SecHardwareInterface.setFlashLed(LIGHT_MAX)"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 483
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v28

    const-string v29, "com.sec.samsung.torchwidget.torch_off"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 484
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    .line 485
    const-string v28, "SettingsIntentReceiver"

    const-string v29, "SecHardwareInterface.setFlashLed(LIGHT_OFF)"

    invoke-static/range {v28 .. v29}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
