.class public Lcom/android/settings/wifi/WifiOffloadDialog;
.super Landroid/app/Activity;
.source "WifiOffloadDialog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field public mLaunchFromSetup:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private orientation:I

.field private packageName:Ljava/lang/String;

.field public searching_progress:Landroid/widget/ProgressBar;

.field public searching_text:Landroid/widget/TextView;

.field taskID:I

.field private userPress:I

.field wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 30
    iput-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 31
    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    .line 32
    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiOffloadDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    return p1
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 78
    const v4, 0x7f0a0321

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 79
    .local v0, dontDisturb:Landroid/widget/Button;
    new-instance v4, Lcom/android/settings/wifi/WifiOffloadDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiOffloadDialog$2;-><init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-string v4, "wifioffload"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiOffloadManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    .line 92
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->am:Landroid/app/ActivityManager;

    .line 93
    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v4, :cond_0

    .line 94
    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 95
    iget-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0322

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiSettings;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 103
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, frame:Landroid/widget/FrameLayout;
    const v4, 0x7f0a031d

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 105
    new-instance v3, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v3}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    .line 106
    .local v3, newFrag:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 107
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 108
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 110
    const v4, 0x7f0a0320

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->searching_text:Landroid/widget/TextView;

    .line 111
    const v4, 0x7f0a031f

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->searching_progress:Landroid/widget/ProgressBar;

    .line 112
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 152
    iput v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    .line 153
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "WifiOffloadDialog"

    const-string v2, "Offload onBackKeyPressed()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->startDontUseWiFiPressedTimer()V

    .line 156
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiOffloadManager;->setDontuseWifiPressed(Z)V

    .line 158
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v1, :cond_1

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.setupwizard.DATA_SETUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, paygDataSetupIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    .line 166
    .end local v0           #paygDataSetupIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 194
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() ===>>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    .line 197
    iget v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 198
    const v0, 0x7f040104

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->initialize()V

    .line 202
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->orientation:I

    .line 203
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 45
    iput-object p0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 47
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "WIFI_OFFLOAD_DO_NOT_DISTURB"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 48
    .local v2, status:I
    const-string v3, "LAUNCH_SETUPWIZARD"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 49
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "WifiOffloadDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " %%%%%%%%%%%%%%%%%%%%%%%%%%    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    if-ne v2, v6, :cond_1

    .line 52
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiOffloadDialog;->requestWindowFeature(I)Z

    .line 53
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-ne v3, v6, :cond_2

    .line 54
    const v3, 0x7f0f0001

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiOffloadDialog;->setTheme(I)V

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x100

    invoke-virtual {v3, v4, v7}, Landroid/view/Window;->setFlags(II)V

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v3, "WifiOffloadDialog"

    const-string v4, "Offload, Dialog comes....!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v3, :cond_3

    .line 60
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 61
    iget-object v3, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 62
    const-string v3, "WifiOffloadDialog"

    const-string v4, "Requesting for WIFI from Setupwizard"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const v3, 0x7f040105

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 64
    const v3, 0x7f0a0324

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiOffloadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, exitSetup:Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/wifi/WifiOffloadDialog$1;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiOffloadDialog$1;-><init>(Lcom/android/settings/wifi/WifiOffloadDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .end local v0           #exitSetup:Landroid/widget/Button;
    :goto_0
    return-void

    .line 71
    :cond_3
    const v3, 0x7f040104

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiOffloadDialog;->setContentView(I)V

    .line 72
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->initialize()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->userPress:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 121
    const-string v0, "WifiOffloadDialog"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "WifiOffloadDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog TaskID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    iget v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->taskID:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiOffloadManager;->checkAppNeedsMoveToFront(I)V

    .line 129
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    if-eqz v1, :cond_0

    .line 136
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiOffloadManager;->getLastPkgName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->packageName:Ljava/lang/String;

    .line 138
    const-string v1, "WifiOffloadDialog"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->wifioffloadmgr:Landroid/net/wifi/WifiOffloadManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiOffloadManager;->notifyDialogDisplayed(I)V

    .line 145
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiOffloadDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 146
    .local v0, mStatusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 148
    :cond_1
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 185
    const-string v0, "WifiOffloadDialog"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->getTopActivityFromStack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiOffloadDialog;->finish()V

    .line 190
    :cond_0
    return-void
.end method
