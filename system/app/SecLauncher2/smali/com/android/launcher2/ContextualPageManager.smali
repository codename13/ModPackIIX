.class public Lcom/android/launcher2/ContextualPageManager;
.super Ljava/lang/Object;
.source "ContextualPageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;,
        Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    }
.end annotation


# static fields
.field static final CSC_FILE_DEFAULT_HOTSEAT:Ljava/lang/String; = "/system/csc/default_hotseat_cp.xml"

.field public static final IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_CONTEXTUALPAGE_NUM:I = 0x4

.field public static final NOTI_CLEAR:Ljava/lang/String; = "com.android.launcher2.ContextualPageManager.NOTI_CLEAR"

.field private static final STATUS_CARCRADLE_URI:Landroid/net/Uri; = null

.field private static final STATUS_DESKCRADLE_URI:Landroid/net/Uri; = null

.field private static final STATUS_EARPHONE_URI:Landroid/net/Uri; = null

.field private static final STATUS_SPEN_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ContextualPageManager"

.field private static awareHotseatItemsMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final caNotificationID:I = 0x7f02007b


# instance fields
.field private mHasPostWork:Z

.field private mHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private final mHotseatItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private postActCPIndex:I

.field private titleClickListener:Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "content://com.sec.android.providers.insight/app_usage/recent/spen"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_SPEN_URI:Landroid/net/Uri;

    .line 69
    const-string v0, "content://com.sec.android.providers.insight/app_usage/recent/earphone"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_EARPHONE_URI:Landroid/net/Uri;

    .line 70
    const-string v0, "content://com.sec.android.providers.insight/app_usage/recent/carcradle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_CARCRADLE_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://com.sec.android.providers.insight/app_usage/recent/deskcradle"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->STATUS_DESKCRADLE_URI:Landroid/net/Uri;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    .line 520
    new-instance v0, Lcom/android/launcher2/ContextualPageManager$3;

    invoke-direct {v0}, Lcom/android/launcher2/ContextualPageManager$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/ContextualPageManager;->IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    .line 62
    new-instance v0, Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;-><init>(Lcom/android/launcher2/ContextualPageManager;)V

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->titleClickListener:Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    .line 83
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ContextualPageManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/ContextualPageManager;)Lcom/android/launcher2/HomeFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    return-object v0
.end method

.method private loadHotseatItem()Z
    .locals 17

    .prologue
    .line 341
    const/4 v8, 0x0

    .line 343
    .local v8, isCSC:Z
    const/4 v10, 0x0

    .line 344
    .local v10, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    .line 346
    .local v11, resParser:Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    .line 347
    .local v3, cscFileChk:Ljava/io/File;
    const/4 v1, 0x0

    .line 350
    .local v1, cscFile:Ljava/io/FileReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 352
    new-instance v4, Ljava/io/File;

    const-string v13, "/system/csc/default_hotseat_cp.xml"

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 354
    .end local v3           #cscFileChk:Ljava/io/File;
    .local v4, cscFileChk:Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_4

    .line 356
    new-instance v2, Ljava/io/FileReader;

    const-string v13, "/system/csc/default_hotseat_cp.xml"

    invoke-direct {v2, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 358
    .end local v1           #cscFile:Ljava/io/FileReader;
    .local v2, cscFile:Ljava/io/FileReader;
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 359
    .local v7, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 360
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 362
    invoke-interface {v10, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 363
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_9

    .line 365
    const/4 v8, 0x1

    move-object v1, v2

    .line 373
    .end local v2           #cscFile:Ljava/io/FileReader;
    .end local v7           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    :goto_0
    :try_start_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 376
    .local v5, depth:I
    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_8

    move-result v13

    if-le v13, v5, :cond_2

    :cond_1
    const/4 v13, 0x1

    if-eq v12, v13, :cond_2

    .line 378
    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 392
    :cond_2
    const/4 v13, 0x1

    .line 403
    if-eqz v1, :cond_3

    .line 405
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v3, v4

    .line 412
    .end local v4           #cscFileChk:Ljava/io/File;
    .end local v5           #depth:I
    .end local v12           #type:I
    .restart local v3       #cscFileChk:Ljava/io/File;
    :goto_3
    return v13

    .line 367
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f060001

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 369
    const-string v13, "favorites"

    invoke-static {v11, v13}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 370
    move-object v10, v11

    goto :goto_0

    .line 381
    .restart local v5       #depth:I
    .restart local v12       #type:I
    :cond_5
    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    .line 385
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, name:Ljava/lang/String;
    const-string v13, "hotseat"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v10, v8}, Lcom/android/launcher2/ContextualPageManager;->loadHotseatItemContainer(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 389
    :cond_6
    const-string v13, "ContextualPageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid tag <"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "> detected while parsing favorites at line "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_1

    .line 394
    .end local v5           #depth:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #type:I
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 395
    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_6
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_hotseat.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    if-eqz v1, :cond_7

    .line 405
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 412
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_7
    :goto_5
    const/4 v13, 0x0

    goto :goto_3

    .line 406
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    .restart local v5       #depth:I
    .restart local v12       #type:I
    :catch_1
    move-exception v6

    .line 407
    .local v6, e:Ljava/lang/Exception;
    const-string v14, "ContextualPageManager"

    const-string v15, "Got exception parsing default_hotseat.xml"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 406
    .end local v4           #cscFileChk:Ljava/io/File;
    .end local v5           #depth:I
    .end local v12           #type:I
    .restart local v3       #cscFileChk:Ljava/io/File;
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v6

    .line 407
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_hotseat.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 397
    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 398
    .local v6, e:Ljava/io/IOException;
    :goto_6
    :try_start_8
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_hotseat.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 403
    if-eqz v1, :cond_7

    .line 405
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    .line 406
    :catch_4
    move-exception v6

    .line 407
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_hotseat.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 400
    .end local v6           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 401
    .local v6, e:Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_a
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_hotseat.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 403
    if-eqz v1, :cond_7

    .line 405
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_5

    .line 406
    :catch_6
    move-exception v6

    .line 407
    .local v6, e:Ljava/lang/Exception;
    const-string v13, "ContextualPageManager"

    const-string v14, "Got exception parsing default_hotseat.xml"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 403
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v1, :cond_8

    .line 405
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 408
    :cond_8
    :goto_9
    throw v13

    .line 406
    :catch_7
    move-exception v6

    .line 407
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v14, "ContextualPageManager"

    const-string v15, "Got exception parsing default_hotseat.xml"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 403
    .end local v3           #cscFileChk:Ljava/io/File;
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_8

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_8

    .line 400
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_8
    move-exception v6

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_7

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_9
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_7

    .line 397
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_a
    move-exception v6

    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_6

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_b
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_6

    .line 394
    :catch_c
    move-exception v6

    goto :goto_4

    .end local v1           #cscFile:Ljava/io/FileReader;
    .end local v3           #cscFileChk:Ljava/io/File;
    .restart local v2       #cscFile:Ljava/io/FileReader;
    .restart local v4       #cscFileChk:Ljava/io/File;
    :catch_d
    move-exception v6

    move-object v1, v2

    .end local v2           #cscFile:Ljava/io/FileReader;
    .restart local v1       #cscFile:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #cscFileChk:Ljava/io/File;
    .restart local v3       #cscFileChk:Ljava/io/File;
    goto :goto_4
.end method

.method private loadHotseatItemContainer(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 14
    .parameter "ctx"
    .parameter "parser"
    .parameter "isCSC"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 422
    .local v2, attrs:Landroid/util/AttributeSet;
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 425
    .local v8, startDepth:I
    const/4 v6, 0x0

    .line 426
    .local v6, pkgName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 427
    .local v3, className:Ljava/lang/String;
    const/4 v7, 0x0

    .line 428
    .local v7, screen:Ljava/lang/String;
    const/4 v10, 0x0

    .line 430
    .local v10, x:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, type:I
    const/4 v11, 0x3

    if-ne v9, v11, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-le v11, v8, :cond_2

    .line 431
    :cond_1
    const/4 v11, 0x1

    if-ne v9, v11, :cond_3

    .line 467
    :cond_2
    return-void

    .line 434
    :cond_3
    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 437
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 438
    .local v5, name:Ljava/lang/String;
    const-string v11, "ContextualPageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadHotseatItemContainer. Process tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_4

    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, a:Landroid/content/res/TypedArray;
    const/4 v11, 0x0

    const-string v12, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 445
    const/4 v11, 0x0

    const-string v12, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 446
    const/4 v11, 0x0

    const-string v12, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 447
    const/4 v11, 0x0

    const-string v12, "x"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 457
    :goto_1
    const-string v11, "favorite"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 458
    new-instance v4, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v4, v6, v3, v11, v12}, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 459
    .local v4, hotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    iget-object v11, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    .end local v4           #hotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    :goto_2
    const/4 v11, 0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_0

    .line 464
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 450
    .end local v1           #a:Landroid/content/res/TypedArray;
    :cond_4
    sget-object v11, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    invoke-virtual {p1, v2, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 451
    .restart local v1       #a:Landroid/content/res/TypedArray;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 452
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 453
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 454
    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 461
    :cond_5
    const-string v11, "ContextualPageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid tag <"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "> detected while parsing favorites at line "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public addContextualPage(I)Z
    .locals 17
    .parameter "CPType"

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v13, :cond_0

    .line 94
    const-string v13, "ContextualPageManager"

    const-string v14, "addContextualPage : Workspace is NULL!!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v13, 0x0

    .line 189
    :goto_0
    return v13

    .line 98
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 99
    const-string v13, "ContextualPageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Already added - CPType : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v13, 0x0

    goto :goto_0

    .line 103
    :cond_1
    const-string v13, "ContextualPageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addContextualPage : CPType : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getOrientation()I

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 107
    .local v9, screenHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 108
    .local v10, screenWidth:I
    if-le v10, v9, :cond_2

    .line 109
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    .line 110
    const/4 v13, 0x0

    goto :goto_0

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f030042

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 116
    .local v4, cellContext:Lcom/android/launcher2/CellLayoutWithResizableWidgets;
    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setContextualPageType(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 119
    .local v8, res:Landroid/content/res/Resources;
    const v13, 0x7f0a003e

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const v14, 0x7f0a003f

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-virtual {v4, v13, v14}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->setContextualPageGrid(II)V

    .line 121
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 122
    .local v6, lpContext:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_3

    .line 123
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    .end local v6           #lpContext:Landroid/view/ViewGroup$LayoutParams;
    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v6, v13, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    .restart local v6       #lpContext:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const v13, 0x7f070094

    invoke-virtual {v4, v13}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 129
    .local v11, work_title_area:Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->titleClickListener:Lcom/android/launcher2/ContextualPageManager$ContextualPageTitleClickListener;

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v13, 0x7f070096

    invoke-virtual {v4, v13}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 132
    .local v12, work_title_bar:Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_1
    const/4 v3, 0x0

    .line 157
    .local v3, addedCP:Z
    const/4 v2, 0x0

    .line 158
    .local v2, addPageIdx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v14

    sub-int v7, v13, v14

    .line 159
    .local v7, normalPageCount:I
    const/4 v5, 0x1

    .local v5, i:I
    :goto_2
    move/from16 v0, p1

    if-ge v5, v0, :cond_5

    .line 160
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    .line 161
    const/4 v3, 0x1

    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 159
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 134
    .end local v2           #addPageIdx:I
    .end local v3           #addedCP:Z
    .end local v5           #i:I
    .end local v7           #normalPageCount:I
    :pswitch_0
    const v13, 0x7f02000a

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    const v13, 0x7f0e00ac

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 136
    const v13, 0x7f08000c

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 139
    :pswitch_1
    const v13, 0x7f020009

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    const v13, 0x7f0e00ad

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 141
    const v13, 0x7f08000d

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 144
    :pswitch_2
    const v13, 0x7f020007

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    const v13, 0x7f0e00ae

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 146
    const v13, 0x7f08000e

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 149
    :pswitch_3
    const v13, 0x7f020008

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const v13, 0x7f0e00af

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 151
    const v13, 0x7f08000f

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 166
    .restart local v2       #addPageIdx:I
    .restart local v3       #addedCP:Z
    .restart local v5       #i:I
    .restart local v7       #normalPageCount:I
    :cond_5
    if-eqz v3, :cond_9

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    add-int v14, v7, v2

    invoke-virtual {v13, v4, v14, v6}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getWorkspaceLoading()Z

    move-result v13

    if-nez v13, :cond_6

    .line 172
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v13}, Lcom/android/launcher2/HomeFragment;->getLauncherModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/launcher2/LauncherModel;->bindContextualPageItems(I)V

    .line 174
    :cond_6
    const-string v13, "ContextualPageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "CP Page Add = Total : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v15}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Contexutal : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/launcher2/ContextualPageManager;->notificationCreate(Landroid/content/Context;I)V

    .line 178
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v13

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v14

    if-eq v13, v14, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    move/from16 v0, p1

    if-eq v0, v13, :cond_8

    .line 179
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPage(I)Lcom/android/launcher2/CellLayout;

    move-result-object v14

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageIndex(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/android/launcher2/HomeFragment;->onPageSwitch(Landroid/view/View;I)V

    .line 181
    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/ContextualPageManager;->postActCPIndex:I

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v14, Lcom/android/launcher2/ContextualPageManager$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/launcher2/ContextualPageManager$1;-><init>(Lcom/android/launcher2/ContextualPageManager;)V

    const-wide/16 v15, 0x12c

    invoke-virtual/range {v13 .. v16}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 169
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v13, v4, v7, v6}, Lcom/android/launcher2/Workspace;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getContextualPage(I)Lcom/android/launcher2/CellLayout;
    .locals 5
    .parameter "CPType"

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_0

    .line 270
    const-string v2, "ContextualPageManager"

    const-string v4, "getContextualPage : Workspace is NULL!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 281
    :goto_0
    return-object v2

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 275
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 276
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 277
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 275
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 281
    goto :goto_0
.end method

.method public getContextualPageIndex(I)I
    .locals 5
    .parameter "CPType"

    .prologue
    const/4 v3, -0x1

    .line 286
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    .line 287
    const-string v2, "ContextualPageManager"

    const-string v4, "getContextualPageIndex : Workspace is NULL!!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 298
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 292
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 293
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 298
    goto :goto_0
.end method

.method public getContextualPageType(I)I
    .locals 4
    .parameter "pageIndex"

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    .line 322
    const-string v2, "ContextualPageManager"

    const-string v3, "getContextualPageType : Workspace is NULL!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 327
    .local v0, cpCell:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v1

    goto :goto_0
.end method

.method public getHasPostWork()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    return v0
.end method

.method public getHotseatItems(I)Ljava/util/ArrayList;
    .locals 12
    .parameter "CPType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v2, hotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v1, awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    sget-object v7, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 476
    .restart local v1       #awareHotseatItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    const/4 v4, 0x0

    .line 477
    .local v4, j:I
    if-nez v1, :cond_1

    move v0, v8

    .line 479
    .local v0, awareHotseatCnt:I
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 480
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->cpType:I

    if-ne v7, p1, :cond_4

    .line 481
    if-lez v0, :cond_2

    .line 482
    add-int/lit8 v5, v4, 0x1

    .end local v4           #j:I
    .local v5, j:I
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    .line 485
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v11, :cond_6

    move v4, v5

    .line 515
    .end local v5           #j:I
    .restart local v4       #j:I
    :cond_0
    sget-object v7, Lcom/android/launcher2/ContextualPageManager;->IN_HOTSEAT_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 517
    return-object v2

    .line 477
    .end local v0           #awareHotseatCnt:I
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 488
    .restart local v0       #awareHotseatCnt:I
    .restart local v3       #i:I
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/ContextualPageManager;->mHotseatItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    .line 489
    .local v6, tmphotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    packed-switch v4, :pswitch_data_0

    .line 506
    :cond_3
    iget v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->screen:I

    if-nez v1, :cond_5

    move v7, v8

    :goto_2
    add-int/2addr v7, v9

    iput v7, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->screen:I

    .line 507
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v11, :cond_0

    .line 479
    .end local v6           #tmphotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 491
    .restart local v6       #tmphotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    :pswitch_0
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 495
    :pswitch_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 500
    :pswitch_2
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    iget-object v7, v7, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;->className:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    .line 506
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_2

    .end local v4           #j:I
    .end local v6           #tmphotseatItem:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    .restart local v5       #j:I
    :cond_6
    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_3

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTotalContextualPageCount()I
    .locals 5

    .prologue
    .line 303
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 304
    const-string v3, "ContextualPageManager"

    const-string v4, "getTotalContextualPageCount : Workspace is NULL!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, -0x1

    .line 316
    :cond_0
    return v1

    .line 308
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 309
    .local v2, totalpages:I
    const/4 v1, 0x0

    .line 310
    .local v1, totalCP:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 311
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    add-int/lit8 v1, v1, 0x1

    .line 310
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public initContextualPage(Lcom/android/launcher2/HomeFragment;)V
    .locals 1
    .parameter "hf"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 89
    invoke-direct {p0}, Lcom/android/launcher2/ContextualPageManager;->loadHotseatItem()Z

    .line 90
    return-void
.end method

.method isContextualPageHotseat(Landroid/view/View;)Z
    .locals 1
    .parameter "layout"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/HomeFragment;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ContextualPageManager;->getContextualPageType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notificationClear(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "notiID"

    .prologue
    .line 603
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 604
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 605
    return-void
.end method

.method public notificationCreate(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "cpType"

    .prologue
    const v11, 0x7f0e00b6

    const v10, 0x7f0e00b4

    const v9, 0x7f0e00b2

    const v8, 0x7f0e00b0

    .line 554
    const v5, 0x7f02007b

    add-int v3, v5, p2

    .line 556
    .local v3, notiID:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 557
    .local v0, aIntent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.sec.android.app.launcher"

    const-string v7, "com.android.launcher2.Launcher"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.launcher2.ContextualPageManager.NOTI_CLEAR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.android.launcher2.ContextualPageManager.NOTI_CLEAR"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    const/4 v5, 0x0

    const/high16 v6, 0x800

    invoke-static {p1, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 565
    .local v4, sender:Landroid/app/PendingIntent;
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 566
    .local v1, nm:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 568
    .local v2, noti:Landroid/app/Notification$Builder;
    packed-switch p2, :pswitch_data_0

    .line 595
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 599
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 600
    return-void

    .line 570
    :pswitch_0
    const v5, 0x7f02007a

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f0e00b1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 576
    :pswitch_1
    const v5, 0x7f020078

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f0e00b3

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 582
    :pswitch_2
    const v5, 0x7f020074

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f0e00b5

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 588
    :pswitch_3
    const v5, 0x7f020076

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f0e00b7

    invoke-virtual {p1, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {p1, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notificationGoContextualPage(I)V
    .locals 5
    .parameter "notiID"

    .prologue
    .line 608
    const v1, 0x7f02007b

    sub-int v0, p1, v1

    .line 609
    .local v0, cpType:I
    iget-object v1, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v2, Lcom/android/launcher2/ContextualPageManager$4;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/ContextualPageManager$4;-><init>(Lcom/android/launcher2/ContextualPageManager;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 615
    return-void
.end method

.method public removeAllContextualPage()V
    .locals 6

    .prologue
    .line 245
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    .line 246
    const-string v3, "ContextualPageManager"

    const-string v4, "removeContextualPage : Workspace is NULL!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 251
    .local v1, count:I
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v4

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_2

    .line 252
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v4

    sub-int v4, v1, v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/Workspace;->snapToPageWithDir(II)V

    .line 254
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v0

    .line 256
    .local v0, CPType:I
    if-eqz v0, :cond_3

    .line 257
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f02007b

    add-int/2addr v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/ContextualPageManager;->notificationClear(Landroid/content/Context;I)V

    .line 258
    iget-object v3, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/Workspace;->removeViewAt(I)V

    .line 259
    add-int/lit8 v2, v2, -0x1

    .line 260
    add-int/lit8 v1, v1, -0x1

    .line 254
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeContextualPage(I)Z
    .locals 10
    .parameter "CPType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v5, :cond_0

    .line 195
    const-string v5, "ContextualPageManager"

    const-string v7, "removeContextualPage : Workspace is NULL!!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 240
    :goto_0
    return v5

    .line 199
    :cond_0
    const-string v5, "ContextualPageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeContextualPage CPType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v8, 0x7f02007b

    add-int/2addr v8, p1

    invoke-virtual {p0, v5, v8}, Lcom/android/launcher2/ContextualPageManager;->notificationClear(Landroid/content/Context;I)V

    .line 203
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 204
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v5

    sub-int v3, v0, v5

    .line 206
    .local v3, normalPageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 207
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getContextualPageType()I

    move-result v5

    if-ne v5, p1, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher2/ContextualPageManager;->getTotalContextualPageCount()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 210
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_2

    .line 211
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 235
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->removeViewAt(I)V

    move v5, v7

    .line 236
    goto :goto_0

    .line 213
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeFragment;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    goto :goto_2

    .line 215
    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    if-lt v5, v3, :cond_1

    .line 217
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v5

    if-gt v5, v1, :cond_5

    .line 218
    move v4, v1

    .line 220
    .local v4, scrollPageIdx:I
    add-int/lit8 v5, v3, -0x1

    if-le v1, v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    if-gt v1, v5, :cond_4

    .line 221
    add-int/lit8 v4, v1, -0x1

    .line 223
    :cond_4
    move v2, v4

    .line 224
    .local v2, nextPageIdx:I
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    new-instance v6, Lcom/android/launcher2/ContextualPageManager$2;

    invoke-direct {v6, p0, v2}, Lcom/android/launcher2/ContextualPageManager$2;-><init>(Lcom/android/launcher2/ContextualPageManager;I)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/launcher2/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 231
    .end local v2           #nextPageIdx:I
    .end local v4           #scrollPageIdx:I
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/ContextualPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_2

    .line 206
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v5, v6

    .line 240
    goto/16 :goto_0
.end method

.method public setHasPostWork(Z)V
    .locals 0
    .parameter "postWork"

    .prologue
    .line 618
    iput-boolean p1, p0, Lcom/android/launcher2/ContextualPageManager;->mHasPostWork:Z

    .line 619
    return-void
.end method

.method public setupContextualAwareHotSeat(Landroid/content/Context;I)V
    .locals 16
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 625
    const/4 v2, 0x0

    .line 626
    .local v2, modeUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 628
    .local v9, contextualCnt:I
    packed-switch p2, :pswitch_data_0

    .line 639
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 641
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 642
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 643
    const-string v1, "ContextualPageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor rowcount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v7, awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    const/4 v12, 0x0

    .line 649
    .local v12, i:I
    :cond_0
    const-string v1, "package_name"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 650
    .local v14, idxCol_pkg:I
    const-string v1, "class_name"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 651
    .local v13, idxCol_cls:I
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 652
    .local v15, pkgName:Ljava/lang/String;
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 654
    .local v8, clsName:Ljava/lang/String;
    const-string v1, "ContextualPageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v1, "ContextualPageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor class name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-eqz v15, :cond_1

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 658
    :cond_1
    const-string v1, "ContextualPageManager"

    const-string v3, "Launcherable pacakge name not fount! or Launcher itself"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    if-lt v12, v1, :cond_0

    .line 667
    :cond_2
    sget-object v1, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    sget-object v1, Lcom/android/launcher2/ContextualPageManager;->awareHotseatItemsMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    .end local v7           #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    .end local v8           #clsName:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #idxCol_cls:I
    .end local v14           #idxCol_pkg:I
    .end local v15           #pkgName:Ljava/lang/String;
    :goto_2
    if-eqz v11, :cond_3

    .line 675
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 676
    :cond_3
    return-void

    .line 630
    .end local v11           #cursor:Landroid/database/Cursor;
    :pswitch_0
    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->STATUS_SPEN_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 632
    :pswitch_1
    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->STATUS_EARPHONE_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 634
    :pswitch_2
    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->STATUS_CARCRADLE_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 636
    :pswitch_3
    sget-object v2, Lcom/android/launcher2/ContextualPageManager;->STATUS_DESKCRADLE_URI:Landroid/net/Uri;

    goto/16 :goto_0

    .line 662
    .restart local v7       #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    .restart local v8       #clsName:Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #i:I
    .restart local v13       #idxCol_cls:I
    .restart local v14       #idxCol_pkg:I
    .restart local v15       #pkgName:Ljava/lang/String;
    :cond_4
    new-instance v10, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;

    move/from16 v0, p2

    invoke-direct {v10, v15, v8, v12, v0}, Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 663
    .local v10, cptemp:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 671
    .end local v7           #awareHotseatItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;>;"
    .end local v8           #clsName:Ljava/lang/String;
    .end local v10           #cptemp:Lcom/android/launcher2/ContextualPageManager$ContextualPageHotseatItem;
    .end local v12           #i:I
    .end local v13           #idxCol_cls:I
    .end local v14           #idxCol_pkg:I
    .end local v15           #pkgName:Ljava/lang/String;
    :cond_5
    const-string v1, "ContextualPageManager"

    const-string v3, "[OOPS] Fail to get cursor because DB empty. "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
