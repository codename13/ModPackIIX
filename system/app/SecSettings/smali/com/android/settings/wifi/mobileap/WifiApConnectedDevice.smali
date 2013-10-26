.class public Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
.super Landroid/preference/Preference;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final BUTTON_INVISIBLE:I

.field private final BUTTON_VISIBLE_MINUS:I

.field private final BUTTON_VISIBLE_PLUS:I

.field private mConnectedTime:Ljava/lang/Long;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mIsButtonState:I

.field private mIsContains:Z

.field private mIsPushShift:I

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "deviceName"
    .parameter "mac"
    .parameter "ip"
    .parameter "connectedTime"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 57
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_INVISIBLE:I

    .line 58
    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_PLUS:I

    .line 59
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->BUTTON_VISIBLE_MINUS:I

    .line 68
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 69
    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 74
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 84
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0xe10

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    .line 85
    const v0, 0x7f0400b2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setLayoutResource(I)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    return-object v0
.end method

.method private reloadWhiteList()V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 314
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 315
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 316
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    .line 318
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 320
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 10
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 215
    :goto_0
    return-void

    .line 203
    :pswitch_0
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 206
    .local v0, addDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    goto :goto_0

    .line 209
    .end local v0           #addDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    :pswitch_1
    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    iget-object v8, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    move-object v7, v3

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 212
    .local v4, removeDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    invoke-virtual {v4}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->show()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3
    .parameter "preference"

    .prologue
    .line 153
    instance-of v1, p1, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    if-nez v1, :cond_0

    .line 154
    const/4 v1, 0x1

    .line 157
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 156
    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .line 157
    .local v0, other:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 90
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v4

    .line 91
    .local v4, whiteList:Landroid/net/wifi/WifiApWhiteList;
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->isContains(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    .line 92
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    .line 94
    :cond_0
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 98
    const v5, 0x7f0a01e8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 99
    .local v2, devider:Landroid/widget/ImageView;
    const v5, 0x7f0a01e7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 101
    .local v0, btn:Landroid/widget/LinearLayout;
    const v5, 0x7f0a01e9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    .local v1, btnImg:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 105
    .local v3, wc:Landroid/net/wifi/WifiConfiguration;
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 106
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-nez v5, :cond_1

    .line 107
    iput v8, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 108
    const v5, 0x7f0201ad

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    :cond_1
    :goto_0
    const v5, 0x7f0a01e6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    new-instance v6, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void

    .line 124
    :cond_2
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    if-ne v5, v8, :cond_3

    .line 125
    iget-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsContains:Z

    if-eqz v5, :cond_1

    .line 126
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 127
    const v5, 0x7f0201ae

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    new-instance v5, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$2;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 138
    :cond_3
    iput v7, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    .line 139
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 17
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 265
    move-object/from16 v0, p1

    instance-of v11, v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    if-eqz v11, :cond_0

    .line 266
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "onClick"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p1

    .line 267
    check-cast v10, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .line 268
    .local v10, whitelsitDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 269
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v9

    .line 271
    .local v9, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v10}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getType()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 310
    .end local v9           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .end local v10           #whitelsitDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 273
    .restart local v9       #whiteList:Landroid/net/wifi/WifiApWhiteList;
    .restart local v10       #whitelsitDialog:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
    .restart local p1
    :pswitch_1
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "ADD_DEVICE_FROM_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p1

    .line 275
    check-cast v11, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v11}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, deviceName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11, v2}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->update(Ljava/lang/String;I)Z

    .line 279
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d027f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<font color=#59D0F3>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</font>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, msgAdd:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 284
    .local v7, toastAdd:Landroid/widget/Toast;
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 287
    .end local v2           #deviceName:Ljava/lang/String;
    .end local v4           #msgAdd:Ljava/lang/String;
    .end local v7           #toastAdd:Landroid/widget/Toast;
    .restart local p1
    :pswitch_2
    const-string v11, "WifiApConnectedDevice"

    const-string v12, "REMOVE_DEVICE_FROM_CONNECTED"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, removeDeviceName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/net/wifi/WifiApWhiteList;->removeWhiteList(Ljava/lang/String;)I

    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->reloadWhiteList()V

    .line 292
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0280

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<font color=#59D0F3>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</font>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, msgRemove:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 297
    .local v8, toastRemove:Landroid/widget/Toast;
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 299
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 300
    .local v3, msg:Landroid/os/Message;
    const/4 v11, 0x4

    iput v11, v3, Landroid/os/Message;->what:I

    .line 301
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v1, b:Landroid/os/Bundle;
    const-string v11, "mac"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    invoke-virtual {v11, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const v9, 0x7f0d02ab

    const/16 v5, 0xa

    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 219
    const-string v1, "WifiApConnectedDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---> onKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 221
    sparse-switch p2, :sswitch_data_0

    .line 257
    :cond_0
    :goto_0
    const/16 v1, 0x3b

    if-ne p2, v1, :cond_1

    .line 258
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    .line 260
    :cond_1
    return v8

    .line 223
    :sswitch_0
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mMac:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mConnectedTime:Ljava/lang/Long;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    .local v0, dialog:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;
    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;->show()V

    goto :goto_0

    .line 227
    .end local v0           #dialog:Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;
    :sswitch_1
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v4, :cond_0

    .line 228
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v7

    .line 229
    .local v7, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v7}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 230
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 233
    .local v6, toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 238
    .end local v6           #toast:Landroid/widget/Toast;
    .end local v7           #whiteList:Landroid/net/wifi/WifiApWhiteList;
    :sswitch_2
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 239
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 243
    :sswitch_3
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsPushShift:I

    if-nez v1, :cond_0

    .line 244
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIsButtonState:I

    if-ne v1, v4, :cond_0

    .line 245
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v7

    .line 246
    .restart local v7       #whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v7}, Landroid/net/wifi/WifiApWhiteList;->getSize()I

    move-result v1

    if-ge v1, v5, :cond_3

    .line 247
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->showDialog(I)V

    goto :goto_0

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 250
    .restart local v6       #toast:Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x51 -> :sswitch_1
    .end sparse-switch
.end method

.method update(Ljava/lang/String;I)Z
    .locals 1
    .parameter "info"
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 172
    if-eqz p1, :cond_2

    .line 173
    if-ne p2, v0, :cond_1

    .line 174
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mIp:Ljava/lang/String;

    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->notifyHierarchyChanged()V

    .line 181
    :goto_1
    return v0

    .line 175
    :cond_1
    if-nez p2, :cond_0

    .line 176
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;->mDeviceName:Ljava/lang/String;

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
