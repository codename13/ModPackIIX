.class public Lcom/android/settings/motion/GlanceViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "GlanceViewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mToggleBattery:Landroid/preference/CheckBoxPreference;

.field private mToggleMissedCall:Landroid/preference/CheckBoxPreference;

.field private mToggleNewMessage:Landroid/preference/CheckBoxPreference;

.field private mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

.field private mToggleStatusBar:Landroid/preference/CheckBoxPreference;

.field private mToggleTheNearestAlarm:Landroid/preference/CheckBoxPreference;

.field private mToggleTimeNDate:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initializeAllPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    const-string v0, "time_n_date"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTimeNDate:Landroid/preference/CheckBoxPreference;

    .line 106
    iget-object v3, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTimeNDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_time_date"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 107
    const-string v0, "missed_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v3, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_missed_call"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    const-string v0, "new_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v3, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_new_message"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    const-string v0, "now_playing_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    .line 112
    iget-object v3, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_now_playing_music"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 113
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    .line 114
    iget-object v3, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_battery_charging_info"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 115
    const-string v0, "status_bar"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    .line 116
    iget-object v3, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "glance_view_status_bar"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 117
    const-string v0, "the_nearest_alarm"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/GlanceViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTheNearestAlarm:Landroid/preference/CheckBoxPreference;

    .line 118
    iget-object v0, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTheNearestAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "glance_view_nearest_alarm"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 108
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 110
    goto :goto_2

    :cond_3
    move v0, v2

    .line 112
    goto :goto_3

    :cond_4
    move v0, v2

    .line 114
    goto :goto_4

    :cond_5
    move v0, v2

    .line 116
    goto :goto_5

    :cond_6
    move v1, v2

    .line 118
    goto :goto_6
.end method

.method private updateGlanceViewSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_glance_view"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, State:I
    const-string v1, "GlanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGlanceViewSaving : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-nez v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTimeNDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTheNearestAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 147
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTimeNDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTheNearestAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const-string v0, "GlanceView"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/GlanceViewSettings;->addPreferencesFromResource(I)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/motion/GlanceViewSettings;->initializeAllPreferences()V

    .line 55
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 78
    const-string v0, "GlanceView"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 80
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    const-string v2, "GlanceView"

    const-string v3, "onPreferenceTreeClick() "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v2, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTimeNDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_time_date"

    iget-object v4, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTimeNDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_missed_call"

    iget-object v4, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 90
    :cond_4
    iget-object v2, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_new_message"

    iget-object v4, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNewMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 92
    :cond_6
    iget-object v2, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_now_playing_music"

    iget-object v4, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleNowPlayingMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 94
    :cond_8
    iget-object v2, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_battery_charging_info"

    iget-object v4, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_5
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_5

    .line 96
    :cond_a
    iget-object v2, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_status_bar"

    iget-object v4, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleStatusBar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_6

    .line 98
    :cond_c
    iget-object v2, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTheNearestAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/motion/GlanceViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_nearest_alarm"

    iget-object v4, p0, Lcom/android/settings/motion/GlanceViewSettings;->mToggleTheNearestAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_7
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto :goto_7
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "GlanceView"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 67
    invoke-direct {p0}, Lcom/android/settings/motion/GlanceViewSettings;->updateGlanceViewSaving()V

    .line 68
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "GlanceView"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 74
    return-void
.end method
