.class Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;
.super Landroid/os/Handler;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SheduleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimerService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiTimerService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 98
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 99
    .local v1, arguments:Landroid/os/Bundle;
    const-string v2, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, actionType:I
    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 v2, 0x1389

    if-ne v0, v2, :cond_2

    .line 102
    const-string v2, "WifiTimer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnableAlarm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "wifitimer_enabled"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "wifitimer_enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_0

    .line 109
    :cond_2
    const/16 v2, 0x138c

    if-ne v0, v2, :cond_4

    .line 110
    const-string v2, "wifisheduler_alarm_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_3

    .line 111
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #calls: Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiTimerService;->access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v2, "wifisheduler_alarm_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    #calls: Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiTimerService;->access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 115
    :cond_4
    const/16 v2, 0x138b

    if-ne v0, v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "wifitimer_enabled"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    #calls: Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V
    invoke-static {v2}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_0
.end method
