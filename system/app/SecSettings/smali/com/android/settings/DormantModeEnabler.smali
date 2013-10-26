.class public final Lcom/android/settings/DormantModeEnabler;
.super Landroid/preference/PreferenceActivity;
.source "DormantModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 21
    new-instance v0, Lcom/android/settings/DormantModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DormantModeEnabler$1;-><init>(Lcom/android/settings/DormantModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    iput-object p1, p0, Lcom/android/settings/DormantModeEnabler;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/android/settings/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DormantModeEnabler;->state:I

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/DormantModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 39
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 94
    .local v0, state:I
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    const-string v1, "DormantModeEnabler"

    const-string v2, "switch is on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-nez p2, :cond_0

    if-ne v0, v4, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 100
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    const-string v1, "DormantModeEnabler"

    const-string v2, "switch is off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 44
    .local v0, state:I
    const-string v1, "DormantModeEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iput v0, p0, Lcom/android/settings/DormantModeEnabler;->mCheck:I

    .line 47
    if-ne v0, v4, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/DormantModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DormantModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DormantModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
