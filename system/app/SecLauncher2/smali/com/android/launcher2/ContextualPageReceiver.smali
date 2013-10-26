.class public Lcom/android/launcher2/ContextualPageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContextualPageReceiver.java"


# static fields
.field private static final ACTION_CONTEXTUALPAGE_CHANGE:Ljava/lang/String; = "android.settings.CONTEXTUALPAGE_CHANGED"

.field private static final ACTION_SPEN_EVENT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final CARCRADLE_MASK:I = 0x4

.field private static final DESKCRADLE_MASK:I = 0x8

.field private static final EARPHONE_MASK:I = 0x2

.field private static final SPEN_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContextualPageReceiver"

.field private static cpBitFlag:I

.field private static mCPMgr:Lcom/android/launcher2/ContextualPageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    .line 53
    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/ContextualPageReceiver;
    .locals 3
    .parameter "context"
    .parameter "cpMgr"

    .prologue
    .line 63
    new-instance v0, Lcom/android/launcher2/ContextualPageReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ContextualPageReceiver;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, cpReceiver:Lcom/android/launcher2/ContextualPageReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string v2, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    sput-object p1, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    .line 74
    invoke-virtual {v0}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    .line 76
    return-object v0
.end method


# virtual methods
.method public checkAllContextualPage()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 190
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 191
    .local v3, isCpEnable:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_s_pen"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 192
    .local v4, s_pen_state:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_earphone"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 193
    .local v2, earphone_state:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_car_cradle"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 194
    .local v0, car_cardle_state:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "contextual_page_desk_cardle"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 196
    .local v1, desk_cradle_state:I
    if-nez v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_2

    .line 199
    if-ne v4, v7, :cond_5

    .line 200
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 204
    :cond_2
    :goto_1
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v5, v5, 0x2

    if-ne v5, v9, :cond_3

    .line 205
    if-ne v2, v7, :cond_6

    .line 206
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v9}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 210
    :cond_3
    :goto_2
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v5, v5, 0x4

    if-ne v5, v10, :cond_4

    .line 211
    if-ne v0, v7, :cond_7

    .line 212
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 216
    :cond_4
    :goto_3
    sget v5, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 217
    if-ne v1, v7, :cond_8

    .line 218
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    goto :goto_0

    .line 202
    :cond_5
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v7}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_1

    .line 208
    :cond_6
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v9}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_2

    .line 214
    :cond_7
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v11}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_3

    .line 220
    :cond_8
    sget-object v5, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    goto :goto_0
.end method

.method public getContextualPageManager()Lcom/android/launcher2/ContextualPageManager;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "contextual_page"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 92
    .local v6, isCpEnable:I
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "contextual_page_s_pen"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 93
    .local v8, s_pen_state:I
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "contextual_page_earphone"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 94
    .local v5, earphone_state:I
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "contextual_page_car_cradle"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 95
    .local v3, car_cardle_state:I
    iget-object v9, p0, Lcom/android/launcher2/ContextualPageReceiver;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "contextual_page_desk_cardle"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 98
    .local v4, desk_cradle_state:I
    const-string v9, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 99
    const-string v9, "true"

    const-string v10, "changed"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    .local v1, bChanged:Z
    const-string v9, "ContextualPageReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mContextualPageReceiver: changed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v9, "ContextualPageReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mContextualPageReceiver: setting : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageReceiver;->checkAllContextualPage()V

    .line 186
    .end local v1           #bChanged:Z
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v1       #bChanged:Z
    :cond_1
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    invoke-virtual {v9}, Lcom/android/launcher2/ContextualPageManager;->removeAllContextualPage()V

    goto :goto_0

    .line 112
    .end local v1           #bChanged:Z
    :cond_2
    const-string v9, "com.samsung.pen.INSERT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 113
    const-string v9, "penInsert"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 114
    .local v2, bPluged:Z
    const-string v9, "ContextualPageReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mContextualPageReceiver: penInsert : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-nez v2, :cond_4

    .line 117
    const/4 v9, 0x1

    if-ne v6, v9, :cond_3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_3

    .line 118
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x1

    invoke-virtual {v9, p1, v10}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 119
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 121
    :cond_3
    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    or-int/lit8 v9, v9, 0x1

    sput v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto :goto_0

    .line 123
    :cond_4
    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, 0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 124
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    .line 125
    :cond_5
    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, -0x2

    sput v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto :goto_0

    .line 129
    .end local v2           #bPluged:Z
    :cond_6
    const-string v9, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 130
    const-string v9, "state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const/4 v2, 0x1

    .line 131
    .restart local v2       #bPluged:Z
    :goto_1
    const-string v9, "ContextualPageReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mContextualPageReceiver: EarJack bPluged : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v2, :cond_9

    .line 134
    const/4 v9, 0x1

    if-ne v6, v9, :cond_7

    const/4 v9, 0x1

    if-ne v5, v9, :cond_7

    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_7

    .line 135
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x2

    invoke-virtual {v9, p1, v10}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 136
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 138
    :cond_7
    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    or-int/lit8 v9, v9, 0x2

    sput v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 130
    .end local v2           #bPluged:Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_1

    .line 140
    .restart local v2       #bPluged:Z
    :cond_9
    const/4 v9, 0x1

    if-ne v6, v9, :cond_a

    const/4 v9, 0x1

    if-ne v5, v9, :cond_a

    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    .line 141
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    .line 142
    :cond_a
    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, -0x3

    sput v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 146
    .end local v2           #bPluged:Z
    :cond_b
    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 147
    const-string v9, "android.intent.extra.DOCK_STATE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 149
    .local v7, mDocState:I
    packed-switch v7, :pswitch_data_0

    goto/16 :goto_0

    .line 173
    :pswitch_0
    const-string v9, "ContextualPageReceiver"

    const-string v10, "mContextualPageReceiver: EXTRA_DOCK_STATE_UNDOCKED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v9, 0x1

    if-ne v6, v9, :cond_c

    const/4 v9, 0x1

    if-ne v3, v9, :cond_c

    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_c

    .line 176
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    .line 178
    :cond_c
    const/4 v9, 0x1

    if-ne v6, v9, :cond_d

    const/4 v9, 0x1

    if-ne v4, v9, :cond_d

    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    if-ne v9, v10, :cond_d

    .line 179
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/launcher2/ContextualPageManager;->removeContextualPage(I)Z

    .line 181
    :cond_d
    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, -0x5

    sput v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    .line 182
    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, -0x9

    sput v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 151
    :pswitch_1
    const-string v9, "ContextualPageReceiver"

    const-string v10, "mContextualPageReceiver: EXTRA_DOCK_STATE_CAR DockConnected "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v9, 0x1

    if-ne v6, v9, :cond_e

    const/4 v9, 0x1

    if-ne v3, v9, :cond_e

    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_e

    .line 154
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x3

    invoke-virtual {v9, p1, v10}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 155
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 157
    :cond_e
    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    or-int/lit8 v9, v9, 0x4

    sput v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 163
    :pswitch_2
    const-string v9, "ContextualPageReceiver"

    const-string v10, "mContextualPageReceiver: EXTRA_DOCK_STATE_DESK DockConnected "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v9, 0x1

    if-ne v6, v9, :cond_f

    const/4 v9, 0x1

    if-ne v4, v9, :cond_f

    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    and-int/lit8 v9, v9, 0x8

    if-nez v9, :cond_f

    .line 166
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x4

    invoke-virtual {v9, p1, v10}, Lcom/android/launcher2/ContextualPageManager;->setupContextualAwareHotSeat(Landroid/content/Context;I)V

    .line 167
    sget-object v9, Lcom/android/launcher2/ContextualPageReceiver;->mCPMgr:Lcom/android/launcher2/ContextualPageManager;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/android/launcher2/ContextualPageManager;->addContextualPage(I)Z

    .line 169
    :cond_f
    sget v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    or-int/lit8 v9, v9, 0x8

    sput v9, Lcom/android/launcher2/ContextualPageReceiver;->cpBitFlag:I

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 84
    return-void
.end method
