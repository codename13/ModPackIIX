.class Lcom/android/settings/nearby/NearbySettings$9;
.super Landroid/content/BroadcastReceiver;
.source "NearbySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 31
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 895
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 896
    .local v3, action:Ljava/lang/String;
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: BroadcastReceiver onReceive(): "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string v27, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string v27, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 900
    :cond_0
    const-string v27, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 901
    .local v5, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v18

    .line 903
    .local v18, netInfo:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    const-string v28, "wifip2p"

    #calls: Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static/range {v27 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1200(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 904
    .local v26, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    const/16 v27, 0xd

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v19

    .line 906
    .local v19, netInfoP2p:Landroid/net/NetworkInfo;
    if-eqz v26, :cond_1

    if-eqz v18, :cond_1

    .line 908
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: intent: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " state: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v28

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V
    invoke-static/range {v27 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1300(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/Preference;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v27

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/ProgressDialog;->cancel()V

    .line 1111
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v18           #netInfo:Landroid/net/NetworkInfo;
    .end local v19           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v26           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_1
    :goto_0
    return-void

    .line 923
    .restart local v3       #action:Ljava/lang/String;
    .restart local v5       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v18       #netInfo:Landroid/net/NetworkInfo;
    .restart local v19       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v26       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_2
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: STATE WIFI:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", P2P:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v19 .. v19}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1102
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v18           #netInfo:Landroid/net/NetworkInfo;
    .end local v19           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v26           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_0
    move-exception v9

    .line 1104
    .local v9, e:Landroid/content/res/Resources$NotFoundException;
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: NotFoundException on broadcast receiver: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 927
    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #action:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v27, "com.android.settings.allshare.REFRESH"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #calls: Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$200(Lcom/android/settings/nearby/NearbySettings;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1106
    .end local v3           #action:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1108
    .local v10, e1:Ljava/lang/Exception;
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: Exception on broadcast receiver: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 931
    .end local v10           #e1:Ljava/lang/Exception;
    .restart local v3       #action:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v27, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    const-string v28, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 933
    :cond_5
    const-string v27, "AllshareSetting"

    const-string v28, "AllshareSetting: media mount changed"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 938
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v27

    if-nez v27, :cond_7

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/DownloadListPreference;->getValue()Ljava/lang/String;

    move-result-object v27

    const-string v28, "1"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v27

    const-string v28, "0"

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v28, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v28 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v28

    const-string v29, "0"

    invoke-virtual/range {v27 .. v29}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 946
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 956
    :catch_2
    move-exception v9

    .line 958
    .local v9, e:Ljava/lang/Exception;
    :try_start_4
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: refreshPreferenceValues() Storages :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 950
    .end local v9           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 962
    :cond_8
    :try_start_6
    const-string v27, "com.android.settings.allshare.UPDATE_LIST"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 964
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: com.android.settings.allshare.UPDATE_LIST "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ACCEPTLIST"

    const/16 v30, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const-string v27, "ACCEPTLIST"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 966
    .local v14, isAcceptList:Z
    const-string v27, "INDEX"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v13

    .line 970
    .local v13, index:[I
    if-eqz v14, :cond_9

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v23

    .line 979
    .local v23, preference:Landroid/preference/MultiSelectListPreference;
    :goto_1
    invoke-virtual/range {v23 .. v23}, Landroid/preference/MultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 980
    .local v11, entry:[Ljava/lang/CharSequence;
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 981
    .local v20, newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    array-length v0, v13

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_a

    .line 983
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: Index: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    aget v29, v13, v12

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    aget v29, v13, v12

    aget-object v29, v11, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    aget v27, v13, v12

    aget-object v27, v11, v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 976
    .end local v11           #entry:[Ljava/lang/CharSequence;
    .end local v12           #i:I
    .end local v20           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1700(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v23

    .restart local v23       #preference:Landroid/preference/MultiSelectListPreference;
    goto :goto_1

    .line 986
    .restart local v11       #entry:[Ljava/lang/CharSequence;
    .restart local v12       #i:I
    .restart local v20       #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 988
    .end local v11           #entry:[Ljava/lang/CharSequence;
    .end local v12           #i:I
    .end local v13           #index:[I
    .end local v14           #isAcceptList:Z
    .end local v20           #newValue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #preference:Landroid/preference/MultiSelectListPreference;
    :cond_b
    const-string v27, "com.android.settings.allshare.SERVER_STATE_CHANGE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 990
    const-string v27, "AllshareSetting"

    const-string v28, "AllshareSetting: com.android.settings.allshare.SERVER_STATE_CHANGE"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v27, "START"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 994
    .local v15, isServerStarted:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1800(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v27

    move/from16 v0, v27

    if-ne v0, v15, :cond_c

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1000
    :cond_c
    const-string v27, "AllshareSetting"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "AllshareSetting: INVALID FUNCTION STATE: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z
    invoke-static {v0, v15}, Lcom/android/settings/nearby/NearbySettings;->access$1802(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1007
    .end local v15           #isServerStarted:Z
    :cond_d
    const-string v27, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 1009
    const-string v27, "AllshareSetting"

    const-string v28, "AllshareSetting: REFRESH_DEVICE_LIST"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v27, "LIST"

    const/16 v28, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1012
    .local v4, bIsAcceptedList:Z
    if-eqz v4, :cond_e

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/AcceptListPreference;->updateDialog()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    .line 1018
    .local v8, dialog:Landroid/app/AlertDialog;
    if-eqz v8, :cond_1

    .line 1020
    const/16 v27, -0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v22

    .line 1021
    .local v22, positiveButton:Landroid/widget/Button;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1023
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v17

    .line 1025
    .local v17, listView:Landroid/widget/ListView;
    if-eqz v17, :cond_1

    .line 1027
    new-instance v16, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1028
    .local v16, listItemListener:Lcom/android/settings/nearby/ListItemListener;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1030
    new-instance v7, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v7, v0, v8, v1, v2}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1031
    .local v7, deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1038
    .end local v7           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v16           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v17           #listView:Landroid/widget/ListView;
    .end local v22           #positiveButton:Landroid/widget/Button;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1700(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/RejectListPreference;->updateDialog()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1700(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v8

    check-cast v8, Landroid/app/AlertDialog;

    .line 1042
    .restart local v8       #dialog:Landroid/app/AlertDialog;
    if-eqz v8, :cond_1

    .line 1044
    const/16 v27, -0x1

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v22

    .line 1045
    .restart local v22       #positiveButton:Landroid/widget/Button;
    const/16 v27, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1047
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v17

    .line 1049
    .restart local v17       #listView:Landroid/widget/ListView;
    if-eqz v17, :cond_1

    .line 1051
    new-instance v16, Lcom/android/settings/nearby/ListItemListener;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1052
    .restart local v16       #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1054
    new-instance v7, Lcom/android/settings/nearby/DeleteButtonListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v7, v0, v8, v1, v2}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1055
    .restart local v7       #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1063
    .end local v4           #bIsAcceptedList:Z
    .end local v7           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v16           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v17           #listView:Landroid/widget/ListView;
    .end local v22           #positiveButton:Landroid/widget/Button;
    :cond_f
    const-string v27, "com.android.settings.allshare.SERVER_DB_UPDATE"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bDBUpdated:Z
    invoke-static/range {v27 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1902(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1067
    const-string v27, "AUTO_START"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$1000(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 1071
    const-string v27, "AllshareSetting"

    const-string v28, "AllshareSetting: Auto start DMS!!"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v27

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v27

    const-string v28, "pref_allshare"

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 1075
    .local v24, sharedPreference:Landroid/content/SharedPreferences;
    const-string v27, "allshare_welcome_popup"

    const/16 v28, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1077
    .local v25, welcomePopup:Z
    if-nez v25, :cond_10

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #calls: Lcom/android/settings/nearby/NearbySettings;->requestWelcomePopup()V
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$2000(Lcom/android/settings/nearby/NearbySettings;)V

    .line 1080
    .end local v24           #sharedPreference:Landroid/content/SharedPreferences;
    .end local v25           #welcomePopup:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->dialogTime:J
    invoke-static/range {v27 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$2102(Lcom/android/settings/nearby/NearbySettings;J)J

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v27 .. v28}, Lcom/android/settings/nearby/NearbySettings;->access$1002(Lcom/android/settings/nearby/NearbySettings;Z)Z

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "AutoDMS"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z
    invoke-static/range {v29 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$1000(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v29, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->dialogTime:J
    invoke-static/range {v29 .. v29}, Lcom/android/settings/nearby/NearbySettings;->access$2100(Lcom/android/settings/nearby/NearbySettings;)J

    move-result-wide v29

    sub-long v27, v27, v29

    const-wide/16 v29, 0x3e8

    cmp-long v27, v27, v29

    if-gez v27, :cond_11

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$2200(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0xbba

    const-wide/16 v29, 0x3e8

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1087
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$2200(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0xbba

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1091
    :cond_12
    const-string v27, "com.android.settings.allshare.ACTIVITY_START"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1094
    .local v6, currentFlag:I
    const-string v27, "FLAG"

    const/16 v28, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 1096
    .local v21, otherFlag:I
    move/from16 v0, v21

    if-eq v6, v0, :cond_1

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings$9;->this$0:Lcom/android/settings/nearby/NearbySettings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    invoke-static/range {v27 .. v27}, Lcom/android/settings/nearby/NearbySettings;->access$2200(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;

    move-result-object v27

    const/16 v28, 0xbbb

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method
