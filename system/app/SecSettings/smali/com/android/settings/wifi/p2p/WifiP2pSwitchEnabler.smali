.class public Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiP2pSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 69
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 73
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 81
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 82
    return-void

    .line 78
    :cond_1
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 88
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 95
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 101
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 102
    return-void

    .line 98
    :cond_1
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 198
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 201
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 223
    const-string v0, "WifiP2pSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 190
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 194
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiP2pSwitchEnabler"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    .line 135
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 140
    :cond_4
    if-eqz p2, :cond_7

    .line 141
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 142
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 145
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 146
    const-string v2, "WifiP2pSwitchEnabler"

    const-string v3, "onCheckedChanged Thread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 148
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, ie:Ljava/lang/InterruptedException;
    const-string v2, "WifiP2pSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v1           #ie:Ljava/lang/InterruptedException;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    .end local v0           #i:I
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v2, :cond_1

    .line 183
    .end local p2
    :cond_0
    :goto_0
    return v1

    .line 167
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 169
    .local v0, enable:Z
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-ne v2, v0, :cond_2

    .line 170
    const/4 v1, 0x1

    goto :goto_0

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 174
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 176
    if-eqz v0, :cond_3

    .line 177
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
