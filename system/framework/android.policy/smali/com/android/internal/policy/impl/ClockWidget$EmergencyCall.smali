.class Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmergencyCall"
.end annotation


# static fields
.field private static mEmergencyCallContext:Landroid/content/Context;


# instance fields
.field private mEmergencyCallText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1243
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1244
    sput-object p1, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallContext:Landroid/content/Context;

    .line 1245
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->setFocusableInTouchMode(Z)V

    .line 1246
    return-void
.end method

.method static isCardIOError()Z
    .locals 3

    .prologue
    .line 1360
    const-string v1, "ril.pin_mode"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1361
    .local v0, pinMode:Ljava/lang/String;
    const-string v1, "3"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    const/4 v1, 0x1

    .line 1364
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 1336
    .local v0, plmnValid:Z
    :goto_0
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isDisplayDualImsi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->getDualImsiString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1340
    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 1355
    .end local p1
    :cond_1
    :goto_1
    return-object p1

    .line 1335
    .end local v0           #plmnValid:Z
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1342
    .restart local v0       #plmnValid:Z
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1343
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1346
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1352
    :cond_4
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    move-object p1, p2

    .line 1353
    goto :goto_1

    .line 1355
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040391

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1250
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1252
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->updateText()V

    .line 1253
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1257
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1258
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1262
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 1263
    const v0, 0x10202b9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    .line 1264
    return-void
.end method

.method public updateText()V
    .locals 6

    .prologue
    const v5, 0x10403b3

    const v4, 0x104039f

    .line 1268
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->useCtcPlmnConcept()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1331
    :goto_0
    return-void

    .line 1273
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1274
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1275
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1277
    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->isCardIOError()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1278
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104014d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1281
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1282
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1285
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_6

    .line 1286
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1287
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1290
    :cond_4
    #calls: Lcom/android/internal/policy/impl/ClockWidget;->isEmergencyCallCapable()Z
    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1291
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1294
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1297
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_7

    .line 1298
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1301
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_8

    .line 1302
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1305
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_9

    .line 1306
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1309
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    .line 1310
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1312
    :cond_a
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_b

    .line 1313
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    const v3, 0x104014f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1316
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_e

    .line 1317
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isNoServiceDisplayWhenNoSIM()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1318
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$1700()Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1321
    :cond_c
    #calls: Lcom/android/internal/policy/impl/ClockWidget;->isEmergencyCallCapable()Z
    invoke-static {}, Lcom/android/internal/policy/impl/ClockWidget;->access$2200()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1322
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1325
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1329
    :cond_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$EmergencyCall;->mEmergencyCallText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
