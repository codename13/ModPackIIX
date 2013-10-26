.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static final mCoordinates:[I

.field private static mCountX:I

.field private static mCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 17
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 99
    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v3, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 101
    .local v7, occupied:[[Z
    const-wide/16 v2, -0x64

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v3, v1}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v12

    .line 104
    .local v12, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    .line 105
    .local v11, item:Lcom/android/launcher2/HomeItem;
    iget v8, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 106
    .local v8, cellX:I
    iget v9, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 107
    .local v9, cellY:I
    iget v13, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 108
    .local v13, spanX:I
    iget v14, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 109
    .local v14, spanY:I
    move v15, v8

    .local v15, x:I
    :goto_0
    add-int v2, v8, v13

    if-ge v15, v2, :cond_0

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    if-ge v15, v2, :cond_0

    .line 110
    move/from16 v16, v9

    .local v16, y:I
    :goto_1
    add-int v2, v9, v14

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    .line 111
    aget-object v2, v7, v15

    const/4 v3, 0x1

    aput-boolean v3, v2, v16

    .line 110
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 109
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 116
    .end local v8           #cellX:I
    .end local v9           #cellY:I
    .end local v11           #item:Lcom/android/launcher2/HomeItem;
    .end local v13           #spanX:I
    .end local v14           #spanY:I
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v6, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 11
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    const/4 v8, 0x1

    .line 87
    const/4 v10, 0x0

    .line 88
    .local v10, installed:Z
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v0, p3}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherApplication;

    .line 90
    .local v9, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    const-wide/16 v3, -0x64

    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v2, 0x0

    aget v6, v1, v2

    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    aget v7, v1, v8

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    .line 93
    const/4 v10, 0x1

    .line 95
    .end local v9           #app:Lcom/android/launcher2/LauncherApplication;
    :cond_0
    return v10
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 43
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, name:Ljava/lang/String;
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 45
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 50
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_2
    const-string v9, "duplicate"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    .local v0, duplicate:Z
    if-nez v0, :cond_3

    invoke-static {p1, v5, v3}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 58
    const v9, 0x7f0e0027

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v5, v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, msg:Ljava/lang/String;
    :goto_1
    invoke-static {p1, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 60
    .end local v4           #msg:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v7

    .line 66
    .local v7, screen:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 67
    .local v6, res:Landroid/content/res/Resources;
    const v9, 0x7f0a002a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    .line 68
    const v9, 0x7f0a002b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    sput v9, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    .line 69
    invoke-direct {p0, p1, p2, v7}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    .line 70
    .local v2, installed:Z
    if-nez v2, :cond_5

    .line 71
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v8

    .line 73
    .local v8, screenCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v8, :cond_5

    if-nez v2, :cond_5

    .line 74
    if-eq v1, v7, :cond_4

    .line 75
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    .line 73
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 78
    .end local v1           #i:I
    .end local v8           #screenCount:I
    :cond_5
    if-eqz v2, :cond_6

    .line 79
    const v9, 0x7f0e0025

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v5, v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #msg:Ljava/lang/String;
    goto :goto_1

    .line 81
    .end local v4           #msg:Ljava/lang/String;
    :cond_6
    const v9, 0x7f0e0023

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #msg:Ljava/lang/String;
    goto :goto_1
.end method
