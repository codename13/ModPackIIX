.class public Lcom/android/settings/inputmethod/VoiceInputControlSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field private mCamera:Landroid/preference/CheckBoxPreference;

.field private mIncommingCalls:Landroid/preference/CheckBoxPreference;

.field private mMusic:Landroid/preference/CheckBoxPreference;

.field private mRadio:Landroid/preference/CheckBoxPreference;

.field private mVoiceInputControlEnabler:Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

.field private mVoiceInputControlObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;-><init>(Lcom/android/settings/inputmethod/VoiceInputControlSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    return-void
.end method

.method private updateUIVoiceInputControl()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 214
    .local v0, voiceInputControState:I
    const-string v1, "VoiceInputControlSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voiceInputControState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-ne v0, v5, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 220
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 221
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 225
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 131
    const-string v0, "VoiceInputControlSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-direct {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/16 v10, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v6, 0x7f070066

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->addPreferencesFromResource(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 90
    .local v2, activity:Landroid/app/Activity;
    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, actionBarSwitch:Landroid/widget/Switch;
    instance-of v6, v2, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    move-object v5, v2

    .line 93
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 94
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    .line 95
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 97
    .local v3, padding:I
    invoke-virtual {v1, v8, v8, v3, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 98
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 100
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v1, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 106
    .end local v3           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v6, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

    invoke-direct {v6, v2, v1}, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

    .line 108
    const-string v6, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v6, "voice_input_control_alarm"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 110
    const-string v6, "voice_input_control_camera"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    .line 111
    const-string v6, "voice_input_control_music"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v6, "voice_input_control_radio"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 118
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 120
    .local v0, RadioInstalled:Z
    :try_start_0
    const-string v6, "com.sec.android.app.fm"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 v0, 0x1

    .line 124
    :goto_0
    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_2
    return-void

    .line 122
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 263
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 233
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->pause()V

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 242
    goto :goto_0

    .line 244
    :cond_2
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_alarm"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 247
    :cond_4
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_camera"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 250
    :cond_6
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_music"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 253
    :cond_8
    iget-object v2, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_radio"

    iget-object v4, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_5
.end method

.method public onResume()V
    .locals 17

    .prologue
    .line 138
    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 140
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlEnabler:Lcom/android/settings/inputmethod/VoiceInputControlEnabler;

    invoke-virtual {v12}, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->resume()V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "voice_input_control"

    invoke-static {v13}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "voice_input_control_incomming_calls"

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_1

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "voice_input_control_alarm"

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_2

    .line 157
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "voice_input_control_camera"

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 161
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "voice_input_control_music"

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_3
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    if-eqz v12, :cond_4

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "voice_input_control_radio"

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    :goto_4
    invoke-virtual {v13, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 173
    .local v6, currentLocale:Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "voicetalk_language"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, locale:Ljava/lang/String;
    const/4 v11, 0x0

    .line 176
    .local v11, voiceLocale:Ljava/util/Locale;
    if-nez v7, :cond_d

    .line 177
    move-object v11, v6

    .line 187
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 188
    .local v10, resources:Landroid/content/res/Resources;
    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 189
    .local v5, config:Landroid/content/res/Configuration;
    iput-object v11, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 190
    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 192
    const v12, 0x7f090078

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, calls_arr:[Ljava/lang/String;
    const v12, 0x7f090079

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, alarm_arr:[Ljava/lang/String;
    const v12, 0x7f09007a

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, camera_arr:[Ljava/lang/String;
    const v12, 0x7f09007b

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, music_arr:[Ljava/lang/String;
    const v12, 0x7f09007c

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, radio_arr:[Ljava/lang/String;
    iput-object v6, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 199
    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0d0ae9

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v3, v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget-object v16, v3, v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0d0aeb

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v1, v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget-object v16, v1, v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    array-length v12, v4

    const/4 v13, 0x4

    if-lt v12, v13, :cond_5

    .line 204
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0d0aed

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v4, v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget-object v16, v4, v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x2

    aget-object v16, v4, v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x3

    aget-object v16, v4, v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    :cond_5
    array-length v12, v8

    const/4 v13, 0x6

    if-lt v12, v13, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0d0aef

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v8, v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget-object v16, v8, v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x2

    aget-object v16, v8, v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x3

    aget-object v16, v8, v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const/16 v16, 0x4

    aget-object v16, v8, v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x5

    aget-object v16, v8, v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    :cond_6
    array-length v12, v9

    const/4 v13, 0x6

    if-lt v12, v13, :cond_7

    .line 208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->mRadio:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0d0af1

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-object v16, v9, v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget-object v16, v9, v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x2

    aget-object v16, v9, v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x3

    aget-object v16, v9, v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const/16 v16, 0x4

    aget-object v16, v9, v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x5

    aget-object v16, v9, v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    :cond_7
    return-void

    .line 147
    .end local v1           #alarm_arr:[Ljava/lang/String;
    .end local v3           #calls_arr:[Ljava/lang/String;
    .end local v4           #camera_arr:[Ljava/lang/String;
    .end local v5           #config:Landroid/content/res/Configuration;
    .end local v6           #currentLocale:Ljava/util/Locale;
    .end local v7           #locale:Ljava/lang/String;
    .end local v8           #music_arr:[Ljava/lang/String;
    .end local v9           #radio_arr:[Ljava/lang/String;
    .end local v10           #resources:Landroid/content/res/Resources;
    .end local v11           #voiceLocale:Ljava/util/Locale;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 152
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 157
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 162
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 167
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 178
    .restart local v6       #currentLocale:Ljava/util/Locale;
    .restart local v7       #locale:Ljava/lang/String;
    .restart local v11       #voiceLocale:Ljava/util/Locale;
    :cond_d
    const-string v12, "v-es-LA"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    new-instance v11, Ljava/util/Locale;

    .end local v11           #voiceLocale:Ljava/util/Locale;
    const-string v12, "es"

    const-string v13, "US"

    invoke-direct {v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11       #voiceLocale:Ljava/util/Locale;
    goto/16 :goto_5

    .line 179
    :cond_e
    const-string v12, "-"

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 180
    const-string v12, "-"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, arr:[Ljava/lang/String;
    array-length v12, v2

    const/4 v13, 0x2

    if-ne v12, v13, :cond_f

    new-instance v11, Ljava/util/Locale;

    .end local v11           #voiceLocale:Ljava/util/Locale;
    const/4 v12, 0x0

    aget-object v12, v2, v12

    const/4 v13, 0x1

    aget-object v13, v2, v13

    invoke-direct {v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11       #voiceLocale:Ljava/util/Locale;
    goto/16 :goto_5

    .line 182
    :cond_f
    array-length v12, v2

    const/4 v13, 0x3

    if-ne v12, v13, :cond_10

    new-instance v11, Ljava/util/Locale;

    .end local v11           #voiceLocale:Ljava/util/Locale;
    const/4 v12, 0x1

    aget-object v12, v2, v12

    const/4 v13, 0x2

    aget-object v13, v2, v13

    invoke-direct {v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v11       #voiceLocale:Ljava/util/Locale;
    goto/16 :goto_5

    .line 183
    :cond_10
    new-instance v11, Ljava/util/Locale;

    .end local v11           #voiceLocale:Ljava/util/Locale;
    invoke-direct {v11, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v11       #voiceLocale:Ljava/util/Locale;
    goto/16 :goto_5

    .line 185
    .end local v2           #arr:[Ljava/lang/String;
    :cond_11
    new-instance v11, Ljava/util/Locale;

    .end local v11           #voiceLocale:Ljava/util/Locale;
    invoke-direct {v11, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v11       #voiceLocale:Ljava/util/Locale;
    goto/16 :goto_5
.end method
