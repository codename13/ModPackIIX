.class public Lcom/android/settings/DormantmodSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DormantmodSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DIALOG_CURRENT_TIMEPICKER:I


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

.field private mAllowListPref:Landroid/preference/ListPreference;

.field private mAlwaysPref:Landroid/preference/CheckBoxPreference;

.field private mDormantModeEnabler:Lcom/android/settings/DormantModeEnabler;

.field private final mDormantModeObserver:Landroid/database/ContentObserver;

.field private mEndhour:I

.field private mEndmin:I

.field private mIncomingCallPref:Landroid/preference/CheckBoxPreference;

.field private mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mSetTimPref:Landroid/preference/PreferenceCategory;

.field private mSetTimeDialogPref:Landroid/preference/Preference;

.field private mStarthour:I

.field private mStartmin:I

.field private mTimeFromBtn:Landroid/widget/Button;

.field private mTimeToBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/DormantmodSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/android/settings/DormantmodSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DormantmodSettings$1;-><init>(Lcom/android/settings/DormantmodSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private TimeFormat(II)Ljava/lang/StringBuilder;
    .locals 7
    .parameter "hour"
    .parameter "mine"

    .prologue
    .line 376
    const-string v0, ""

    .line 378
    .local v0, mTimeAMPM:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 379
    const/16 v4, 0xc

    if-le p1, v4, :cond_1

    .line 380
    add-int/lit8 p1, p1, -0xc

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0c1d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_0
    :goto_0
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, mTimeHour:Ljava/lang/String;
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, mTimeMin:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v3, setTime:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 393
    return-object v3

    .line 383
    .end local v1           #mTimeHour:Ljava/lang/String;
    .end local v2           #mTimeMin:Ljava/lang/String;
    .end local v3           #setTime:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0c1c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/DormantmodSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/DormantmodSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/DormantmodSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/DormantmodSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/DormantmodSettings;->mStarthour:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/DormantmodSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/DormantmodSettings;->mStartmin:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/DormantmodSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DormantmodSettings;->setStartTime(II)V

    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput p0, Lcom/android/settings/DormantmodSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/DormantmodSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/DormantmodSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/settings/DormantmodSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/DormantmodSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/DormantmodSettings;->mEndhour:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/DormantmodSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/DormantmodSettings;->mEndmin:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/DormantmodSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DormantmodSettings;->setEndTime(II)V

    return-void
.end method

.method private setAllowListsummery(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, values:[Ljava/lang/String;
    const v2, 0x7f090075

    .line 400
    .local v2, summaryArrayResId:I
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090075

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 403
    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 404
    iget-object v4, p0, Lcom/android/settings/DormantmodSettings;->mAllowListPref:Landroid/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DormantmodSettings;->mAllowListPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private setEndTime(II)V
    .locals 3
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_end_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_end_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DormantmodSettings;->TimeFormat(II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    .local v0, EndTime:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/DormantmodSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method

.method private setStartTime(II)V
    .locals 3
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_start_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_start_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DormantmodSettings;->TimeFormat(II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 359
    .local v0, StartTime:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/DormantmodSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 361
    return-void
.end method


# virtual methods
.method initDromantswitchBtn()V
    .locals 8

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DormantmodSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 238
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 239
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 240
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 242
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 243
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 245
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DormantmodSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 250
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DormantmodSettings;->mActionBarLayout:Landroid/view/View;

    .line 252
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    new-instance v3, Lcom/android/settings/DormantModeEnabler;

    iget-object v4, p0, Lcom/android/settings/DormantmodSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/DormantmodSettings;->mDormantModeEnabler:Lcom/android/settings/DormantModeEnabler;

    .line 254
    return-void
.end method

.method public initPref()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "disable_incoming_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/DormantmodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    .line 162
    const-string v0, "disable_notifications"

    invoke-virtual {p0, v0}, Lcom/android/settings/DormantmodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 164
    const-string v0, "disable_alarm_and_timer"

    invoke-virtual {p0, v0}, Lcom/android/settings/DormantmodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v0, "disable_led_indicator"

    invoke-virtual {p0, v0}, Lcom/android/settings/DormantmodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v0, "always"

    invoke-virtual {p0, v0}, Lcom/android/settings/DormantmodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    .line 170
    const-string v0, "allow_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/DormantmodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mAllowListPref:Landroid/preference/ListPreference;

    .line 171
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mAllowListPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/DormantmodSettings;->setAllowListsummery(Ljava/lang/String;)V

    .line 175
    const-string v0, "set_time_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/DormantmodSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    .line 177
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/android/settings/DormantmodSettings$2;

    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DormantmodSettings$2;-><init>(Lcom/android/settings/DormantmodSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DormantmodSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    .line 203
    iget-object v1, p0, Lcom/android/settings/DormantmodSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    const v1, 0x7f04005a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/DormantmodSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_0
    return-void

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadDormantTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DormantmodSettings;->mStarthour:I

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DormantmodSettings;->mEndhour:I

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DormantmodSettings;->mStartmin:I

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DormantmodSettings;->mEndmin:I

    .line 261
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/settings/DormantmodSettings;->addPreferencesFromResource(I)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->initDromantswitchBtn()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->initPref()V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->loadDormantTime()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->updateDormantmodepage()V

    .line 124
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 301
    packed-switch p1, :pswitch_data_0

    .line 315
    const/4 v0, 0x0

    .line 319
    .local v0, d:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 303
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 304
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/DormantmodSettings;->mStarthour:I

    iget v4, p0, Lcom/android/settings/DormantmodSettings;->mStartmin:I

    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 306
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 309
    .end local v0           #d:Landroid/app/Dialog;
    .end local v6           #calendar:Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 310
    .restart local v6       #calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/DormantmodSettings;->mEndhour:I

    iget v4, p0, Lcom/android/settings/DormantmodSettings;->mEndmin:I

    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 312
    .restart local v0       #d:Landroid/app/Dialog;
    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "DormantModeSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mDormantModeEnabler:Lcom/android/settings/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DormantModeEnabler;->resume()V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DormantmodSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, key:Ljava/lang/String;
    const-string v4, "allow_list"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, p2

    .line 334
    check-cast v3, Ljava/lang/String;

    .line 336
    .local v3, value:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_allow_list"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 337
    invoke-direct {p0, v3}, Lcom/android/settings/DormantmodSettings;->setAllowListsummery(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    const-string v4, "Custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.contacts"

    const-string v5, "com.android.contacts.activities.PeopleActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/settings/DormantmodSettings;->startActivity(Landroid/content/Intent;)V

    .line 346
    const-string v4, "DormantModeSettings"

    const-string v5, "ALLOW_TYPE_CUSTOME"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 338
    .restart local v3       #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "DormantModeSettings"

    const-string v5, "could not set KEY_ALLOW_LIST"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 266
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 268
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_disable_incoming_calls"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    .end local v0           #value:Z
    :goto_0
    return v2

    .line 271
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 273
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_disable_notifications"

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 277
    .end local v0           #value:Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 278
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 279
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_disable_alarm_and_timer"

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 282
    .end local v0           #value:Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 283
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 284
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_disable_led_indicator"

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 287
    .end local v0           #value:Z
    :cond_7
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 288
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 289
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_always"

    if-eqz v0, :cond_9

    move v3, v2

    :goto_1
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/DormantmodSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_8

    move v1, v2

    :cond_8
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_9
    move v3, v1

    .line 289
    goto :goto_1

    .line 294
    .end local v0           #value:Z
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 128
    const-string v0, "DormantModeSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mDormantModeEnabler:Lcom/android/settings/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/DormantModeEnabler;->resume()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_switch_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 138
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 151
    const-string v0, "DormantModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/DormantmodSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 324
    sget v0, Lcom/android/settings/DormantmodSettings;->DIALOG_CURRENT_TIMEPICKER:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 325
    invoke-direct {p0, p2, p3}, Lcom/android/settings/DormantmodSettings;->setStartTime(II)V

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget v0, Lcom/android/settings/DormantmodSettings;->DIALOG_CURRENT_TIMEPICKER:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 327
    invoke-direct {p0, p2, p3}, Lcom/android/settings/DormantmodSettings;->setEndTime(II)V

    goto :goto_0
.end method

.method updateDormantmodepage()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/DormantmodSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, State:I
    if-nez v0, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 216
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 218
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 221
    iget-object v2, p0, Lcom/android/settings/DormantmodSettings;->mAllowListPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 232
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 224
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 225
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 226
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 228
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 229
    iget-object v3, p0, Lcom/android/settings/DormantmodSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/DormantmodSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 230
    iget-object v1, p0, Lcom/android/settings/DormantmodSettings;->mAllowListPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0
.end method
