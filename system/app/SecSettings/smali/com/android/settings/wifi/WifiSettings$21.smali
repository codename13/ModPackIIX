.class Lcom/android/settings/wifi/WifiSettings$21;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 3219
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 3221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->tm:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiSettings;->access$3500(Lcom/android/settings/wifi/WifiSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    .line 3222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    if-eqz v3, :cond_0

    .line 3223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    instance-of v3, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v3, :cond_3

    .line 3224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/gsm/GsmCellLocation;

    .line 3225
    .local v24, loc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v23

    .line 3226
    .local v23, lac:I
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v17

    .line 3227
    .local v17, cid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->CID:Ljava/lang/String;

    .line 3240
    .end local v17           #cid:I
    .end local v23           #lac:I
    .end local v24           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3600(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mlocationManager:Landroid/location/LocationManager;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiSettings;->access$3700(Lcom/android/settings/wifi/WifiSettings;)Landroid/location/LocationManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiSettings;->access$3600(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->loc:Landroid/location/Location;

    .line 3243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->loc:Landroid/location/Location;

    if-eqz v3, :cond_1

    .line 3244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->loc:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/settings/wifi/WifiSettings;->longtitude:D

    .line 3245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->loc:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/settings/wifi/WifiSettings;->latitude:D

    .line 3248
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->isNetworkAvailable()Z
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3800(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v3, Lcom/android/settings/wifi/WifiSettings;->latitude:D

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v3, Lcom/android/settings/wifi/WifiSettings;->longtitude:D

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_5

    .line 3249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v5, Lcom/android/settings/wifi/WifiSettings;->latitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->LATITUDE:Ljava/lang/String;

    .line 3250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v5, Lcom/android/settings/wifi/WifiSettings;->longtitude:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->LONGITUDE:Ljava/lang/String;

    .line 3254
    new-instance v2, Landroid/location/Geocoder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 3255
    .local v2, geoCoder:Landroid/location/Geocoder;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3337
    .end local v2           #geoCoder:Landroid/location/Geocoder;
    :cond_2
    :goto_1
    return-void

    .line 3229
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    instance-of v3, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v3, :cond_0

    .line 3230
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v3, Lcom/android/settings/wifi/WifiSettings;->cellLocation:Landroid/telephony/CellLocation;

    move-object/from16 v24, v0

    check-cast v24, Landroid/telephony/cdma/CdmaCellLocation;

    .line 3231
    .local v24, loc:Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v13

    .line 3232
    .local v13, bid:I
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v28

    .line 3233
    .local v28, sid:I
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v25

    .line 3236
    .local v25, nid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->CID:Ljava/lang/String;

    goto/16 :goto_0

    .line 3259
    .end local v13           #bid:I
    .end local v24           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v25           #nid:I
    .end local v28           #sid:I
    .restart local v2       #geoCoder:Landroid/location/Geocoder;
    :cond_4
    const-wide/16 v5, 0x1388

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 3260
    const-string v3, "WifiSettings"

    const-string v5, "Insert Thread is sleeping"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3262
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v3, v3, Lcom/android/settings/wifi/WifiSettings;->latitude:D

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-wide v5, v5, Lcom/android/settings/wifi/WifiSettings;->longtitude:D

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v12

    .line 3263
    .local v12, addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 3264
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3265
    .local v14, builder:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 3267
    .local v11, address:Landroid/location/Address;
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #address:Landroid/location/Address;
    check-cast v11, Landroid/location/Address;

    .line 3268
    .restart local v11       #address:Landroid/location/Address;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->ADDRESS:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3282
    .end local v2           #geoCoder:Landroid/location/Geocoder;
    .end local v11           #address:Landroid/location/Address;
    .end local v12           #addresses:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v14           #builder:Ljava/lang/StringBuilder;
    :cond_5
    :goto_2
    const-string v3, "WifiSettings"

    const-string v5, "Insert Thread started"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3900(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3900(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3900(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3900(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    .line 3286
    .local v10, SSID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$3900(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    .line 3288
    .local v9, BSSID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSettings;->access$2000(Lcom/android/settings/wifi/WifiSettings;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 3289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    .line 3291
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    if-eqz v3, :cond_2

    .line 3293
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 3294
    .local v22, initialValues:Landroid/content/ContentValues;
    const-string v3, "ssid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    const-string v3, "bssid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    const-string v3, "cellid"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->CID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    const-string v3, "latitude"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->LATITUDE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    const-string v3, "longtitude"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->LONGITUDE:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->ADDRESS:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 3300
    const-string v3, "address"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v5, v5, Lcom/android/settings/wifi/WifiSettings;->ADDRESS:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    :cond_7
    const-string v3, "provider"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->PROVIDER:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/wifi/WifiSettings;->access$3600(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 3306
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_a

    .line 3307
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3308
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_9

    .line 3309
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3310
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 3311
    .local v26, row:J
    sget-object v3, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 3312
    .local v4, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 3314
    .local v19, i:I
    goto/16 :goto_1

    .line 3273
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #BSSID:Ljava/lang/String;
    .end local v10           #SSID:Ljava/lang/String;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v19           #i:I
    .end local v22           #initialValues:Landroid/content/ContentValues;
    .end local v26           #row:J
    .restart local v2       #geoCoder:Landroid/location/Geocoder;
    :catch_0
    move-exception v18

    .line 3274
    .local v18, e:Ljava/io/IOException;
    :try_start_2
    const-string v3, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 3277
    .end local v18           #e:Ljava/io/IOException;
    :catch_1
    move-exception v18

    .line 3279
    .local v18, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 3316
    .end local v2           #geoCoder:Landroid/location/Geocoder;
    .end local v18           #e:Ljava/lang/InterruptedException;
    .restart local v9       #BSSID:Ljava/lang/String;
    .restart local v10       #SSID:Ljava/lang/String;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v22       #initialValues:Landroid/content/ContentValues;
    :cond_8
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .line 3318
    :cond_9
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3321
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/settings/WifiDatabaseProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 3322
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 3323
    .local v20, id:J
    const-string v3, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Row inserted at index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings$21;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiSettings;->cr:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 3326
    .local v16, c3:Landroid/database/Cursor;
    if-eqz v16, :cond_2

    .line 3327
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3328
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_b

    .line 3330
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 3332
    :cond_b
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method
