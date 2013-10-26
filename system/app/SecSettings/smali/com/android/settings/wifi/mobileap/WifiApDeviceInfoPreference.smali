.class public Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
.super Landroid/preference/Preference;
.source "WifiApDeviceInfoPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAllowAll:Z

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "WifiApDeviceInfoPreference"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "fragment"
    .parameter "wifiConfig"

    .prologue
    const v3, 0x7f0d027b

    const/4 v2, 0x1

    .line 51
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 54
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 56
    const v0, 0x7f0400b4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setLayoutResource(I)V

    .line 58
    if-nez p2, :cond_0

    .line 59
    const v0, 0x7f0d0279

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(I)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    .line 61
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 73
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v0, v2, :cond_1

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 67
    const v0, 0x7f0d027e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_0

    .line 69
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 70
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->checkConnectedDeviceOrChangeAllowPolicy()V

    return-void
.end method

.method private changeAllowPolicy()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 143
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "wifi"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 146
    .local v0, wm:Landroid/net/wifi/WifiManager;
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v4, 0x3

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 148
    const v1, 0x7f0d027b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    .line 153
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 155
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 157
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 159
    :cond_0
    return-void

    .end local v0           #wm:Landroid/net/wifi/WifiManager;
    :cond_1
    move v1, v3

    .line 143
    goto :goto_0

    .line 150
    .restart local v0       #wm:Landroid/net/wifi/WifiManager;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 151
    const v1, 0x7f0d027e

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setSummary(I)V

    goto :goto_1
.end method

.method private checkConnectedDeviceOrChangeAllowPolicy()V
    .locals 5

    .prologue
    .line 132
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 133
    .local v0, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 134
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v3}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 135
    .local v2, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 136
    .local v1, num:I
    if-lez v1, :cond_0

    .line 137
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->changeAllowPolicy()V

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 6
    .parameter "dialogId"

    .prologue
    const v5, 0x7f0d0111

    const/4 v0, 0x1

    .line 91
    if-ne p1, v0, :cond_1

    .line 92
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d0297

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d02b1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0542

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 108
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 129
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 110
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mAllowAll:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 112
    .local v0, current:I
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 113
    .restart local v1       #dialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0d0291

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09001d

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;I)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 127
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public onClickItem(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 87
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V

    .line 88
    return-void
.end method

.method public updateSsid(Ljava/lang/String;)V
    .locals 0
    .parameter "ssid"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->notifyHierarchyChanged()V

    .line 83
    return-void
.end method
