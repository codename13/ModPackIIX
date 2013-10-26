.class public Lcom/android/launcher2/SamsungWidgetPackageManager;
.super Ljava/lang/Object;
.source "SamsungWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final DEFAULT_WIDGET_NUMBER:I = 0xa

.field static final INTENT_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

.field static final INTENT_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

.field static final LOG_TAG:Ljava/lang/String; = "Launcher.SWidgetPkgMgr"

.field static final METADATA_NAME:Ljava/lang/String; = "com.samsung.sec.android.SAMSUNG_WIDGET"

.field static final WIDGET_CLASS:Ljava/lang/String; = "plug_in_class"

.field static final WIDGET_HEIGHT:Ljava/lang/String; = "min_height"

.field static final WIDGET_NAME:Ljava/lang/String; = "plug_in_name"

.field private static final WIDGET_NOT_RESPONDING_TIMEOUT:J = 0x1388L

.field static final WIDGET_PREVIEW:Ljava/lang/String; = "preview"

.field static final WIDGET_WIDTH:Ljava/lang/String; = "min_width"

.field static final YahooWidgetName:Ljava/lang/String; = "com.sec.android.widgetapp.stockclock"

.field private static sWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;


# instance fields
.field private mIsWidgetLoaded:Z

.field private final mItemCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMetrics:Landroid/util/DisplayMetrics;

.field private mSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

.field private mWidgetLoaderThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    const/16 v1, 0xa

    .line 118
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->initInstance(Landroid/app/ActivityGroup;)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/SamsungWidgetPackageManager;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadWidgets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SamsungWidgetPackageManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/SamsungWidgetPackageManager;Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/android/launcher2/SamsungAppWidgetItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/android/launcher2/SamsungAppWidgetItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/SamsungWidgetPackageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->loadYahooWidgetForCsc()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/SamsungWidgetPackageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return p1
.end method

.method private findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v7, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 438
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    .line 442
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 443
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 444
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 445
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 446
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 447
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 452
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v6
.end method

.method public static getInstance(Landroid/app/ActivityGroup;)Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1
    .parameter "group"

    .prologue
    .line 105
    sget-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-direct {v0, p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;-><init>(Landroid/app/ActivityGroup;)V

    sput-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 111
    :goto_0
    sget-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->sWidgetPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->initInstance(Landroid/app/ActivityGroup;)V

    goto :goto_0
.end method

.method private loadWidgets(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const-string v2, "com.samsung.sec.android.SAMSUNG_APP_WIDGET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 426
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private loadYahooWidgetForCsc()Z
    .locals 22

    .prologue
    .line 795
    const-string v1, "/system/csc/others.xml"

    .line 796
    .local v1, OTHERS_CSC_FILE:Ljava/lang/String;
    const-string v2, "AppWidget"

    .line 797
    .local v2, TAG_APPWIDGET:Ljava/lang/String;
    const-string v3, "Yahoo"

    .line 798
    .local v3, TAG_YAHOO:Ljava/lang/String;
    const-string v5, "On"

    .line 799
    .local v5, YAHOO_ON:Ljava/lang/String;
    const-string v4, "Off"

    .line 802
    .local v4, YAHOO_OFF:Ljava/lang/String;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 804
    .local v12, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 805
    .local v6, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v19, Ljava/io/File;

    const-string v20, "/system/csc/others.xml"

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v16

    .line 806
    .local v16, mDoc:Lorg/w3c/dom/Document;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v17

    .line 807
    .local v17, mRoot:Lorg/w3c/dom/Node;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 808
    .local v9, children:Lorg/w3c/dom/NodeList;
    if-eqz v9, :cond_4

    .line 809
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 810
    .local v18, n:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    .line 811
    invoke-interface {v9, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 812
    .local v7, child:Lorg/w3c/dom/Node;
    const-string v19, "AppWidget"

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 813
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 814
    .local v10, children2:Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_3

    .line 815
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    .line 816
    .local v15, m:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_1
    if-ge v14, v15, :cond_3

    .line 817
    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 818
    .local v8, child2:Lorg/w3c/dom/Node;
    const-string v19, "Yahoo"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 819
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "On"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 820
    const/16 v19, 0x1

    .line 839
    .end local v6           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #child:Lorg/w3c/dom/Node;
    .end local v8           #child2:Lorg/w3c/dom/Node;
    .end local v9           #children:Lorg/w3c/dom/NodeList;
    .end local v10           #children2:Lorg/w3c/dom/NodeList;
    .end local v13           #i:I
    .end local v14           #j:I
    .end local v15           #m:I
    .end local v16           #mDoc:Lorg/w3c/dom/Document;
    .end local v17           #mRoot:Lorg/w3c/dom/Node;
    .end local v18           #n:I
    :goto_2
    return v19

    .line 821
    .restart local v6       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #child:Lorg/w3c/dom/Node;
    .restart local v8       #child2:Lorg/w3c/dom/Node;
    .restart local v9       #children:Lorg/w3c/dom/NodeList;
    .restart local v10       #children2:Lorg/w3c/dom/NodeList;
    .restart local v13       #i:I
    .restart local v14       #j:I
    .restart local v15       #m:I
    .restart local v16       #mDoc:Lorg/w3c/dom/Document;
    .restart local v17       #mRoot:Lorg/w3c/dom/Node;
    .restart local v18       #n:I
    :cond_0
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Off"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v19

    if-eqz v19, :cond_1

    .line 823
    const/16 v19, 0x0

    goto :goto_2

    .line 825
    :cond_1
    const/16 v19, 0x1

    goto :goto_2

    .line 816
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 810
    .end local v8           #child2:Lorg/w3c/dom/Node;
    .end local v10           #children2:Lorg/w3c/dom/NodeList;
    .end local v14           #j:I
    .end local v15           #m:I
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 832
    .end local v6           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #child:Lorg/w3c/dom/Node;
    .end local v9           #children:Lorg/w3c/dom/NodeList;
    .end local v13           #i:I
    .end local v16           #mDoc:Lorg/w3c/dom/Document;
    .end local v17           #mRoot:Lorg/w3c/dom/Node;
    .end local v18           #n:I
    :catch_0
    move-exception v11

    .line 833
    .local v11, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ParserConfigurationException:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    .end local v11           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :cond_4
    :goto_3
    const/16 v19, 0x1

    goto :goto_2

    .line 834
    :catch_1
    move-exception v11

    .line 835
    .local v11, ex:Lorg/xml/sax/SAXException;
    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SAXException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 836
    .end local v11           #ex:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v11

    .line 837
    .local v11, ex:Ljava/io/IOException;
    const-string v19, "Launcher.SWidgetPkgMgr"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private makeFailPreviewImage(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"
    .parameter "item"

    .prologue
    const/16 v6, 0xc8

    const/4 v8, 0x0

    .line 304
    iget v7, p2, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    if-lez v7, :cond_1

    iget v5, p2, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 306
    .local v5, width:I
    :goto_0
    iget v7, p2, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    if-lez v7, :cond_2

    iget v3, p2, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    .line 308
    .local v3, height:I
    :goto_1
    instance-of v6, p1, Lcom/android/launcher2/Launcher;

    if-eqz v6, :cond_0

    .line 321
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 323
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 324
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 325
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 326
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 327
    const/high16 v6, 0x4160

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 330
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 332
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 333
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v8, v8, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 334
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 339
    iget-object v6, p2, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v10

    add-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 342
    return-object v0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #height:I
    .end local v4           #paint:Landroid/graphics/Paint;
    .end local v5           #width:I
    :cond_1
    move v5, v6

    .line 304
    goto :goto_0

    .restart local v5       #width:I
    :cond_2
    move v3, v6

    .line 306
    goto :goto_1
.end method

.method private makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/android/launcher2/SamsungAppWidgetItem;
    .locals 17
    .parameter "context"
    .parameter "info"

    .prologue
    .line 457
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .local v4, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 460
    .local v6, item:Lcom/android/launcher2/SamsungAppWidgetItem;
    const/4 v12, 0x0

    .line 461
    .local v12, retArray:[Lcom/android/launcher2/SamsungAppWidgetItem;
    if-nez v6, :cond_a

    .line 462
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v14, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 463
    .local v3, bundle:Landroid/os/Bundle;
    if-eqz v3, :cond_8

    .line 464
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 465
    .local v10, keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v9, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 467
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 468
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v14, v15, :cond_0

    const-string v14, "com.samsung.sec.android.SAMSUNG_WIDGET"

    const/4 v15, 0x0

    const-string v16, "com.samsung.sec.android.SAMSUNG_WIDGET"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 470
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 473
    .end local v7           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 474
    .local v8, keySize:I
    if-lez v8, :cond_7

    .line 485
    new-array v12, v8, [Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 487
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_2

    .line 488
    const/4 v14, 0x0

    aput-object v14, v12, v5

    .line 487
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 491
    :cond_2
    const/4 v11, 0x0

    .local v11, lp:I
    :goto_2
    if-ge v11, v8, :cond_5

    .line 492
    new-instance v13, Lcom/android/launcher2/SamsungAppWidgetItem;

    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v14}, Lcom/android/launcher2/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    .line 494
    .local v13, widgetItem:Lcom/android/launcher2/SamsungAppWidgetItem;
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2, v14}, Lcom/android/launcher2/SamsungWidgetPackageManager;->updateWidgetItemFromXml(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 495
    iget v14, v13, Lcom/android/launcher2/SamsungAppWidgetItem;->mOrder:I

    if-ltz v14, :cond_4

    .line 496
    iget v14, v13, Lcom/android/launcher2/SamsungAppWidgetItem;->mOrder:I

    aput-object v13, v12, v14

    .line 491
    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 498
    :cond_4
    aput-object v13, v12, v11

    goto :goto_3

    .line 502
    .end local v13           #widgetItem:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_5
    const/4 v5, 0x0

    :goto_4
    array-length v14, v12

    if-ge v5, v14, :cond_7

    .line 503
    aget-object v14, v12, v5

    if-eqz v14, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    aget-object v15, v12, v5

    invoke-virtual {v14, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v5           #i:I
    .end local v11           #lp:I
    :cond_7
    move-object v14, v12

    .line 522
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v8           #keySize:I
    .end local v9           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    return-object v14

    .line 511
    .restart local v3       #bundle:Landroid/os/Bundle;
    :cond_8
    new-instance v6, Lcom/android/launcher2/SamsungAppWidgetItem;

    .end local v6           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    move-object/from16 v0, p2

    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-direct {v6, v14}, Lcom/android/launcher2/SamsungAppWidgetItem;-><init>(Ljava/lang/String;)V

    .line 512
    .restart local v6       #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, Lcom/android/launcher2/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    const/4 v14, 0x1

    new-array v12, v14, [Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 515
    const/4 v14, 0x0

    aput-object v6, v12, v14

    move-object v14, v12

    .line 516
    goto :goto_5

    .line 519
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .end local v3           #bundle:Landroid/os/Bundle;
    :cond_a
    move-object v14, v12

    .line 522
    goto :goto_5
.end method

.method private declared-synchronized stopAndWaitForWidgetsLoader()V
    .locals 3

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "Launcher.SWidgetPkgMgr"

    const-string v1, "  --> wait for widgets loader "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unbindCachedIconDrawable(Lcom/android/launcher2/SamsungAppWidgetItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 788
    if-eqz p1, :cond_0

    .line 789
    iget-object v0, p1, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 791
    :cond_0
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .locals 4

    .prologue
    .line 781
    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 782
    .local v1, item:Lcom/android/launcher2/SamsungAppWidgetItem;
    iget-object v2, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 785
    .end local v1           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_0
    return-void
.end method

.method private updateWidgetItem(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    .locals 22
    .parameter "context"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 528
    .local v9, manager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 530
    .local v3, c:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 536
    :goto_0
    if-nez v3, :cond_0

    .line 537
    const/16 v18, 0x0

    .line 628
    :goto_1
    return v18

    .line 532
    :catch_0
    move-exception v7

    .line 533
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 539
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 541
    .local v5, config:Landroid/content/res/Configuration;
    const/4 v11, 0x0

    .line 542
    .local v11, resClassName:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_class"

    const-string v20, "array"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 546
    if-eqz v11, :cond_2

    .line 547
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, classNames:[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v0, v4

    move/from16 v18, v0

    if-lez v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_1

    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 554
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 549
    .end local v4           #classNames:[Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 557
    .restart local v4       #classNames:[Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 558
    .local v14, resPreview:I
    const/4 v15, 0x0

    .line 559
    .local v15, resWidth:I
    const/4 v12, 0x0

    .line 560
    .local v12, resHeight:I
    const/4 v13, 0x0

    .line 562
    .local v13, resName:I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "preview"

    const-string v20, "drawable"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 564
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 566
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 568
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "plug_in_name"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 571
    if-eqz v13, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 573
    .local v16, title:Ljava/lang/String;
    :goto_2
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 576
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x0

    aget-object v18, v4, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    .line 577
    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    .line 578
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 579
    move-object/from16 v0, p2

    iput v14, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetPreview:I

    .line 581
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    .line 583
    .local v10, metrics:Landroid/util/DisplayMetrics;
    iget v6, v5, Landroid/content/res/Configuration;->orientation:I

    .line 584
    .local v6, curOrientation:I
    const/16 v17, 0x2

    .line 585
    .local v17, tmpOrientation:I
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v6, v0, :cond_7

    .line 586
    if-eqz v15, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 588
    if-eqz v12, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_4
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 590
    const/16 v17, 0x1

    .line 598
    :goto_5
    move/from16 v0, v17

    iput v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 599
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 601
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_width"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 603
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const-string v19, "min_height"

    const-string v20, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 606
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 607
    if-eqz v15, :cond_a

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_6
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 609
    if-eqz v12, :cond_b

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_7
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 618
    :goto_8
    iput v6, v5, Landroid/content/res/Configuration;->orientation:I

    .line 619
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 622
    const-string v18, "Launcher.SWidgetPkgMgr"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  -----> widget title="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " vertical width="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " height="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v18, "Launcher.SWidgetPkgMgr"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "  -----> widget title="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " horizontal width="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " height="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 571
    .end local v6           #curOrientation:I
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    .end local v10           #metrics:Landroid/util/DisplayMetrics;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #tmpOrientation:I
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 586
    .restart local v6       #curOrientation:I
    .restart local v8       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #metrics:Landroid/util/DisplayMetrics;
    .restart local v16       #title:Ljava/lang/String;
    .restart local v17       #tmpOrientation:I
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 588
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 592
    :cond_7
    if-eqz v15, :cond_8

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_9
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 594
    if-eqz v12, :cond_9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_a
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_5

    .line 592
    :cond_8
    const/16 v18, 0x0

    goto :goto_9

    .line 594
    :cond_9
    const/16 v18, 0x0

    goto :goto_a

    .line 607
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 609
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 612
    :cond_c
    if-eqz v15, :cond_d

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_b
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 614
    if-eqz v12, :cond_e

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_c
    move/from16 v0, v18

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_8

    .line 612
    :cond_d
    const/16 v18, 0x0

    goto :goto_b

    .line 614
    :cond_e
    const/16 v18, 0x0

    goto :goto_c
.end method

.method private updateWidgetItemFromXml(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Z
    .locals 27
    .parameter "context"
    .parameter "item"
    .parameter "info"
    .parameter "key"

    .prologue
    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 634
    .local v13, manager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 636
    .local v3, c:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 642
    :goto_0
    if-nez v3, :cond_0

    .line 643
    const/16 v24, 0x0

    .line 768
    :goto_1
    return v24

    .line 638
    :catch_0
    move-exception v10

    .line 639
    .local v10, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 644
    .end local v10           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 645
    .local v6, cr:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 647
    .local v5, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    .line 648
    .local v15, parser:Landroid/content/res/XmlResourceParser;
    if-nez v15, :cond_1

    .line 649
    const/16 v24, 0x0

    goto :goto_1

    .line 654
    :cond_1
    :try_start_1
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v21

    .local v21, type:I
    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 663
    .end local v21           #type:I
    :cond_2
    :goto_2
    :try_start_2
    const-string v24, "plug_in_name"

    const-string v25, "string"

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 664
    .local v17, resName:I
    if-eqz v17, :cond_5

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 667
    .local v19, title:Ljava/lang/String;
    :goto_3
    const/16 v24, 0x0

    const-string v25, "widgetId"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 670
    .local v22, widgetId:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "description"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 671
    .local v8, description:I
    const/16 v24, 0x0

    const-string v25, "icon"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 674
    .local v12, icon:I
    const/16 v24, 0x0

    const-string v25, "themeName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 677
    .local v18, themeName:Ljava/lang/String;
    const/16 v24, 0x0

    const-string v25, "preview"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 678
    .local v16, preview:I
    const/16 v24, 0x0

    const-string v25, "width"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    .line 679
    .local v23, width:I
    const/16 v24, 0x0

    const-string v25, "height"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    .line 680
    .local v11, height:I
    const/16 v24, 0x0

    const-string v25, "class"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v4

    .line 683
    .local v4, className:Ljava/lang/String;
    const/4 v14, 0x0

    .line 685
    .local v14, order:Ljava/lang/String;
    const/16 v24, 0x0

    :try_start_3
    const-string v25, "order"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v15, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v14

    .line 689
    :goto_4
    :try_start_4
    sget-boolean v24, Lcom/android/launcher2/SamsungWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v24, :cond_3

    .line 690
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].widgetId : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].description : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].icon : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].themeName : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].preview : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].width : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].height : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].className : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "].order : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_3
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetId:Ljava/lang/String;

    .line 703
    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 708
    :try_start_5
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    .line 713
    :goto_5
    :try_start_6
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 714
    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetPreview:I

    .line 717
    if-lez v8, :cond_4

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .end local v19           #title:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mDescription:Ljava/lang/String;

    .line 718
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    .line 724
    :try_start_7
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mOrder:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_4

    .line 729
    :goto_6
    :try_start_8
    iget v7, v5, Landroid/content/res/Configuration;->orientation:I

    .line 730
    .local v7, curOrientation:I
    const/16 v20, 0x2

    .line 731
    .local v20, tmpOrientation:I
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v7, v0, :cond_6

    .line 732
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 733
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 734
    const/16 v20, 0x1

    .line 740
    :goto_7
    move/from16 v0, v20

    iput v0, v5, Landroid/content/res/Configuration;->orientation:I

    .line 741
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 743
    const/16 v24, 0x2

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 744
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 745
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 751
    :goto_8
    iput v7, v5, Landroid/content/res/Configuration;->orientation:I

    .line 752
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 755
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "(Xml)  -----> widget title="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " vertical width="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " height="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v24, "Launcher.SWidgetPkgMgr"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "(Xml)  -----> widget title="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " horizontal width="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " height="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    .line 768
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 656
    .end local v4           #className:Ljava/lang/String;
    .end local v7           #curOrientation:I
    .end local v8           #description:I
    .end local v11           #height:I
    .end local v12           #icon:I
    .end local v14           #order:Ljava/lang/String;
    .end local v16           #preview:I
    .end local v17           #resName:I
    .end local v18           #themeName:Ljava/lang/String;
    .end local v20           #tmpOrientation:I
    .end local v22           #widgetId:Ljava/lang/String;
    .end local v23           #width:I
    :catch_1
    move-exception v9

    .line 657
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2

    .line 658
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v9

    .line 659
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 664
    .end local v9           #e:Ljava/io/IOException;
    .restart local v17       #resName:I
    :cond_5
    :try_start_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3

    .line 709
    .restart local v4       #className:Ljava/lang/String;
    .restart local v8       #description:I
    .restart local v11       #height:I
    .restart local v12       #icon:I
    .restart local v14       #order:Ljava/lang/String;
    .restart local v16       #preview:I
    .restart local v18       #themeName:Ljava/lang/String;
    .restart local v19       #title:Ljava/lang/String;
    .restart local v22       #widgetId:Ljava/lang/String;
    .restart local v23       #width:I
    :catch_3
    move-exception v9

    .line 710
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f02006b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_5

    .line 762
    .end local v4           #className:Ljava/lang/String;
    .end local v8           #description:I
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #height:I
    .end local v12           #icon:I
    .end local v14           #order:Ljava/lang/String;
    .end local v16           #preview:I
    .end local v17           #resName:I
    .end local v18           #themeName:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    .end local v22           #widgetId:Ljava/lang/String;
    .end local v23           #width:I
    :catch_4
    move-exception v9

    .line 763
    .local v9, e:Landroid/content/res/Resources$NotFoundException;
    const-string v24, "Launcher.SWidgetPkgMgr"

    const-string v25, "Resource not found exception :"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {v9}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 765
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 725
    .end local v9           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v4       #className:Ljava/lang/String;
    .restart local v8       #description:I
    .restart local v11       #height:I
    .restart local v12       #icon:I
    .restart local v14       #order:Ljava/lang/String;
    .restart local v16       #preview:I
    .restart local v17       #resName:I
    .restart local v18       #themeName:Ljava/lang/String;
    .restart local v22       #widgetId:Ljava/lang/String;
    .restart local v23       #width:I
    :catch_5
    move-exception v9

    .line 726
    .local v9, e:Ljava/lang/NumberFormatException;
    const/16 v24, -0x1

    :try_start_a
    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mOrder:I

    goto/16 :goto_6

    .line 736
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #curOrientation:I
    .restart local v20       #tmpOrientation:I
    :cond_6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 737
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    goto/16 :goto_7

    .line 747
    :cond_7
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 748
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_8

    .line 686
    .end local v7           #curOrientation:I
    .end local v20           #tmpOrientation:I
    .restart local v19       #title:Ljava/lang/String;
    :catch_6
    move-exception v24

    goto/16 :goto_4
.end method


# virtual methods
.method declared-synchronized addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/android/launcher2/SamsungWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    .line 190
    const-string v5, "Launcher.SWidgetPkgMgr"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addPackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 194
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 195
    iget-object v5, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v5}, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    monitor-exit p0

    return-void

    .line 200
    .restart local v4       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 202
    .local v2, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/SamsungWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/android/launcher2/SamsungAppWidgetItem;

    move-result-object v3

    .line 203
    .local v3, item:[Lcom/android/launcher2/SamsungAppWidgetItem;
    if-eqz v3, :cond_3

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 205
    aget-object v5, v3, v0

    if-eqz v5, :cond_4

    .line 206
    iget-object v5, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #item:[Lcom/android/launcher2/SamsungAppWidgetItem;
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public allocWidgetId()J
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 125
    .local v0, id:J
    return-wide v0
.end method

.method public allocWidgetId(Landroid/content/Context;)J
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 130
    const-wide/16 v8, -0x1

    .line 131
    .local v8, id:J
    const/4 v6, 0x0

    .line 134
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    const/4 v7, 0x0

    .line 135
    .local v7, count:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appWidgetId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    if-eqz v6, :cond_1

    .line 140
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_1
    if-gtz v7, :cond_0

    .line 144
    return-wide v8
.end method

.method public createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;)Lcom/android/launcher2/SamsungAppWidgetInfo;
    .locals 2
    .parameter "context"
    .parameter "item"

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->allocWidgetId(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/launcher2/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;J)Lcom/android/launcher2/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0
.end method

.method public createWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;Lcom/android/launcher2/SamsungAppWidgetInfo;)Lcom/android/launcher2/SamsungAppWidgetInfo;
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "info"

    .prologue
    .line 371
    iget-wide v0, p3, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->allocWidgetId(Landroid/content/Context;)J

    move-result-wide v0

    :goto_0
    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/launcher2/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;JLcom/android/launcher2/SamsungAppWidgetInfo;)Lcom/android/launcher2/SamsungAppWidgetInfo;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p3, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    goto :goto_0
.end method

.method public destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V
    .locals 5
    .parameter "group"
    .parameter "info"

    .prologue
    .line 375
    iget-wide v0, p2, Lcom/android/launcher2/SamsungAppWidgetInfo;->widgetId:J

    .line 376
    .local v0, widgetId:J
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 377
    return-void
.end method

.method public findWidget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/SamsungAppWidgetItem;
    .locals 4
    .parameter "packageName"
    .parameter "className"
    .parameter "themeName"

    .prologue
    .line 403
    iget-object v3, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 404
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 406
    .local v2, item:Lcom/android/launcher2/SamsungAppWidgetItem;
    iget-object v3, v2, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    if-eqz p3, :cond_0

    .line 408
    iget-object v3, v2, Lcom/android/launcher2/SamsungAppWidgetItem;->mThemeName:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    .end local v2           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_0
    :goto_1
    return-object v2

    .line 404
    .restart local v2       #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v2           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getWidgetItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SamsungAppWidgetItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initInstance(Landroid/app/ActivityGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/app/ActivityGroup;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    return-void
.end method

.method public isWidgetLoaded()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    return v0
.end method

.method public loadWidgetPreview(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 283
    .local v2, packageContext:Landroid/content/Context;
    :try_start_0
    iget-object v3, p2, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 289
    :goto_0
    if-eqz v2, :cond_0

    .line 290
    iget v3, p2, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetPreview:I

    if-eqz v3, :cond_0

    .line 291
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p2, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetPreview:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    :cond_0
    if-nez v0, :cond_1

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SamsungWidgetPackageManager;->makeFailPreviewImage(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    :cond_1
    return-object v0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public pauseWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V
    .locals 0
    .parameter "group"
    .parameter "info"

    .prologue
    .line 380
    invoke-virtual {p2, p1}, Lcom/android/launcher2/SamsungAppWidgetInfo;->fireOnPause(Landroid/content/Context;)V

    .line 381
    return-void
.end method

.method declared-synchronized removePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    sget-boolean v6, Lcom/android/launcher2/SamsungWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    .line 215
    const-string v6, "Launcher.SWidgetPkgMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 218
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 220
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v5, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/SamsungAppWidgetItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 222
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 223
    .local v4, item:Lcom/android/launcher2/SamsungAppWidgetItem;
    iget-object v6, v4, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v4           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v6}, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 229
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/SamsungAppWidgetItem;>;"
    :cond_3
    monitor-exit p0

    return-void

    .line 234
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v5       #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/SamsungAppWidgetItem;>;"
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    .line 235
    .local v0, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher2/SamsungAppWidgetItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 236
    .restart local v4       #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    invoke-direct {p0, v4}, Lcom/android/launcher2/SamsungWidgetPackageManager;->unbindCachedIconDrawable(Lcom/android/launcher2/SamsungAppWidgetItem;)V

    .line 237
    iget-object v6, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 238
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 214
    .end local v0           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/android/launcher2/SamsungAppWidgetItem;>;"
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    .end local v5           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/SamsungAppWidgetItem;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public resumeWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungAppWidgetInfo;)V
    .locals 0
    .parameter "group"
    .parameter "info"

    .prologue
    .line 384
    invoke-virtual {p2, p1}, Lcom/android/launcher2/SamsungAppWidgetInfo;->fireOnResume(Landroid/content/Context;)V

    .line 385
    return-void
.end method

.method declared-synchronized scanPackage(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z

    .line 151
    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 153
    new-instance v0, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;-><init>(Lcom/android/launcher2/SamsungWidgetPackageManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    .line 154
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    const-string v2, "SamsungWidgets Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    .line 155
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized start(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "localeChanged"

    .prologue
    .line 159
    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mIsWidgetLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 162
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 164
    if-eqz p2, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mItemCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->stopAndWaitForWidgetsLoader()V

    .line 773
    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetPackageManager;->unbindCachedIconDrawables()V

    .line 774
    return-void
.end method

.method declared-synchronized updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    sget-boolean v7, Lcom/android/launcher2/SamsungWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    .line 245
    const-string v7, "Launcher.SWidgetPkgMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePackage="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mWidgetLoader:Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;

    invoke-virtual {v7}, Lcom/android/launcher2/SamsungWidgetPackageManager$SamsungWidgetsLoader;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SamsungWidgetPackageManager;->scanPackage(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_2
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 252
    iget-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 253
    .local v0, count:I
    const/4 v5, 0x0

    .line 254
    .local v5, matchItem:Lcom/android/launcher2/SamsungAppWidgetItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 255
    iget-object v7, p0, Lcom/android/launcher2/SamsungWidgetPackageManager;->mSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 256
    .local v4, item:Lcom/android/launcher2/SamsungAppWidgetItem;
    iget-object v7, v4, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 257
    move-object v5, v4

    .line 262
    .end local v4           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_3
    if-eqz v5, :cond_1

    .line 263
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/SamsungWidgetPackageManager;->findWidgetForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 264
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 265
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 266
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v5, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->updateWidgetItem(Landroid/content/Context;Lcom/android/launcher2/SamsungAppWidgetItem;Landroid/content/pm/ResolveInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    .line 254
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4       #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    .end local v5           #matchItem:Lcom/android/launcher2/SamsungAppWidgetItem;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method
