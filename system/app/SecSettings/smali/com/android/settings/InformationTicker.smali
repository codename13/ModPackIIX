.class public Lcom/android/settings/InformationTicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InformationTicker.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContentsType:Landroid/preference/ListPreference;

.field private mFacebookAutoRefresh:Landroid/preference/ListPreference;

.field private mOldValue:I

.field private mSlidingSpeed:Landroid/preference/ListPreference;

.field private mTickerSetting:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 480
    xor-int/lit8 p0, p0, 0x1

    .line 481
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 475
    or-int/lit8 p0, p0, 0x1

    .line 476
    return p0
.end method

.method private sendAutoRefreshRate(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 517
    return-void
.end method

.method private sendContentsType(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 527
    return-void
.end method

.method private sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 544
    return-void
.end method

.method private updateFacebookState()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method private updateState()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 291
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v7, "contents_type"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 292
    .local v0, contentsType:I
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v7, :cond_0

    .line 293
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 294
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    const-string v7, "sliding_speed"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 298
    .local v3, slidingSpeed:I
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 299
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    const/4 v4, 0x0

    .line 302
    .local v4, summary:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 303
    const v7, 0x7f0d08ae

    invoke-virtual {p0, v7}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    :goto_0
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateFacebookState()V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "information_ticker"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    move v2, v5

    .line 318
    .local v2, saved_value:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v7, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 320
    if-eqz v2, :cond_7

    .line 321
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 322
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 323
    :cond_1
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 324
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    .line 325
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 326
    :cond_2
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v6, :cond_3

    .line 327
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 338
    :cond_3
    :goto_2
    return-void

    .line 304
    .end local v2           #saved_value:Z
    :cond_4
    if-ne v0, v5, :cond_5

    .line 305
    const v7, 0x7f0d08af

    invoke-virtual {p0, v7}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 310
    :cond_5
    const-string v7, "InformationTicker"

    const-string v8, "contentsType is out of bound"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    move v2, v6

    .line 317
    goto :goto_1

    .line 329
    .restart local v2       #saved_value:Z
    :cond_7
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v5, :cond_8

    .line 330
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 331
    :cond_8
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 332
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_9

    .line 333
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 334
    :cond_9
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v5, :cond_3

    .line 335
    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    .line 149
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 150
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 153
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 155
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 158
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 163
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarLayout:Landroid/view/View;

    .line 167
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->requestFocus()Z

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 174
    const-string v6, "InformationTicker"

    const-string v9, "onCheckChanged"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 181
    .local v5, value:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 182
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 187
    .local v3, mAppServiceStatus:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 194
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 196
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v1, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v2, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    :goto_2
    invoke-direct {p0, v5}, Lcom/android/settings/InformationTicker;->sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "information_ticker"

    if-eqz p2, :cond_b

    move v6, v7

    :goto_3
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    if-eqz p2, :cond_c

    .line 256
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_0

    .line 257
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 258
    :cond_0
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 259
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 260
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 261
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 270
    :cond_1
    :goto_4
    return-void

    .line 185
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "sn_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_1

    .line 200
    .end local v3           #mAppServiceStatus:I
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 201
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 206
    .restart local v3       #mAppServiceStatus:I
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 213
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v1       #intent_nw:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 221
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v2       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 204
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_5

    .line 211
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_6

    .line 224
    .end local v3           #mAppServiceStatus:I
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 229
    .restart local v3       #mAppServiceStatus:I
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOn(I)I

    move-result v3

    .line 236
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v1       #intent_nw:Landroid/content/Intent;
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 241
    .local v4, salesCode:Ljava/lang/String;
    const-string v6, "DCM"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 242
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.camobile"

    const-string v9, "com.sec.android.daemonapp.ap.camobile.DaemonReceiver"

    invoke-direct {v0, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .restart local v0       #component:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 246
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v2       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 227
    .end local v1           #intent_nw:Landroid/content/Intent;
    .end local v2           #intent_st:Landroid/content/Intent;
    .end local v3           #mAppServiceStatus:I
    .end local v4           #salesCode:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "yh_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    .restart local v3       #mAppServiceStatus:I
    goto :goto_7

    .line 234
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/InformationTicker;->AppServiceOff(I)I

    move-result v3

    goto :goto_8

    .restart local v1       #intent_nw:Landroid/content/Intent;
    .restart local v2       #intent_st:Landroid/content/Intent;
    :cond_b
    move v6, v8

    .line 253
    goto/16 :goto_3

    .line 263
    :cond_c
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_d

    .line 264
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 265
    :cond_d
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 266
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 267
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    if-eqz v6, :cond_1

    .line 268
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v6, 0x7f07002e

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->addPreferencesFromResource(I)V

    .line 95
    const-string v6, "contents_type"

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    .line 96
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string v6, "CHM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    :cond_1
    const-string v6, "sliding_speed"

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    .line 106
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    const-string v6, "ticker_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    .line 110
    const-string v6, "facebook_auto_refresh"

    invoke-virtual {p0, v6}, Lcom/android/settings/InformationTicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    .line 111
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    const-string v6, "InformationTicker"

    const-string v7, "GLOBALCONFIG_SETTINGS_SUPPORT_INFORMATION_TICKER_FOR_FACEBOOK is not supported"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 117
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 118
    .local v5, values:[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v4, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_3

    .line 122
    const-string v6, "Facebook"

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 124
    const-string v6, "InformationTicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    aget-object v6, v1, v2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    aget-object v6, v5, v2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_3
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 131
    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "contents_type"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, contentsType:I
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    if-eqz v6, :cond_4

    .line 135
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/InformationTicker;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/settings/InformationTicker;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    .line 394
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, key:Ljava/lang/String;
    const-string v3, "contents_type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 398
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 399
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contents_type"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/InformationTicker;->mOldValue:I

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "contents_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 402
    invoke-direct {p0, v2}, Lcom/android/settings/InformationTicker;->sendContentsType(I)V

    .line 404
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 405
    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mContentsType.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mContentsType:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    const/4 v1, 0x0

    .line 409
    .local v1, summary:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 410
    const v3, 0x7f0d08ae

    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    :goto_0
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mTickerSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateFacebookState()V

    .line 471
    .end local v1           #summary:Ljava/lang/String;
    .end local v2           #value:I
    :cond_0
    :goto_1
    return v6

    .line 411
    .restart local v1       #summary:Ljava/lang/String;
    .restart local v2       #value:I
    :cond_1
    if-ne v2, v6, :cond_2

    .line 412
    const v3, 0x7f0d08af

    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 417
    :cond_2
    const-string v3, "InformationTicker"

    const-string v4, "objValue is out of bound"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    .end local v1           #summary:Ljava/lang/String;
    .end local v2           #value:I
    .restart local p2
    :cond_3
    const-string v3, "sliding_speed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 458
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 459
    .restart local v2       #value:I
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sliding_speed"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 460
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 461
    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlidingSpeed.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mSlidingSpeed:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 463
    .end local v2           #value:I
    .restart local p2
    :cond_4
    const-string v3, "facebook_auto_refresh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 465
    .restart local v2       #value:I
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "information_ticker_auto_refresh"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 466
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 467
    const-string v3, "InformationTicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFacebookAutoRefresh.getEntry() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v3, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/InformationTicker;->mFacebookAutoRefresh:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 469
    invoke-direct {p0, v2}, Lcom/android/settings/InformationTicker;->sendAutoRefreshRate(I)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 342
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ticker_settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "contents_type"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 344
    .local v1, contentType:I
    if-nez v1, :cond_4

    .line 348
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v6, "SETTING_MODE"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/InformationTicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 354
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 355
    .local v5, salesCode:Ljava/lang/String;
    const-string v6, "DCM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 356
    const-string v6, "com.sec.android.daemonapp.ap.camobile"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 357
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.camobile"

    const-string v7, "com.sec.android.daemonapp.ap.camobile.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .local v0, cn:Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #contentType:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v5           #salesCode:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    .line 358
    .restart local v1       #contentType:I
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    .restart local v5       #salesCode:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    const-string v6, "com.sec.android.daemonapp.ap.sinanews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 360
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.sinanews"

    const-string v7, "com.sec.android.daemonapp.ap.sinanews.DaemonConfigure"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 361
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 362
    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 363
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v7, "com.sec.android.daemonapp.ap.yonhapnews.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 365
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_3
    const-string v6, "com.sec.android.daemonapp.ap.yahoonews"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 366
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.daemonapp.ap.yahoonews"

    const-string v7, "com.sec.android.daemonapp.ap.yahoonews.activity.SettingsNews"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_0

    .line 370
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v5           #salesCode:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 371
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "InformationTicker"

    const-string v7, "[NameNotFoundException] news daemon not installed !!!!!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 373
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_4
    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    .line 375
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 376
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.sinastock.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings/InformationTicker;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 377
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 378
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.edaily.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 380
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.daemonapp.ap.yahoostock.stockclock.MENUSETTING"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_2

    .line 387
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    const-string v6, "InformationTicker"

    const-string v7, "contentsType is out of bound"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 275
    iget-object v0, p0, Lcom/android/settings/InformationTicker;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/settings/InformationTicker;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/InformationTicker;->updateState()V

    .line 279
    return-void
.end method
