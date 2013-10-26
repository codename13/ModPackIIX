.class public Lcom/android/settings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private isSysScopeStatus:I

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsRegistered:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private sUnknown:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 147
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eri_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sid_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nid_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 136
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 137
    const-string v0, "000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    .line 138
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    .line 139
    const-string v0, "00000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    .line 140
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    .line 141
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    .line 142
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    .line 143
    const-string v0, "000000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    .line 177
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 233
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 246
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 333
    new-instance v0, Lcom/android/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$4;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    .line 370
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 918
    new-instance v0, Lcom/android/settings/deviceinfo/Status$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$5;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1195
    new-instance v0, Lcom/android/settings/deviceinfo/Status$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$6;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1084(Lcom/android/settings/deviceinfo/Status;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/deviceinfo/Status;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/Status;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->getOemData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$700()[B
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object v0
.end method

.method static synthetic access$702([B)[B
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-object p0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/Status;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/Status;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return p1
.end method

.method private changeSysScopeStatus()V
    .locals 2

    const-string v0, "sysscope_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0d010e

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private connectToRilService()V
    .locals 3

    .prologue
    .line 1188
    const-string v0, "Status"

    const-string v1, "connect To Secphone service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1190
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1192
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x3c

    .line 910
    rem-long v0, p1, v3

    long-to-int v0, v0

    .line 911
    div-long v1, p1, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 912
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "devID"

    .prologue
    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 962
    .local v0, len:I
    const/4 v1, 0x0

    .line 964
    .local v1, out:Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 965
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 969
    :cond_0
    :goto_0
    return-object v1

    .line 966
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 967
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    .line 979
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 982
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 990
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1014
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 984
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 987
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 993
    :pswitch_2
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 996
    :pswitch_3
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 999
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1002
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1005
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1008
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1011
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 982
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 991
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x8

    .line 1024
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1056
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1080
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 1029
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1032
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1035
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1038
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1041
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1044
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1047
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1050
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1053
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1059
    :pswitch_9
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1062
    :pswitch_a
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1065
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1068
    :pswitch_c
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1071
    :pswitch_d
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1074
    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1077
    :pswitch_f
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1057
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getOemData()V
    .locals 7

    .prologue
    .line 295
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 299
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 300
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 301
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 302
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 303
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 308
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 309
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 308
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 309
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 310
    :catch_2
    move-exception v2

    .line 311
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 308
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 309
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 312
    :goto_1
    throw v4

    .line 310
    :catch_3
    move-exception v2

    .line 311
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 317
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 318
    .local v0, req:Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 320
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v1, "Status"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 902
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 903
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 905
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 621
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 624
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 3

    .prologue
    .line 811
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 812
    const-string v1, "bt_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 814
    if-nez v0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 822
    :goto_0
    return-void

    .line 818
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 818
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 819
    :cond_2
    const v0, 0x7f0d043c

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setFipsStatus()V
    .locals 4

    .prologue
    const v3, 0x7f0d0423

    .line 826
    const-string v0, "fips_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 828
    const-string v0, "ro.fipsui"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 849
    :goto_0
    return-void

    .line 836
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/settings/fips/FipsStatus;->getFipsStatus()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const v0, 0x7f0d0839

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    .line 838
    :goto_1
    const-string v0, "rw.km_fips_status"

    const-string v2, "undefined"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ready"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0d0839

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 845
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0d0838

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 836
    :cond_1
    const v0, 0x7f0d083a

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 840
    :catch_0
    move-exception v0

    .line 841
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    .line 842
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 838
    :cond_2
    const v0, 0x7f0d083a

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 3

    .prologue
    .line 801
    const-string v2, "wifi_ip_address"

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 802
    .local v1, ipAddressPref:Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, ipAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 808
    :goto_0
    return-void

    .line 806
    :cond_0
    const v2, 0x7f0d043c

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .parameter "onOff"

    .prologue
    .line 269
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRssiNoti() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 274
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 275
    .local v3, fileSize:I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 276
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 277
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 278
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    if-eqz v1, :cond_0

    .line 284
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 291
    return-void

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 280
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    if-eqz v1, :cond_0

    .line 284
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 285
    :catch_2
    move-exception v2

    .line 286
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 283
    if-eqz v1, :cond_1

    .line 284
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 287
    :cond_1
    :goto_1
    throw v4

    .line 285
    :catch_3
    move-exception v2

    .line 286
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 633
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 641
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 645
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 648
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 853
    const-string v0, "sysscope_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 854
    const v1, 0x7f0d0110

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 855
    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/SysScope;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    .line 856
    return-void
.end method

.method private setWifiStatus()V
    .locals 3

    .prologue
    .line 791
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 792
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 794
    const-string v1, "wifi_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 795
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 796
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 798
    return-void

    .line 795
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 796
    :cond_1
    const v0, 0x7f0d043c

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 775
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 776
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 778
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 780
    .local v4, root:Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 781
    .local v3, ps:Landroid/preference/Preference;
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 788
    .end local v3           #ps:Landroid/preference/Preference;
    .end local v4           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 784
    .local v5, wimaxMacAddressPref:Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f0d043c

    invoke-virtual {p0, v7}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 786
    .local v1, macAddress:Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 663
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 664
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 681
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void

    .line 668
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 669
    goto :goto_0

    .line 671
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    goto :goto_0

    .line 674
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    goto :goto_0

    .line 677
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 652
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    const-string v2, "gsm.network.type"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, networkType:Ljava/lang/String;
    const-string v2, "[:]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 655
    .local v1, split:[Ljava/lang/String;
    const-string v2, "network_type"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .end local v0           #networkType:Ljava/lang/String;
    .end local v1           #split:[Ljava/lang/String;
    :goto_0
    return-void

    .line 658
    :cond_0
    const-string v2, "network_type"

    const-string v3, "gsm.network.type"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/deviceinfo/Status;->setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "serviceState"

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 686
    .local v1, state:I
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 702
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 706
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :goto_1
    const-string v2, "CTC"

    sget-object v3, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 713
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 714
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v3, "China Telecom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 715
    const-string v2, "operator_name"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x1040678

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    :goto_2
    return-void

    .line 691
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    goto :goto_0

    .line 695
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    goto :goto_0

    .line 698
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0d0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 708
    :cond_1
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :cond_2
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 723
    :cond_3
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 374
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 377
    new-instance v17, Lcom/android/settings/deviceinfo/Status$MyHandler;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 379
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 381
    const v17, 0x7f070020

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 382
    const-string v17, "battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 383
    const-string v17, "battery_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f0d0025

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 387
    const-string v17, "ro.csc.sales_code"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 391
    const-string v17, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 392
    const-string v17, "up_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 395
    sget-object v4, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_5

    aget-object v9, v4, v8

    .line 396
    .local v9, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 395
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 401
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #len$:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "CDMA"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 402
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 404
    const-string v17, "ril.eri_ver_1"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, ERI_SysProp:Ljava/lang/String;
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_a

    .line 406
    const-string v17, "eri_version"

    const/16 v18, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .end local v3           #ERI_SysProp:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 416
    .local v6, devId:Ljava/lang/String;
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz v6, :cond_c

    .line 418
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v11, meid:Ljava/lang/StringBuilder;
    const-string v17, "Dec:"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/deviceinfo/Status;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nHex:0x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v17, "meid_number"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v6           #devId:Ljava/lang/String;
    .end local v11           #meid:Ljava/lang/StringBuilder;
    :goto_2
    const-string v17, "min_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b0013

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 433
    const-string v17, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const v18, 0x7f0d042e

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    .line 435
    :cond_1
    const-string v17, "prl_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v17, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 440
    const-string v17, "icc_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v17, "USC"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_e

    .line 444
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0xe

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_3
    const-string v17, "CTC"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .line 461
    .local v5, cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v5, :cond_2

    .line 462
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v16

    .line 463
    .local v16, sid:I
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v12

    .line 464
    .local v12, nid:I
    const-string v18, "sid_number"

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v18, "nid_number"

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .end local v5           #cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v12           #nid:I
    .end local v16           #sid:I
    :cond_2
    :goto_6
    const-string v17, "SPR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->connectToRilService()V

    .line 502
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v13

    .line 503
    .local v13, rawNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 504
    .local v7, formattedNumber:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 505
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 506
    const-string v17, "\\+82"

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 507
    :cond_3
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 510
    :cond_4
    const-string v17, "number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v17, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v17, v0

    const/16 v18, 0xc8

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v17, v0

    const/16 v18, 0x12c

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 517
    .end local v7           #formattedNumber:Ljava/lang/String;
    .end local v13           #rawNumber:Ljava/lang/String;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 520
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 521
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setFipsStatus()V

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setSysScopeStatus()V

    .line 527
    const-string v17, "ril.serialnumber"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_17

    const-string v14, "ro.serialno"

    .line 528
    .local v14, serial:Ljava/lang/String;
    :goto_8
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 529
    .local v15, serialNum:Ljava/lang/String;
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "serial:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "serialNum:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_18

    .line 534
    const-string v17, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :goto_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 541
    const-string v17, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 542
    const-string v17, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 543
    const-string v17, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 544
    const-string v17, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 546
    const-string v17, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 547
    const-string v17, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 548
    const-string v17, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 549
    const-string v17, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 550
    const-string v17, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 552
    :cond_6
    const-string v17, "VZW"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "SPR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "USC"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 553
    :cond_7
    const-string v17, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 555
    :cond_8
    const-string v17, "DCM"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 556
    const-string v17, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 557
    const-string v17, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 558
    const-string v17, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 563
    :cond_9
    return-void

    .line 408
    .end local v14           #serial:Ljava/lang/String;
    .end local v15           #serialNum:Ljava/lang/String;
    .restart local v3       #ERI_SysProp:Ljava/lang/String;
    :cond_a
    const-string v17, "eri_version"

    const-string v18, "ERI : <unknown>"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    .end local v3           #ERI_SysProp:Ljava/lang/String;
    :cond_b
    const-string v17, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 425
    .restart local v6       #devId:Ljava/lang/String;
    :cond_c
    const-string v17, "meid_number"

    const-string v18, "Unknown"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 428
    .end local v6           #devId:Ljava/lang/String;
    :cond_d
    const-string v17, "meid_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 446
    :cond_e
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 449
    :cond_f
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 455
    :cond_10
    const-string v17, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 456
    const-string v17, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 464
    .restart local v5       #cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v12       #nid:I
    .restart local v16       #sid:I
    :cond_11
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 465
    :cond_12
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_5

    .line 469
    .end local v5           #cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v12           #nid:I
    .end local v16           #sid:I
    :cond_13
    const-string v17, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 470
    const-string v17, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 476
    :cond_14
    const-string v17, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 480
    :cond_15
    const-string v17, "LGT"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 481
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :goto_a
    const-string v18, "imei_sv"

    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v17, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 494
    const-string v17, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 495
    const-string v17, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 496
    const-string v17, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 497
    const-string v17, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 498
    const-string v17, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 499
    const-string v17, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 484
    :cond_16
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 527
    :cond_17
    const-string v14, "ril.serialnumber"

    goto/16 :goto_8

    .line 536
    .restart local v14       #serial:Ljava/lang/String;
    .restart local v15       #serialNum:Ljava/lang/String;
    :cond_18
    const-string v17, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 596
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->setRssiNoti(I)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 602
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 612
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 567
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->setRssiNoti(I)V

    .line 572
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 574
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    .line 575
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 576
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 578
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 583
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 584
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    .line 591
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 592
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 732
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 734
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/Status;->mImsRegistered:Z

    if-eqz v4, :cond_1

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrengthToZeroWhenIMSRegistered()V

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 741
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 743
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    const/4 v4, 0x3

    if-ne v4, v3, :cond_3

    .line 745
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 748
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 750
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_4

    const/4 v2, 0x0

    .line 752
    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 754
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_5

    const/4 v1, 0x0

    .line 756
    :cond_5
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0d0047

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0d0048

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSignalStrengthToZeroWhenIMSRegistered()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 766
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0047

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0d0048

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 772
    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 891
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 892
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 894
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 895
    const-wide/16 v2, 0x1

    .line 898
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 899
    return-void
.end method
