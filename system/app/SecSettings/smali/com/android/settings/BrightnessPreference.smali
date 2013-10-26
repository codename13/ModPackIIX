.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field auto_detail_custom_layout:Landroid/widget/LinearLayout;

.field auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

.field private currentLevel:I

.field private isWidget:Ljava/lang/Boolean;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutoDetailSeekBar:Landroid/widget/SeekBar;

.field private mAutoNotiTextView:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mBrightness:Lcom/android/settings/DisplaySettings;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurrentProgress:I

.field private mCustomBar:[Landroid/widget/ImageView;

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mTextView:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field supportAutoBrightnessDetail:Z

.field supportDA:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-boolean v5, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 85
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 88
    iput v5, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 90
    iput-boolean v5, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    .line 91
    iput-boolean v5, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 105
    new-instance v4, Lcom/android/settings/BrightnessPreference$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings/BrightnessPreference$1;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 112
    new-instance v4, Lcom/android/settings/BrightnessPreference$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings/BrightnessPreference$2;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 119
    new-instance v4, Lcom/android/settings/BrightnessPreference$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings/BrightnessPreference$3;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 140
    const-string v4, "BrightnessPreference"

    const-string v5, "getSensorMgr"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 142
    .local v2, sensorMgr:Landroid/hardware/SensorManager;
    const-string v4, "BrightnessPreference"

    const-string v5, "getsensorList"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 145
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 147
    .local v3, sensorType:I
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 149
    const-string v4, "BrightnessPreference"

    const-string v5, "EnableAuto"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 144
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v3           #sensorType:I
    :cond_1
    const-string v4, "ro.lcd_min_brightness"

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 157
    const-string v4, "BrightnessPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "min Brightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const v4, 0x7f040099

    invoke-virtual {p0, v4}, Lcom/android/settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->isSupportAutoBrightnessDetail()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 162
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->isSupportDA()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 382
    move v0, p1

    .line 384
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 388
    :goto_0
    return v0

    .line 386
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 392
    move v0, p1

    .line 394
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 398
    :goto_0
    return v0

    .line 396
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportDA()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 418
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 421
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    .line 424
    :cond_0
    return-void
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 412
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 413
    .local v0, brightness:I
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 414
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 427
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 428
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 430
    if-eqz v0, :cond_3

    .line 431
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_2

    .line 434
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    :cond_0
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_1
    move v0, v2

    .line 427
    goto :goto_0

    .line 438
    .restart local v0       #checked:Z
    :cond_2
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_custom_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v3, 0x7f0d0b07

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 446
    :goto_2
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 450
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 452
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_4

    .line 453
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detail_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 457
    :cond_4
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detaauto_detail_custom_layoutil_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0d0542

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 464
    :goto_3
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 461
    :catch_0
    move-exception v1

    goto :goto_3

    .line 443
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private restoreOldState()V
    .locals 3

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 503
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 505
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_3

    .line 506
    :cond_2
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_4

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 519
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 521
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 530
    if-ne p1, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 537
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 539
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public directBrightness()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 129
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onClick()V

    .line 130
    return-void
.end method

.method initCustomBar(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 277
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    .line 278
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0a01a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 279
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0a01a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 280
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0a01a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 281
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0a01a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 282
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0a01a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 283
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0a01a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 284
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    const v0, 0x7f0a01a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 285
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    const v0, 0x7f0a01a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 286
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x8

    const v0, 0x7f0a01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 287
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x9

    const v0, 0x7f0a01a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 288
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 191
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 194
    const v2, 0x7f0a019c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 195
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v5, v5, 0xff

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 197
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v2, :cond_0

    .line 198
    const v2, 0x7f0a019d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    .line 199
    const v2, 0x7f0a019f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    .line 200
    const v2, 0x7f0a019a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    .line 201
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v2, :cond_2

    .line 207
    const-string v2, "BrightnessPreference"

    const-string v5, "onBindDialogView : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    :goto_0
    const v2, 0x7f0a019e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    .line 218
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    const/16 v5, 0xc8

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_brightness_detail"

    const/16 v6, 0x64

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    .line 220
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 221
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 222
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 226
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 228
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessPreference;->initCustomBar(Landroid/view/View;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    .line 235
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightness(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 238
    const v2, 0x7f0a01ab

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    .line 239
    const v2, 0x7f0a0199

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 243
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    .line 245
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    invoke-virtual {p0, v2}, Lcom/android/settings/BrightnessPreference;->returnMaxBrightness(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    .line 246
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-le v2, v5, :cond_4

    .line 247
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    iget v6, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 250
    :goto_1
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    const/16 v5, 0xff

    if-ne v2, v5, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :cond_1
    const v2, 0x7f0a0198

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 255
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_6

    .line 256
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 257
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 258
    iget-object v5, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 262
    :goto_3
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.folder_type"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 265
    .local v1, supportFolderType:Z
    if-eqz v1, :cond_7

    .line 267
    const v2, 0x7f0a019b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 268
    .local v0, bright_level:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    .end local v0           #bright_level:Landroid/widget/TextView;
    :goto_4
    return-void

    .line 211
    .end local v1           #supportFolderType:Z
    :cond_2
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 249
    :cond_4
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iget v6, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_5
    move v2, v4

    .line 258
    goto :goto_2

    .line 260
    :cond_6
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 271
    .restart local v1       #supportFolderType:Z
    :cond_7
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 374
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 376
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 379
    :cond_0
    return-void

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 472
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 477
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 478
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 480
    if-eqz p1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 484
    :cond_0
    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 492
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 494
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightness:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 497
    :cond_1
    return-void

    .line 488
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 303
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 325
    :cond_1
    :goto_0
    return v1

    .line 306
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 307
    .local v0, isdown:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 325
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_3
    move v0, v2

    .line 306
    goto :goto_1

    .line 309
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    if-lez v2, :cond_1

    .line 310
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x14

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 311
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 317
    :pswitch_1
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 318
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 319
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v1, :cond_1

    .line 345
    iput p2, p0, Lcom/android/settings/BrightnessPreference;->mCurrentProgress:I

    .line 346
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int v0, p2, v1

    .line 347
    .local v0, mCurrentBrightness:I
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-gt v0, v1, :cond_0

    .line 349
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 355
    .end local v0           #mCurrentBrightness:I
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v1, :cond_0

    .line 351
    iput p2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto_brightness_detail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 561
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 563
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 573
    :goto_0
    return-void

    .line 567
    :cond_1
    check-cast p1, Lcom/android/settings/BrightnessPreference$SavedState;

    .line 568
    invoke-virtual {p1}, Lcom/android/settings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 569
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 570
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 571
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 572
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 570
    goto :goto_1

    :cond_3
    move v1, v2

    .line 571
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 543
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 544
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 556
    :goto_0
    return-object v0

    .line 547
    :cond_1
    new-instance v0, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 548
    .local v0, myState:Lcom/android/settings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    .line 549
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    .line 550
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 551
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    goto :goto_0

    .line 550
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 359
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 364
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mCurrentProgress:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-gt v0, v1, :cond_0

    .line 365
    const-string v0, "BrightnessPreference"

    const-string v1, "onStopTrackingTouch() : Current progress is below than MaxBrightness"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 368
    const-string v0, "BrightnessPreference"

    const-string v1, "onStopTrackingTouch() : Current progress is over than MaxBrightness"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .parameter "max"

    .prologue
    .line 332
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 335
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference;->mBrightness:Lcom/android/settings/DisplaySettings;

    .line 135
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 167
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    .line 182
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0d0b07

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 187
    :cond_0
    return-void
.end method

.method updateCustomBar()V
    .locals 4

    .prologue
    .line 291
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCustomBar(),  currentLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 294
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    mul-int/lit8 v2, v0, 0x14

    if-gt v1, v2, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 300
    :cond_1
    return-void
.end method
