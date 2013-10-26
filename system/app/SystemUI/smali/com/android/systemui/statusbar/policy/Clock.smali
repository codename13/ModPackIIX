.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# static fields
.field private static AM_PM_STYLE:I = 0x0

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final DEBUG:Z = false

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-Clock"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocaleChanged:Z

.field private mOldLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mOldLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mOldLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/Clock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    return p1
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 22

    .prologue
    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 238
    .local v8, context:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "hide_time"

    const/4 v0, 0x0

    invoke-static {v2, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    const/16 v0, 0x8

    :cond_0
    const v1, 0x7f0f0030

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 244
    .local v6, b24:Z
    if-eqz v6, :cond_5

    .line 245
    const v16, 0x104007f

    .line 259
    .local v16, res:I
    :goto_0
    const v2, 0xef00

    .line 260
    .local v2, MAGIC1:C
    const v3, 0xef01

    .line 263
    .local v3, MAGIC2:C
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v6, :cond_1

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hide_ampm"

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v0, "ampm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getint returned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    if-eqz v2, :cond_1

    const-string v9, "h:mm"

    .line 266
    .local v9, format:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 267
    :cond_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    .line 274
    sget v20, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    if-eqz v20, :cond_9

    .line 275
    const/4 v4, -0x1

    .line 276
    .local v4, a:I
    const/4 v15, 0x0

    .line 277
    .local v15, quoted:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    .line 278
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 280
    .local v7, c:C
    const/16 v20, 0x27

    move/from16 v0, v20

    if-ne v7, v0, :cond_3

    .line 281
    if-nez v15, :cond_6

    const/4 v15, 0x1

    .line 283
    :cond_3
    :goto_2
    if-nez v15, :cond_7

    const/16 v20, 0x61

    move/from16 v0, v20

    if-ne v7, v0, :cond_7

    .line 284
    move v4, v11

    .line 289
    .end local v7           #c:C
    :cond_4
    if-ltz v4, :cond_9

    .line 291
    move v5, v4

    .line 292
    .local v5, b:I
    :goto_3
    if-lez v4, :cond_8

    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 293
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 247
    .end local v2           #MAGIC1:C
    .end local v3           #MAGIC2:C
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v9           #format:Ljava/lang/String;
    .end local v11           #i:I
    .end local v15           #quoted:Z
    .end local v16           #res:I
    :cond_5
    const v16, 0x104007e

    .restart local v16       #res:I
    goto/16 :goto_0

    .line 281
    .restart local v2       #MAGIC1:C
    .restart local v3       #MAGIC2:C
    .restart local v4       #a:I
    .restart local v7       #c:C
    .restart local v9       #format:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #quoted:Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 277
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 295
    .end local v7           #c:C
    .restart local v5       #b:I
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef00

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef01

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v5, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 300
    .end local v4           #a:I
    .end local v5           #b:I
    .end local v11           #i:I
    .end local v15           #quoted:Z
    :cond_9
    new-instance v18, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v18, sdf:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 301
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 305
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 307
    .local v17, result:Ljava/lang/String;
    sget v20, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    if-eqz v20, :cond_e

    .line 308
    const v20, 0xef00

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 309
    .local v12, magic1:I
    const v20, 0xef01

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 310
    .local v13, magic2:I
    if-ltz v12, :cond_e

    if-le v13, v12, :cond_e

    .line 311
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 312
    .local v10, formatted:Landroid/text/SpannableStringBuilder;
    sget v20, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 313
    add-int/lit8 v20, v13, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 334
    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v12           #magic1:I
    .end local v13           #magic2:I
    :goto_5
    return-object v10

    .line 303
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #sdf:Ljava/text/SimpleDateFormat;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    .restart local v18       #sdf:Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 315
    .restart local v10       #formatted:Landroid/text/SpannableStringBuilder;
    .restart local v12       #magic1:I
    .restart local v13       #magic2:I
    .restart local v17       #result:Ljava/lang/String;
    :cond_b
    sget v20, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 317
    const v14, 0x3f333333

    .line 318
    .local v14, proportion:F
    sget-boolean v20, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v20, :cond_c

    sget-boolean v20, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    if-nez v20, :cond_c

    .line 319
    const/high16 v14, 0x3f00

    .line 322
    :cond_c
    new-instance v19, Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, v19

    invoke-direct {v0, v14}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 324
    .local v19, style:Landroid/text/style/CharacterStyle;
    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v12, v13, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 327
    .end local v14           #proportion:F
    .end local v19           #style:Landroid/text/style/CharacterStyle;
    :cond_d
    add-int/lit8 v20, v13, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 328
    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v12, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .end local v10           #formatted:Landroid/text/SpannableStringBuilder;
    .end local v12           #magic1:I
    .end local v13           #magic2:I
    :cond_e
    move-object/from16 v10, v17

    .line 334
    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 104
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 106
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 107
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 119
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    if-nez v1, :cond_0

    .line 120
    sput v5, Lcom/android/systemui/statusbar/policy/Clock;->AM_PM_STYLE:I

    .line 129
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mOldLocale:Ljava/util/Locale;

    .line 136
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 145
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method
