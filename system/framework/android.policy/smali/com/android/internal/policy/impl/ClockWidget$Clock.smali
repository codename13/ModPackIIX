.class Lcom/android/internal/policy/impl/ClockWidget$Clock;
.super Landroid/widget/FrameLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Clock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ClockWidget$Clock$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;
    }
.end annotation


# instance fields
.field private homeDateMessage:Ljava/lang/CharSequence;

.field private homeTimeMessage:Ljava/lang/CharSequence;

.field private localDateMessage:Ljava/lang/CharSequence;

.field private localTimeMessage:Ljava/lang/CharSequence;

.field private mAM:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mDate_Month:Landroid/widget/TextView;

.field private mDualClock:Landroid/widget/LinearLayout;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHomeAMPM:Landroid/widget/TextView;

.field private mHomeCalendar:Ljava/util/Calendar;

.field private mHomeDate_Month:Landroid/widget/TextView;

.field private mHomeHour01:Landroid/widget/ImageView;

.field private mHomeHour02:Landroid/widget/ImageView;

.field private mHomeLocale:Landroid/widget/TextView;

.field private mHomeMin01:Landroid/widget/ImageView;

.field private mHomeMin02:Landroid/widget/ImageView;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNetworkRoaming:Z

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;

.field private mPreviousMarginOfDualClock:I

.field private mPreviousMarginOfSingleClock:I

.field private mRoamingAMPM:Landroid/widget/TextView;

.field private mRoamingCalendar:Ljava/util/Calendar;

.field private mRoamingDate_Month:Landroid/widget/TextView;

.field private mRoamingHour01:Landroid/widget/ImageView;

.field private mRoamingHour02:Landroid/widget/ImageView;

.field private mRoamingLocale:Landroid/widget/TextView;

.field private mRoamingMin01:Landroid/widget/ImageView;

.field private mRoamingMin02:Landroid/widget/ImageView;

.field private mSingleClock:Landroid/widget/LinearLayout;

.field private mTimeZoneAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 731
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 624
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHandler:Landroid/os/Handler;

    .line 732
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->setFocusable(Z)V

    .line 733
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/ClockWidget$Clock;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->setMarquee(Z)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/ClockWidget$Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/ClockWidget$Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->chooseClockType()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->refreshTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/ClockWidget$Clock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/ClockWidget$Clock;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/ClockWidget$Clock;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method private chooseClockType()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1168
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_clock"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_0

    move v1, v2

    .line 1170
    .local v1, isClockOn:Z
    :goto_0
    if-nez v1, :cond_1

    .line 1171
    const-string v4, "ClockWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isClockOn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1173
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1216
    :goto_1
    return-void

    .end local v1           #isClockOn:Z
    :cond_0
    move v1, v4

    .line 1168
    goto :goto_0

    .line 1178
    .restart local v1       #isClockOn:Z
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 1179
    .local v2, isDualClock:Z
    :goto_2
    if-nez v2, :cond_3

    .line 1180
    const-string v5, "ClockWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDualClock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1182
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .end local v2           #isDualClock:Z
    :cond_2
    move v2, v4

    .line 1178
    goto :goto_2

    .line 1188
    .restart local v2       #isDualClock:Z
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDualDevice()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1189
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1190
    .local v0, currNW:I
    const-string v5, "ClockWidget"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getCurrentNW()] :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    if-nez v0, :cond_5

    .line 1193
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1203
    .end local v0           #currNW:I
    .local v3, mTelephonyManager:Landroid/telephony/TelephonyManager;
    :goto_3
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mIsNetworkRoaming:Z

    .line 1205
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isIgnoreNationalRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->isNationalRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1206
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mIsNetworkRoaming:Z

    .line 1208
    :cond_4
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mIsNetworkRoaming:Z

    if-eqz v5, :cond_7

    .line 1210
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1211
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1196
    .end local v3           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v0       #currNW:I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const-string v6, "phone2"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .restart local v3       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    goto :goto_3

    .line 1200
    .end local v0           #currNW:I
    .end local v3           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .restart local v3       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    goto :goto_3

    .line 1213
    :cond_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1214
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "hourTime"
    .parameter "minTime"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 918
    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 923
    .local v3, unlock_clock_drawables:[I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    new-array v0, v4, [I

    .line 924
    .local v0, choiceHourNumber:[I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    new-array v1, v4, [I

    .line 925
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 926
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 928
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 929
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2

    .line 928
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 932
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 933
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 941
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 942
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 943
    return-void

    .line 936
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 937
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 938
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 918
    :array_0
    .array-data 0x4
        0x4et 0x4t 0x8t 0x1t
        0x4ft 0x4t 0x8t 0x1t
        0x51t 0x4t 0x8t 0x1t
        0x52t 0x4t 0x8t 0x1t
        0x53t 0x4t 0x8t 0x1t
        0x54t 0x4t 0x8t 0x1t
        0x55t 0x4t 0x8t 0x1t
        0x56t 0x4t 0x8t 0x1t
        0x57t 0x4t 0x8t 0x1t
        0x58t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 8
    .parameter "hourTime"
    .parameter "minTime"
    .parameter "mHour01"
    .parameter "mHour02"
    .parameter "mMin01"
    .parameter "mMin02"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1116
    const/16 v5, 0xa

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    .line 1122
    .local v4, unlock_clock_drawables:[I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v0, v5, [I

    .line 1123
    .local v0, choiceHourNumber:[I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v1, v5, [I

    .line 1124
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1125
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v2

    .line 1124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1127
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1128
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v1, v2

    .line 1127
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1131
    :cond_1
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1133
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1134
    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1135
    aget v5, v0, v7

    aget v5, v4, v5

    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1154
    :goto_2
    aget v5, v1, v7

    if-eq v5, v6, :cond_2

    aget v5, v1, v6

    if-ne v5, v6, :cond_7

    .line 1155
    :cond_2
    invoke-virtual {p5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1156
    .restart local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1160
    :goto_3
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    aget v5, v1, v7

    aget v5, v4, v5

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1162
    aget v5, v1, v6

    aget v5, v4, v5

    invoke-virtual {p6, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1163
    return-void

    .line 1137
    :cond_3
    invoke-virtual {p3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1138
    aget v5, v0, v7

    if-eq v5, v6, :cond_4

    aget v5, v0, v6

    if-ne v5, v6, :cond_5

    .line 1139
    :cond_4
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1143
    :goto_4
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1145
    aget v5, v0, v7

    if-ne v5, v6, :cond_6

    .line 1146
    const v5, 0x1080426

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1150
    :goto_5
    aget v5, v0, v6

    aget v5, v4, v5

    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1141
    :cond_5
    iget v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mPreviousMarginOfDualClock:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 1148
    :cond_6
    aget v5, v0, v7

    aget v5, v4, v5

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1158
    :cond_7
    iget v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mPreviousMarginOfDualClock:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 1116
    nop

    :array_0
    .array-data 0x4
        0x24t 0x4t 0x8t 0x1t
        0x25t 0x4t 0x8t 0x1t
        0x27t 0x4t 0x8t 0x1t
        0x28t 0x4t 0x8t 0x1t
        0x29t 0x4t 0x8t 0x1t
        0x2at 0x4t 0x8t 0x1t
        0x2bt 0x4t 0x8t 0x1t
        0x2ct 0x4t 0x8t 0x1t
        0x2dt 0x4t 0x8t 0x1t
        0x2et 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private refreshDualClock()V
    .locals 12

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "homecity_timezone"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 979
    .local v7, autoHomeTimeZoneId:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 980
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    const v3, 0x104061f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 988
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 990
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    const v3, 0x1040620

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 992
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v10, "kk"

    .line 993
    .local v10, hourFormat:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v10, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 994
    .local v1, hourTime:Ljava/lang/CharSequence;
    const-string v0, "mm"

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 995
    .local v2, minTime:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeHour01:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeHour02:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeMin01:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeMin02:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 997
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v10, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 998
    const-string v0, "mm"

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v0, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 999
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingHour01:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingHour02:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingMin01:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingMin02:Landroid/widget/ImageView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1002
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 1004
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x1040076

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    :goto_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    const/16 v0, 0x8

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_7

    .line 1011
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x1040076

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1017
    :goto_5
    const-string v9, ""

    .line 1018
    .local v9, dateFormat:Ljava/lang/String;
    const-string v8, ""

    .line 1019
    .local v8, dateContentDescriptionFormat:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 1020
    .local v11, value:Ljava/lang/String;
    const-string v0, "yyyy-MM-dd"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MM-dd-yyyy"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400b4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1025
    :cond_1
    :goto_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v9, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v9, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400b0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1030
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v8, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->localDateMessage:Ljava/lang/CharSequence;

    .line 1031
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v8, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->homeDateMessage:Ljava/lang/CharSequence;

    .line 1033
    return-void

    .line 984
    .end local v1           #hourTime:Ljava/lang/CharSequence;
    .end local v2           #minTime:Ljava/lang/CharSequence;
    .end local v8           #dateContentDescriptionFormat:Ljava/lang/String;
    .end local v9           #dateFormat:Ljava/lang/String;
    .end local v10           #hourFormat:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    const v3, 0x104061f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 992
    :cond_3
    const-string v10, "h"

    goto/16 :goto_1

    .line 1002
    .restart local v1       #hourTime:Ljava/lang/CharSequence;
    .restart local v2       #minTime:Ljava/lang/CharSequence;
    .restart local v10       #hourFormat:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1006
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x1040077

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1009
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 1013
    :cond_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v4, 0x1040077

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1022
    .restart local v8       #dateContentDescriptionFormat:Ljava/lang/String;
    .restart local v9       #dateFormat:Ljava/lang/String;
    .restart local v11       #value:Ljava/lang/String;
    :cond_8
    const-string v0, "dd-MM-yyyy"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v3, 0x10400b3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6
.end method

.method private refreshSingleClock()V
    .locals 10

    .prologue
    const v9, 0x10400b0

    .line 884
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 886
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v2, "kk"

    .line 887
    .local v2, hourFormat:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 888
    .local v3, hourTime:Ljava/lang/CharSequence;
    const-string v6, "mm"

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 889
    .local v4, minTime:Ljava/lang/CharSequence;
    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->convertTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 892
    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_2

    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 893
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_3

    .line 894
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v8, 0x1040076

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    :goto_2
    const-string v1, ""

    .line 901
    .local v1, dateFormat:Ljava/lang/String;
    const-string v0, ""

    .line 902
    .local v0, dateContentDescriptionFormat:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/TickerUtil;->getCurrent_DATE_FORMAT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 903
    .local v5, value:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 904
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 911
    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDate_Month:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 914
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDate_Month:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 915
    return-void

    .line 886
    .end local v0           #dateContentDescriptionFormat:Ljava/lang/String;
    .end local v1           #dateFormat:Ljava/lang/String;
    .end local v2           #hourFormat:Ljava/lang/String;
    .end local v3           #hourTime:Ljava/lang/CharSequence;
    .end local v4           #minTime:Ljava/lang/CharSequence;
    .end local v5           #value:Ljava/lang/String;
    :cond_1
    const-string v2, "h"

    goto :goto_0

    .line 892
    .restart local v2       #hourFormat:Ljava/lang/String;
    .restart local v3       #hourTime:Ljava/lang/CharSequence;
    .restart local v4       #minTime:Ljava/lang/CharSequence;
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 896
    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v8, 0x1040077

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 905
    .restart local v0       #dateContentDescriptionFormat:Ljava/lang/String;
    .restart local v1       #dateFormat:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_4
    const-string v6, "yyyy-MM-dd"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "MM-dd-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 907
    :cond_5
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x10400b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 908
    :cond_6
    const-string v6, "dd-MM-yyyy"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 909
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x10400b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private refreshTime()V
    .locals 2

    .prologue
    .line 755
    const-string v0, "ClockWidget"

    const-string v1, "refreshTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 758
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->refreshSingleClock()V

    .line 759
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 762
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->refreshDualClock()V

    .line 763
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->getDualTTSMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 765
    :cond_1
    return-void
.end method

.method private setMarquee(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1101
    if-eqz p1, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1103
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1104
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1105
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1112
    :goto_0
    return-void

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1108
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1109
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1110
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getDualTTSMessage()Ljava/lang/String;
    .locals 17

    .prologue
    .line 1047
    const-string v2, ""

    .line 1049
    .local v2, TTSMessage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v13, 0x10400b0

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1051
    .local v3, dateFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-static {v3, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1052
    .local v8, localDateText:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v3, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1054
    .local v1, HomeDateText:Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 1055
    .local v9, localTimeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1056
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "HH"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1057
    .local v6, hourText:Ljava/lang/String;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "mm"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 1058
    .local v11, minuteText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v13, 0x104060c

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1070
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    const-string v5, "kk"

    .line 1071
    .local v5, hourFormat:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v5, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1072
    .local v7, hourTime:Ljava/lang/CharSequence;
    const-string v12, "mm"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-static {v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1074
    .local v10, minTime:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1075
    .local v4, homeTimeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1076
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1077
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1078
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v13, 0x104060c

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1090
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->localDateMessage:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->localTimeMessage:Ljava/lang/CharSequence;

    .line 1091
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->homeDateMessage:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->homeTimeMessage:Ljava/lang/CharSequence;

    .line 1093
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->localTimeMessage:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->homeTimeMessage:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    const-string v12, "ClockWidget"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TTS Message = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-object v2

    .line 1061
    .end local v4           #homeTimeText:Ljava/lang/String;
    .end local v5           #hourFormat:Ljava/lang/String;
    .end local v6           #hourText:Ljava/lang/String;
    .end local v7           #hourTime:Ljava/lang/CharSequence;
    .end local v10           #minTime:Ljava/lang/CharSequence;
    .end local v11           #minuteText:Ljava/lang/String;
    :cond_0
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "hh"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 1062
    .restart local v6       #hourText:Ljava/lang/String;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v13, "mm"

    invoke-direct {v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 1063
    .restart local v11       #minuteText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-nez v12, :cond_1

    .line 1064
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v13, 0x104060e

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1066
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v13, 0x104060f

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 1070
    :cond_2
    const-string v5, "hh"

    goto/16 :goto_1

    .line 1081
    .restart local v4       #homeTimeText:Ljava/lang/String;
    .restart local v5       #hourFormat:Ljava/lang/String;
    .restart local v7       #hourTime:Ljava/lang/CharSequence;
    .restart local v10       #minTime:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1082
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1083
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-nez v12, :cond_4

    .line 1084
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v13, 0x104060e

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 1086
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v13, 0x104060f

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2
.end method

.method public getSingleTTSMessage()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 947
    const-string v0, ""

    .line 949
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x10400b0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, dateFormat:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 953
    .local v2, dateText:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 954
    .local v5, timeText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 955
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "HH"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 956
    .local v3, hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 957
    .local v4, minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x104060c

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 969
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 971
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

    .line 973
    return-object v0

    .line 960
    .end local v3           #hourText:Ljava/lang/String;
    .end local v4           #minuteText:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "hh"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 961
    .restart local v3       #hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 962
    .restart local v4       #minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 963
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x104060e

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 965
    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const v7, 0x104060f

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getTTSMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->getSingleTTSMessage()Ljava/lang/String;

    move-result-object v0

    .line 1042
    :goto_0
    return-object v0

    .line 1039
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1040
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->getDualTTSMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1042
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNationalRoaming()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x0

    .line 1219
    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1220
    .local v3, simNumeric:Ljava/lang/String;
    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1222
    .local v1, plmnNumeric:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1223
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1224
    .local v2, simMCC:Ljava/lang/String;
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, plmnMCC:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1227
    const/4 v4, 0x1

    .line 1232
    .end local v0           #plmnMCC:Ljava/lang/String;
    .end local v2           #simMCC:Ljava/lang/String;
    :cond_0
    return v4
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 769
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 772
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 773
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Clock;Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 774
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 775
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 777
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 782
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 783
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$Clock$FormatChangeObserver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Clock;Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 784
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 786
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->chooseClockType()V

    .line 787
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->refreshTime()V

    .line 788
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 792
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 802
    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 806
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 808
    const v1, 0x10202bc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    .line 809
    const v1, 0x10202c5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    .line 810
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 811
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 813
    const v1, 0x10202be

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    .line 814
    const v1, 0x10202bf

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHour02:Landroid/widget/ImageView;

    .line 815
    const v1, 0x10202c1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mMin01:Landroid/widget/ImageView;

    .line 816
    const v1, 0x10202c2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mMin02:Landroid/widget/ImageView;

    .line 817
    const v1, 0x10202c3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    .line 818
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mAM:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 819
    const v1, 0x10202c4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDate_Month:Landroid/widget/TextView;

    .line 820
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    .line 822
    const v1, 0x10202d1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeHour01:Landroid/widget/ImageView;

    .line 823
    const v1, 0x10202d2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeHour02:Landroid/widget/ImageView;

    .line 824
    const v1, 0x10202d4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeMin01:Landroid/widget/ImageView;

    .line 825
    const v1, 0x10202d5

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeMin02:Landroid/widget/ImageView;

    .line 827
    const v1, 0x10202c8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingHour01:Landroid/widget/ImageView;

    .line 828
    const v1, 0x10202c9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingHour02:Landroid/widget/ImageView;

    .line 829
    const v1, 0x10202cb

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingMin01:Landroid/widget/ImageView;

    .line 830
    const v1, 0x10202cc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingMin02:Landroid/widget/ImageView;

    .line 832
    const v1, 0x10202cd

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    .line 833
    const v1, 0x10202d6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    .line 834
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingAMPM:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeAMPM:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 836
    const v1, 0x10202ce

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    .line 837
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingDate_Month:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 839
    const v1, 0x10202d7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    .line 840
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    .line 841
    const v1, 0x10202d0

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    .line 842
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeLocale:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeDate_Month:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 846
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    .line 847
    const v1, 0x10202c7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/ClockWidget$Clock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    .line 848
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mRoamingLocale:Landroid/widget/TextView;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 851
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHour01:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mPreviousMarginOfSingleClock:I

    .line 852
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mHomeHour01:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mPreviousMarginOfDualClock:I

    .line 854
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 855
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1040621

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 856
    const v1, 0x1040622

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 857
    const v1, 0x10802f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 858
    const v1, 0x1040013

    new-instance v2, Lcom/android/internal/policy/impl/ClockWidget$Clock$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock$1;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 869
    const v1, 0x1040009

    new-instance v2, Lcom/android/internal/policy/impl/ClockWidget$Clock$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/ClockWidget$Clock$2;-><init>(Lcom/android/internal/policy/impl/ClockWidget$Clock;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 877
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    .line 878
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 879
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 736
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "homecity_timezone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, autoHomeTimezone:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 738
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 740
    .local v2, simstateFromTelephony:I
    if-nez v0, :cond_1

    .line 741
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mSingleClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 742
    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    .line 743
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, tz:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "homecity_timezone"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 747
    .end local v3           #tz:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mDualClock:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 748
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 749
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$Clock;->mTimeZoneAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 752
    :cond_1
    return-void
.end method
