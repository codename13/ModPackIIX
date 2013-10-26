.class public Lcom/android/internal/policy/impl/SamsungLockScreenProperties;
.super Ljava/lang/Object;
.source "SamsungLockScreenProperties.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mChecked:Z

.field private static mDivideMissedEventChecked:Z

.field private static mIsPLMNEnabledByCSC:Z

.field private static mIsSIMToastEnabled:Z

.field private static mIsSinaDaemonEnable:Z

.field private static mIsSinaDaemonEnableChecked:Z

.field private static mIsTablet:Z

.field private static mPINPUKRequest:Z

.field private static mPINPUKSlot:I

.field private static mSecureLockOnlyAfterTimerExpires:Z

.field private static mSecureLockOnlyAfterTimerExpiresChecked:Z

.field private static mShouldbeDisplaySalesCode:Z

.field private static mSwipeLockBeforeTimeout:Z

.field private static mSwipeLockBeforeTimeoutChecked:Z

.field private static mUseCtcPlmnConcept:Z

.field private static mUseCtcPlmnConceptChecked:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFail:Z

.field private static mWipeOutIntExtMemoryDueToUnlockFailChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 36
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 37
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    .line 38
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    .line 39
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    .line 41
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 42
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 44
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    .line 45
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    .line 46
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 49
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    .line 53
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    .line 54
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 56
    const-string v0, "SamsungLockScreenProperties"

    sput-object v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    .line 58
    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    .line 62
    sput v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_LockScreen_DisplayPlmn"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    .line 66
    return-void
.end method

.method public static SimRefreshCheck(Landroid/content/Context;)Z
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_MANAGE_DONE"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_REFRESH"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v0, i:Landroid/content/Intent;
    const-string v5, "Booting"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const-string v5, "settings.SIM_CARD_NETWORK"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "SIM_REFRESH"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    const-string v5, "gsm.ruim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, mCDMAstate:Ljava/lang/String;
    const-string v5, "gsm.sim.state"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, mGSMstate:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current network : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v5, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM state mCDMAstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mGSMstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 337
    const-string v5, "READY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current network : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    .restart local v0       #i:Landroid/content/Intent;
    const-string v4, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v4, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "CURRENT_NETWORK"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 348
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 355
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mCDMAstate:Ljava/lang/String;
    .end local v2           #mGSMstate:Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 339
    .restart local v0       #i:Landroid/content/Intent;
    .restart local v1       #mCDMAstate:Ljava/lang/String;
    .restart local v2       #mGSMstate:Ljava/lang/String;
    :cond_2
    const-string v4, "READY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "CURRENT_NETWORK"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 354
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mCDMAstate:Ljava/lang/String;
    .end local v2           #mGSMstate:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v5, "SimRefreshCheck() return false"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 355
    goto :goto_1
.end method

.method public static enhancedLockScreen()Z
    .locals 1

    .prologue
    .line 651
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->has2GbMemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    const/4 v0, 0x1

    .line 654
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static freezeforPermBlockedSim()Z
    .locals 2

    .prologue
    .line 211
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    :cond_0
    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDpi(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 634
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 635
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 636
    .local v1, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 637
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v2
.end method

.method public static getDualImsiString(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v11, 0x5

    const/4 v7, 0x0

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, rilIMSI:Ljava/lang/String;
    new-array v3, v13, [Ljava/lang/String;

    .line 167
    .local v3, sponIMSI:[Ljava/lang/String;
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 168
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSponImsi()[Ljava/lang/String;

    move-result-object v3

    .line 173
    :cond_0
    const-string v9, "ril.simtype"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, simType:Ljava/lang/String;
    const-string v4, "[]"

    .line 176
    .local v4, srtingIMSI:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 177
    const-string v1, ""

    .line 180
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2

    move v0, v7

    .line 181
    .local v0, isAirplaneModeOn:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 182
    const-string v4, ""

    .line 183
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v8, "getDualImsiString(), isAirplaneModeOn is true, return"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 207
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .local v5, srtingIMSI:Ljava/lang/String;
    :goto_1
    return-object v5

    .end local v0           #isAirplaneModeOn:Z
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_2
    move v0, v8

    .line 180
    goto :goto_0

    .line 187
    .restart local v0       #isAirplaneModeOn:Z
    :cond_3
    const-string v9, "3"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 188
    const-string v4, ""

    .line 189
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDualImsiString(), SIM Type is not 3, simType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", srtingIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 190
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .restart local v5       #srtingIMSI:Ljava/lang/String;
    goto :goto_1

    .line 193
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 194
    invoke-virtual {v1, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "450"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 195
    const-string v4, "[H]"

    .line 206
    :cond_5
    :goto_2
    sget-object v7, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDualImsiString(), srtingIMSI = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 207
    .end local v4           #srtingIMSI:Ljava/lang/String;
    .restart local v5       #srtingIMSI:Ljava/lang/String;
    goto :goto_1

    .line 196
    .end local v5           #srtingIMSI:Ljava/lang/String;
    .restart local v4       #srtingIMSI:Ljava/lang/String;
    :cond_6
    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v3, v7

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 197
    const-string v4, "[S1]"

    goto :goto_2

    .line 198
    :cond_7
    aget-object v9, v3, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aget-object v8, v3, v8

    invoke-virtual {v8, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 199
    const-string v4, "[S2]"

    goto :goto_2

    .line 200
    :cond_8
    aget-object v8, v3, v12

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v3, v12

    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 201
    const-string v4, "[S3]"

    goto :goto_2

    .line 203
    :cond_9
    const-string v4, "[]"

    goto :goto_2
.end method

.method public static getPINPUKRequest()Z
    .locals 3

    .prologue
    .line 372
    const-string v2, "gsm.ruim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, mCDMAstate:Ljava/lang/String;
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, mGSMstate:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    if-eqz v2, :cond_0

    .line 386
    const/4 v2, 0x1

    .line 388
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPINPUKSlot()I
    .locals 5

    .prologue
    .line 394
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, mCDMAtype:Ljava/lang/String;
    const-string v2, "ril.ICC2_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, mGSMtype:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPINPUKSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    return v2
.end method

.method public static getalternatePackageForMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleSimCardManagement(Landroid/content/Context;)V
    .locals 13
    .parameter "mContext"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SIM_MANAGE_DONE"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 420
    .local v5, mSIMManage:I
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSIMManage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v6, "gsm.ruim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, mCDMAstate:Ljava/lang/String;
    const-string v6, "gsm.sim.state"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, mGSMstate:Ljava/lang/String;
    if-ne v5, v11, :cond_1

    .line 426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v0, currentChangei:Landroid/content/Intent;
    const-string v6, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 429
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    const-string v6, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    :cond_0
    :goto_0
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CURRENT_NETWORK : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "CURRENT_NETWORK"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v0           #currentChangei:Landroid/content/Intent;
    :cond_1
    if-eq v5, v11, :cond_2

    if-eqz v2, :cond_2

    if-nez v4, :cond_4

    .line 499
    :cond_2
    :goto_1
    return-void

    .line 432
    .restart local v0       #currentChangei:Landroid/content/Intent;
    :cond_3
    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 433
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    const-string v6, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 442
    .end local v0           #currentChangei:Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 443
    .local v3, mCurrent:I
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCDMAstate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mGSMstate : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_5

    .line 449
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v7, "AIRPLANE_MODE_ON******************"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 453
    :cond_5
    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 456
    :cond_6
    if-ne v3, v10, :cond_7

    .line 457
    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 458
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    :cond_7
    :goto_2
    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    :cond_8
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 473
    .local v1, i:Landroid/content/Intent;
    const-string v6, "ACTION_CURRENT_NETWORK"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v6, "state"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "CURRENT_NETWORK"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 476
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 478
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "SIM_MANAGE_DONE"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "DSNETWORK"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 481
    sget-object v6, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DSNETWORK: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "DSNETWORK"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 459
    .end local v1           #i:Landroid/content/Intent;
    :cond_a
    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 465
    :cond_b
    if-eq v3, v10, :cond_8

    .line 466
    if-nez v3, :cond_c

    const-string v6, "READY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 468
    :cond_c
    if-ne v3, v11, :cond_8

    const-string v6, "READY"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "CURRENT_NETWORK"

    invoke-static {v6, v7, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method

.method public static has2GbMemory()Z
    .locals 7

    .prologue
    .line 643
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 644
    .local v2, reader:Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 645
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    div-long v0, v3, v5

    .line 647
    .local v0, TOTAL_DEVICE_MEMORY:J
    const-wide/16 v3, 0x400

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAUSFeature()Z
    .locals 2

    .prologue
    .line 685
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VAU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OPP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "XSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    :cond_0
    const/4 v1, 0x1

    .line 698
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCTCFeature()Z
    .locals 2

    .prologue
    .line 625
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    const/4 v1, 0x1

    .line 629
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCUFeature()Z
    .locals 2

    .prologue
    .line 702
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    const/4 v1, 0x1

    .line 706
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCaMobile()Z
    .locals 2

    .prologue
    .line 219
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v1, 0x1

    .line 224
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCanadaFeature()Z
    .locals 2

    .prologue
    .line 544
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "YVL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 550
    :cond_0
    const/4 v1, 0x1

    .line 552
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isChinaFeature()Z
    .locals 2

    .prologue
    .line 526
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    :cond_0
    const/4 v1, 0x1

    .line 530
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDataNetworkModeEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 663
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, SalesCode:Ljava/lang/String;
    const-string v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, product_model:Ljava/lang/String;
    const-string v3, "SKT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 667
    const-string v3, ""

    const-string v4, "SHV_E170S"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 673
    :cond_0
    :goto_0
    return v2

    .line 670
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDirectCallToEcc()Z
    .locals 2

    .prologue
    .line 569
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const/4 v1, 0x1

    .line 574
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDisplayDualImsi(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 154
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, SalesCode:Ljava/lang/String;
    const-string v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 157
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/4 v2, 0x1

    .line 161
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDisplayUsimWidget()Z
    .locals 2

    .prologue
    .line 138
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDivideMissedEventEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, SalesCode:Ljava/lang/String;
    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, CountryCode:Ljava/lang/String;
    const-string v2, "Germany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DBT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    :cond_0
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 308
    :cond_1
    const-string v2, "SKT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "KTT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LGT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    :cond_2
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 312
    :cond_3
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 313
    sput-boolean v3, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    .line 315
    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mDivideMissedEventChecked:Z

    return v2
.end method

.method public static isDualClockSecurityLock()Z
    .locals 2

    .prologue
    .line 146
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x1

    .line 150
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDualDevice()Z
    .locals 1

    .prologue
    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualSlotDevice()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public static isIgnoreNationalRoaming()Z
    .locals 2

    .prologue
    .line 711
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, salesCode:Ljava/lang/String;
    const-string v1, "XEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PRT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
    :cond_0
    const/4 v1, 0x1

    .line 716
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKoreaFeature()Z
    .locals 2

    .prologue
    .line 228
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ANY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    const/4 v1, 0x1

    .line 232
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKweatherEnable()Z
    .locals 4

    .prologue
    .line 289
    const-string v0, "kweather"

    .line 290
    .local v0, DAEMON_KWEATHER:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_LiveWallpaper_WeatherWallCPName"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, mCPName:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isKoreaFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "kweather"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    const/4 v2, 0x1

    .line 296
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNoServiceDisplayWhenNoSIM()Z
    .locals 1

    .prologue
    .line 678
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    const/4 v0, 0x1

    .line 681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPLMNEnable()Z
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isShouldbeDisplayForSalesCode()Z

    move-result v0

    return v0
.end method

.method public static isSIMToastEnabled()Z
    .locals 2

    .prologue
    .line 578
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    .line 583
    :cond_0
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSIMToastEnabled:Z

    return v1
.end method

.method private static isShouldbeDisplayForSalesCode()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 94
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    if-nez v1, :cond_2

    .line 95
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, SalesCode:Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsPLMNEnabledByCSC:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->isAUSFeature()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HBM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EPL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RWC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CLN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "KDO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BWA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SOL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GLW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    .line 132
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mChecked:Z

    .line 134
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mShouldbeDisplaySalesCode:Z

    return v1
.end method

.method public static isSinaEnable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 273
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    if-nez v1, :cond_2

    .line 274
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    .line 283
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnableChecked:Z

    .line 285
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsSinaDaemonEnable:Z

    return v1
.end method

.method public static isSprintDevice()Z
    .locals 2

    .prologue
    .line 595
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    const/4 v1, 0x1

    .line 599
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTMODevice()Z
    .locals 2

    .prologue
    .line 518
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    const/4 v1, 0x1

    .line 522
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTabletDevice()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 503
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 504
    .local v1, wm:Landroid/view/IWindowManager;
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :goto_0
    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    return v2

    .line 507
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    const-string v3, "Failing check whether status bar can hide"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    sput-boolean v4, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mIsTablet:Z

    goto :goto_0
.end method

.method public static isUSAFeature()Z
    .locals 2

    .prologue
    .line 534
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TMB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MTR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "USC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    :cond_0
    const/4 v1, 0x1

    .line 539
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVZWDevice()Z
    .locals 2

    .prologue
    .line 587
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const/4 v1, 0x1

    .line 591
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVirginMobileDevice()Z
    .locals 2

    .prologue
    .line 603
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "VMU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 605
    const/4 v1, 0x1

    .line 607
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWIFIOnly()Z
    .locals 1

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public static lockOnlyAfterTimerExpires()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 235
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    if-nez v1, :cond_1

    .line 236
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    .line 242
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpiresChecked:Z

    .line 244
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSecureLockOnlyAfterTimerExpires:Z

    return v1
.end method

.method public static setPINPUKRequest(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 361
    sput-boolean p0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    .line 362
    sget-object v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKRequest : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKRequest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method public static setPINPUKSlot(I)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 366
    sget-object v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPINPUKSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    sput p0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mPINPUKSlot:I

    .line 368
    return-void
.end method

.method public static swipeLockBeforeTimeout()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 556
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    if-nez v1, :cond_1

    .line 557
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    .line 563
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeoutChecked:Z

    .line 565
    :cond_1
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mSwipeLockBeforeTimeout:Z

    return v1
.end method

.method public static useCtcPlmnConcept()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    sget-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    if-nez v0, :cond_1

    .line 262
    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    .line 265
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConceptChecked:Z

    .line 268
    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mUseCtcPlmnConcept:Z

    return v0
.end method

.method public static wipeInternalExternalSd()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 248
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    if-nez v1, :cond_2

    .line 249
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, SalesCode:Ljava/lang/String;
    const-string v1, "ATT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DCM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    :cond_0
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    .line 255
    :cond_1
    sput-boolean v2, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFailChecked:Z

    .line 257
    :cond_2
    sget-boolean v1, Lcom/android/internal/policy/impl/SamsungLockScreenProperties;->mWipeOutIntExtMemoryDueToUnlockFail:Z

    return v1
.end method
