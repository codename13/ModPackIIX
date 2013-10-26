.class Lcom/android/settings/wifi/IwlanEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "IwlanEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/IwlanEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/IwlanEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/IwlanEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f0d0b19

    const v8, 0x7f0d0b12

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 89
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #calls: Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$100(Lcom/android/settings/wifi/IwlanEnabler;)I

    move-result v4

    if-nez v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #calls: Lcom/android/settings/wifi/IwlanEnabler;->isAvailableDataStorage()Z
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$200(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 141
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #calls: Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 100
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 104
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    .end local v3           #str:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #setter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I
    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I

    goto/16 :goto_0

    .line 106
    .restart local v3       #str:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 114
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #str:Ljava/lang/String;
    :cond_5
    const-string v4, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 115
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #calls: Lcom/android/settings/wifi/IwlanEnabler;->isWifiConnected()Z
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$000(Lcom/android/settings/wifi/IwlanEnabler;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 117
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 119
    const/4 v3, 0x0

    .line 120
    .restart local v3       #str:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mDefaultPdgDomainName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/wifi/IwlanEnabler;->access$500(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 121
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$600(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 128
    .end local v3           #str:Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #setter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlandState:I
    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$102(Lcom/android/settings/wifi/IwlanEnabler;I)I

    goto/16 :goto_0

    .line 123
    .restart local v3       #str:Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mPdgDomainName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$400(Lcom/android/settings/wifi/IwlanEnabler;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 130
    .end local v3           #str:Ljava/lang/String;
    :cond_8
    const-string v4, "vpn.connectivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "connection_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 131
    const-string v4, "connection_state"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, state:Ljava/lang/String;
    if-eqz v2, :cond_9

    const-string v4, "CONNECTED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 133
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #setter for: Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z
    invoke-static {v4, v6}, Lcom/android/settings/wifi/IwlanEnabler;->access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z

    .line 134
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #getter for: Lcom/android/settings/wifi/IwlanEnabler;->mIwlanCheckBoxPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/wifi/IwlanEnabler;->access$300(Lcom/android/settings/wifi/IwlanEnabler;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 136
    :cond_9
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    #setter for: Lcom/android/settings/wifi/IwlanEnabler;->mIsVpnConnected:Z
    invoke-static {v4, v7}, Lcom/android/settings/wifi/IwlanEnabler;->access$702(Lcom/android/settings/wifi/IwlanEnabler;Z)Z

    goto/16 :goto_0

    .line 138
    .end local v2           #state:Ljava/lang/String;
    :cond_a
    const-string v4, "action.iwlan.connectivity"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    iget-object v4, p0, Lcom/android/settings/wifi/IwlanEnabler$1;->this$0:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v4, p2}, Lcom/android/settings/wifi/IwlanEnabler;->updataIwlanNetworks(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
