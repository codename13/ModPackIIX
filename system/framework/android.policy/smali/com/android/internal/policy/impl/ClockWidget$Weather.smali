.class Lcom/android/internal/policy/impl/ClockWidget$Weather;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weather"
.end annotation


# instance fields
.field private ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

.field private ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

.field private final KEY_APP_SERVICE_STATUS:Ljava/lang/String;

.field private final KEY_CITY_ID:Ljava/lang/String;

.field private final KEY_CITY_NAME:Ljava/lang/String;

.field private final KEY_CURRENT_TEMP:Ljava/lang/String;

.field private final KEY_ICON_NUM:Ljava/lang/String;

.field private final KEY_TEMP_SCALE:Ljava/lang/String;

.field private final LOCK_SCREEN_SERVICE_CODE:I

.field private final MSG_WEATHER_DATA_UPDATED:I

.field private final MSG_WEATHER_SETTING_CHANGED:I

.field private final TEMP_SCALE_CENTIGRADE:I

.field private final TEMP_SCALE_FAHRENHEIT:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsWeatherDateAvailable:Z

.field private mNoServiceText:Landroid/widget/TextView;

.field private mTemperatureUnit:Landroid/widget/ImageView;

.field private mWeatherCity:Landroid/widget/TextView;

.field private mWeatherDataBox:Landroid/widget/LinearLayout;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherLogo:Landroid/widget/ImageView;

.field private mWeatherTemperature:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 261
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 224
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 225
    const-string v0, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 228
    const-string v0, "aw_daemon_service_key_app_service_status"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_APP_SERVICE_STATUS:Ljava/lang/String;

    .line 229
    const-string v0, "aw_daemon_service_key_loc_code"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CITY_ID:Ljava/lang/String;

    .line 230
    const-string v0, "aw_daemon_service_key_current_temp"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CURRENT_TEMP:Ljava/lang/String;

    .line 231
    const-string v0, "aw_daemon_service_key_temp_scale"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_TEMP_SCALE:Ljava/lang/String;

    .line 232
    const-string v0, "aw_daemon_service_key_icon_num"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_ICON_NUM:Ljava/lang/String;

    .line 233
    const-string v0, "aw_daemon_service_key_city_name"

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->KEY_CITY_NAME:Ljava/lang/String;

    .line 236
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->LOCK_SCREEN_SERVICE_CODE:I

    .line 239
    const/16 v0, 0x12c0

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->MSG_WEATHER_SETTING_CHANGED:I

    .line 240
    const/16 v0, 0x12c1

    iput v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->MSG_WEATHER_DATA_UPDATED:I

    .line 243
    iput v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->TEMP_SCALE_FAHRENHEIT:I

    .line 244
    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->TEMP_SCALE_CENTIGRADE:I

    .line 246
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 263
    new-instance v0, Lcom/android/internal/policy/impl/ClockWidget$Weather$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setFocusableInTouchMode(Z)V

    .line 275
    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/ClockWidget$Weather;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setMarquee(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/ClockWidget$Weather;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    return-object v0
.end method

.method private checkIsDayOrNight()Z
    .locals 5

    .prologue
    .line 569
    const/16 v0, 0x258

    .line 570
    .local v0, mnSunriseTime:I
    const/16 v1, 0x708

    .line 572
    .local v1, mnSunsetTime:I
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    add-int v2, v3, v4

    .line 574
    .local v2, nCurTime:I
    const/16 v3, 0x23a

    if-lt v2, v3, :cond_0

    const/16 v3, 0x726

    if-gt v2, v3, :cond_0

    .line 575
    const/4 v3, 0x0

    .line 579
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private findDrawableId(I)I
    .locals 7
    .parameter "weatherIconNum"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 431
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 432
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->checkIsDayOrNight()Z

    move-result v0

    .line 433
    .local v0, isNight:Z
    packed-switch p1, :pswitch_data_0

    .line 562
    .end local v0           #isNight:Z
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 435
    .restart local v0       #isNight:Z
    :pswitch_1
    if-eqz v0, :cond_0

    .line 436
    const/16 v1, 0x12

    goto :goto_0

    .line 442
    :pswitch_2
    if-eqz v0, :cond_1

    .line 443
    const/16 v1, 0x13

    goto :goto_0

    :cond_1
    move v1, v2

    .line 445
    goto :goto_0

    .line 448
    :pswitch_3
    if-eqz v0, :cond_2

    .line 449
    const/16 v1, 0x14

    goto :goto_0

    :cond_2
    move v1, v3

    .line 451
    goto :goto_0

    :pswitch_4
    move v1, v4

    .line 453
    goto :goto_0

    :pswitch_5
    move v1, v5

    .line 455
    goto :goto_0

    .line 458
    :pswitch_6
    const/4 v1, 0x5

    goto :goto_0

    .line 460
    :pswitch_7
    const/4 v1, 0x6

    goto :goto_0

    .line 469
    :pswitch_8
    const/16 v1, 0x8

    goto :goto_0

    .line 473
    :pswitch_9
    const/16 v1, 0x9

    goto :goto_0

    .line 477
    :pswitch_a
    const/16 v1, 0xa

    goto :goto_0

    .line 483
    :pswitch_b
    const/16 v1, 0xb

    goto :goto_0

    .line 489
    :pswitch_c
    const/16 v1, 0xd

    goto :goto_0

    .line 495
    :pswitch_d
    const/16 v1, 0xe

    goto :goto_0

    .line 500
    .end local v0           #isNight:Z
    :cond_3
    packed-switch p1, :pswitch_data_1

    :pswitch_e
    goto :goto_0

    :pswitch_f
    move v1, v2

    .line 507
    goto :goto_0

    :pswitch_10
    move v1, v3

    .line 511
    goto :goto_0

    :pswitch_11
    move v1, v4

    .line 513
    goto :goto_0

    :pswitch_12
    move v1, v5

    .line 518
    goto :goto_0

    .line 520
    :pswitch_13
    const/4 v1, 0x5

    goto :goto_0

    .line 524
    :pswitch_14
    const/4 v1, 0x6

    goto :goto_0

    .line 527
    :pswitch_15
    const/4 v1, 0x7

    goto :goto_0

    .line 529
    :pswitch_16
    const/16 v1, 0x8

    goto :goto_0

    .line 532
    :pswitch_17
    const/16 v1, 0x9

    goto :goto_0

    .line 535
    :pswitch_18
    const/16 v1, 0xa

    goto :goto_0

    .line 539
    :pswitch_19
    const/16 v1, 0xb

    goto :goto_0

    .line 543
    :pswitch_1a
    const/16 v1, 0xc

    goto :goto_0

    .line 545
    :pswitch_1b
    const/16 v1, 0xd

    goto :goto_0

    .line 547
    :pswitch_1c
    const/16 v1, 0xe

    goto :goto_0

    .line 549
    :pswitch_1d
    const/16 v1, 0xf

    goto :goto_0

    .line 551
    :pswitch_1e
    const/16 v1, 0x10

    goto :goto_0

    .line 553
    :pswitch_1f
    const/16 v1, 0x11

    goto :goto_0

    .line 558
    :pswitch_20
    const/16 v1, 0x12

    goto :goto_0

    .line 560
    :pswitch_21
    const/16 v1, 0x13

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch

    .line 500
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_e
        :pswitch_e
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_12
        :pswitch_12
        :pswitch_14
        :pswitch_14
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method

.method private setMarquee(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 608
    if-eqz p1, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method

.method private setWeatherIcon(I)V
    .locals 4
    .parameter "iconNum"

    .prologue
    .line 418
    const/16 v2, 0x15

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 426
    .local v1, unlock_weather_drawables:[I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findDrawableId(I)I

    move-result v0

    .line 427
    .local v0, i:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    return-void

    .line 418
    nop

    :array_0
    .array-data 0x4
        0xc8t 0x4t 0x8t 0x1t
        0xc9t 0x4t 0x8t 0x1t
        0xcat 0x4t 0x8t 0x1t
        0xcbt 0x4t 0x8t 0x1t
        0xcct 0x4t 0x8t 0x1t
        0xcdt 0x4t 0x8t 0x1t
        0xcet 0x4t 0x8t 0x1t
        0xcft 0x4t 0x8t 0x1t
        0xd0t 0x4t 0x8t 0x1t
        0xd1t 0x4t 0x8t 0x1t
        0xd2t 0x4t 0x8t 0x1t
        0xd3t 0x4t 0x8t 0x1t
        0xd3t 0x4t 0x8t 0x1t
        0xd4t 0x4t 0x8t 0x1t
        0xd5t 0x4t 0x8t 0x1t
        0xd6t 0x4t 0x8t 0x1t
        0xd7t 0x4t 0x8t 0x1t
        0xd8t 0x4t 0x8t 0x1t
        0xd9t 0x4t 0x8t 0x1t
        0xdat 0x4t 0x8t 0x1t
        0xdbt 0x4t 0x8t 0x1t
    .end array-data
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x1040618

    const/4 v5, 0x1

    .line 585
    const-string v0, ""

    .line 587
    .local v0, TTSMessage:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    if-nez v6, :cond_0

    move-object v1, v0

    .line 604
    .end local v0           #TTSMessage:Ljava/lang/String;
    .local v1, TTSMessage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 590
    .end local v1           #TTSMessage:Ljava/lang/String;
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_temp_scale"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 591
    .local v5, isCelsius:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_current_temp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    .line 592
    .local v4, currentTemp:F
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "aw_daemon_service_key_weather_text"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, TtsWeather:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 596
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040616

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, TtsDegreeText:Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 604
    .end local v0           #TTSMessage:Ljava/lang/String;
    .restart local v1       #TTSMessage:Ljava/lang/String;
    goto/16 :goto_0

    .line 590
    .end local v1           #TTSMessage:Ljava/lang/String;
    .end local v2           #TtsDegreeText:Ljava/lang/String;
    .end local v3           #TtsWeather:Ljava/lang/String;
    .end local v4           #currentTemp:F
    .end local v5           #isCelsius:Z
    .restart local v0       #TTSMessage:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 598
    .restart local v3       #TtsWeather:Ljava/lang/String;
    .restart local v4       #currentTemp:F
    .restart local v5       #isCelsius:Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    const v8, 0x1040617

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #TtsDegreeText:Ljava/lang/String;
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 279
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 282
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    .line 284
    const-string v1, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_SETTING_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather$2;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Weather;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 309
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 313
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->updateWeatherInfo()V

    .line 314
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 318
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 325
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 329
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 330
    const v0, 0x10202d9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    const v1, 0x104060b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    const v0, 0x10202da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    .line 333
    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    .line 334
    const v0, 0x10202db

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    .line 335
    const v0, 0x10202dd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherIcon:Landroid/widget/ImageView;

    .line 336
    const v0, 0x10202dc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    .line 338
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKweatherEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const v0, 0x10202df

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherLogo:Landroid/widget/ImageView;

    const v1, 0x1080439

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 618
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 620
    return-void
.end method

.method public updateWeatherInfo()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 351
    iget-object v10, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_app_service_status"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 352
    .local v5, mAppServiceStatus:I
    and-int/lit8 v10, v5, 0x1

    if-ne v10, v8, :cond_1

    move v4, v8

    .line 354
    .local v4, isServiceEnable:Z
    :goto_0
    iget-object v10, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_loc_code"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, cityId:Ljava/lang/String;
    const-string v10, "ClockWidget"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isServiceEnable = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " cityId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 361
    const-string v10, "ClockWidget"

    const-string v11, "Weather Demon is running, And data is ready"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 363
    iget-object v10, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v10, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    .line 383
    iget-object v10, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_current_temp"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v10

    float-to-int v2, v10

    .line 384
    .local v2, currentTemp:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_temp_scale"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 385
    .local v6, tempScale:I
    iget-object v10, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "aw_daemon_service_key_icon_num"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 386
    .local v3, iconNum:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "aw_daemon_service_key_city_name"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, cityName:Ljava/lang/String;
    const-string v9, "ClockWidget"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Weather Data : currentTemp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tempScale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " iconNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cityName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherCity:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, text_currentTemp:Ljava/lang/String;
    if-ne v6, v8, :cond_5

    .line 400
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v9, 0x1080433

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 405
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherTemperature:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setWeatherIcon(I)V

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->getTTSMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 410
    .end local v1           #cityName:Ljava/lang/String;
    .end local v2           #currentTemp:I
    .end local v3           #iconNum:I
    .end local v6           #tempScale:I
    .end local v7           #text_currentTemp:Ljava/lang/String;
    :goto_2
    return-void

    .end local v0           #cityId:Ljava/lang/String;
    .end local v4           #isServiceEnable:Z
    :cond_1
    move v4, v9

    .line 352
    goto/16 :goto_0

    .line 366
    .restart local v0       #cityId:Ljava/lang/String;
    .restart local v4       #isServiceEnable:Z
    :cond_2
    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 368
    :cond_3
    const-string v8, "ClockWidget"

    const-string v10, "Weather Demon is running, But data is not ready"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 370
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mNoServiceText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 371
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mWeatherDataBox:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_2

    .line 376
    :cond_4
    const-string v8, "ClockWidget"

    const-string v10, "Weather Demon is not running, Set visibility to GONE"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0, v13}, Lcom/android/internal/policy/impl/ClockWidget$Weather;->setVisibility(I)V

    .line 378
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mIsWeatherDateAvailable:Z

    goto :goto_2

    .line 401
    .restart local v1       #cityName:Ljava/lang/String;
    .restart local v2       #currentTemp:I
    .restart local v3       #iconNum:I
    .restart local v6       #tempScale:I
    .restart local v7       #text_currentTemp:Ljava/lang/String;
    :cond_5
    if-nez v6, :cond_0

    .line 402
    iget-object v8, p0, Lcom/android/internal/policy/impl/ClockWidget$Weather;->mTemperatureUnit:Landroid/widget/ImageView;

    const v9, 0x1080437

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
