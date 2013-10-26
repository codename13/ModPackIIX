.class Lcom/android/launcher2/WidgetSizes;
.super Ljava/lang/Object;
.source "WidgetSizes.java"


# static fields
.field static final EXTRA_WIDGET_RESIZE_SPANX:Ljava/lang/String; = "widgetspanx"

.field static final EXTRA_WIDGET_RESIZE_SPANY:Ljava/lang/String; = "widgetspany"

.field static final EXTRA_WIDGET_RESIZE_WIDGETID:Ljava/lang/String; = "widgetId"

.field static final WIDGET_RESIZE:Ljava/lang/String; = "com.sec.android.widgetapp.APPWIDGET_RESIZE"

.field static final WIDGET_SUPPORT_INFO:Ljava/lang/String; = "com.sec.android.appwidget.widgetinfo"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxXSpan:I

.field private mMaxYSpan:I

.field private mMinXSpan:I

.field private mMinYSpan:I

.field private mResizeMode:I

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mValidSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private pureGoogle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/16 v2, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    .line 25
    iput v2, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    .line 26
    iput v2, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    .line 27
    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    .line 28
    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    .line 29
    iput-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    .line 35
    iput-object p1, p0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-direct {v0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 37
    return-void
.end method

.method private add(II)V
    .locals 4
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v3, 0x1

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    aput p2, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    .line 122
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    .line 124
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    .line 125
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    .line 127
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    if-eq v0, v1, :cond_0

    .line 128
    iput v3, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    .line 130
    :cond_0
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    if-eq v0, v1, :cond_1

    .line 131
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    .line 133
    :cond_1
    return-void
.end method

.method private loadAsPureGoogle(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x1

    .line 136
    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    .line 137
    iget-object v1, p0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v0

    .line 138
    .local v0, result:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    .line 139
    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    .line 140
    iput-boolean v3, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    .line 141
    return-void
.end method


# virtual methods
.method public capHeight(I)I
    .locals 2
    .parameter "h"

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v0, :cond_0

    .line 161
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public capWidth(I)I
    .locals 2
    .parameter "w"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v0, :cond_0

    .line 157
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public getMinXSpan()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    return v0
.end method

.method public getMinYSpan()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    return v0
.end method

.method public isAvailableSize(II)Z
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_1

    .line 186
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v2

    .line 190
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 191
    goto :goto_0

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 194
    .local v1, s:[I
    aget v4, v1, v2

    if-ne v4, p1, :cond_3

    aget v4, v1, v3

    if-ne v4, p2, :cond_3

    move v2, v3

    .line 195
    goto :goto_0
.end method

.method public isAvailableSize(IIII)Z
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "minX"
    .parameter "minY"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    sget-boolean v4, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v4, :cond_1

    .line 167
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeRemoveMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v3

    .line 171
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v4, :cond_3

    .line 172
    if-lt p1, p3, :cond_2

    if-lt p2, p4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 175
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 176
    .local v1, s:[I
    aget v4, v1, v3

    if-ne v4, p1, :cond_4

    aget v4, v1, v2

    if-ne v4, p2, :cond_4

    move v3, v2

    .line 177
    goto :goto_0
.end method

.method public load(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/res/Resources;)V
    .locals 27
    .parameter "info"
    .parameter "resources"

    .prologue
    .line 40
    const/16 v19, 0x0

    .line 42
    .local v19, ret:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 43
    .local v18, pm:Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string v24, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    const/16 v24, 0x80

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 47
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v14, 0x0

    .line 48
    .local v14, packageContext:Landroid/content/Context;
    const/4 v15, 0x0

    .line 49
    .local v15, packageResources:Landroid/content/res/Resources;
    const/4 v13, 0x0

    .line 51
    .local v13, localPackageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 57
    :goto_0
    if-eqz v14, :cond_3

    .line 58
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 59
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 61
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 62
    .local v8, i:Landroid/content/pm/ResolveInfo;
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 63
    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    const-string v25, "com.sec.android.appwidget.widgetinfo"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    .line 65
    .local v17, parser:Landroid/content/res/XmlResourceParser;
    if-eqz v17, :cond_3

    .line 69
    :cond_1
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v23

    .local v23, type:I
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 77
    .end local v23           #type:I
    :cond_2
    :goto_1
    const/16 v24, 0x0

    const-string v25, "supportCellSizes"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 79
    .local v20, size:I
    if-lez v20, :cond_3

    .line 80
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 88
    .end local v8           #i:Landroid/content/pm/ResolveInfo;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v17           #parser:Landroid/content/res/XmlResourceParser;
    .end local v20           #size:I
    :cond_3
    if-eqz v19, :cond_6

    .line 95
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v5, v0, [I

    .line 96
    .local v5, defaultSpan:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    .line 97
    const/16 v24, 0x0

    aget v24, v5, v24

    const/16 v25, 0x1

    aget v25, v5, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/WidgetSizes;->add(II)V

    .line 99
    move-object/from16 v4, v19

    .local v4, arr$:[Ljava/lang/String;
    array-length v11, v4

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v11, :cond_7

    aget-object v16, v4, v9

    .line 100
    .local v16, parsed:Ljava/lang/String;
    const/16 v24, 0x0

    const/16 v25, 0x78

    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 101
    .local v21, spanX:I
    const/16 v24, 0x78

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 104
    .local v22, spanY:I
    const/16 v24, 0x0

    aget v24, v5, v24

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v24, 0x1

    aget v24, v5, v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 105
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/WidgetSizes;->add(II)V

    .line 99
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 53
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #defaultSpan:[I
    .end local v9           #i$:I
    .end local v11           #len$:I
    .end local v16           #parsed:Ljava/lang/String;
    .end local v21           #spanX:I
    .end local v22           #spanY:I
    :catch_0
    move-exception v7

    .line 54
    .local v7, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 71
    .end local v7           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8       #i:Landroid/content/pm/ResolveInfo;
    .local v9, i$:Ljava/util/Iterator;
    .restart local v17       #parser:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v6

    .line 72
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    .line 73
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v6

    .line 74
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 112
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #i:Landroid/content/pm/ResolveInfo;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v17           #parser:Landroid/content/res/XmlResourceParser;
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/WidgetSizes;->loadAsPureGoogle(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 115
    :cond_7
    return-void
.end method

.method public resizeMode()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    return v0
.end method
