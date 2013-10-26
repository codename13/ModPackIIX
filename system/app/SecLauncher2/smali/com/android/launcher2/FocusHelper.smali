.class public Lcom/android/launcher2/FocusHelper;
.super Ljava/lang/Object;
.source "FocusHelper.java"


# static fields
.field private static sHomeFragment:Lcom/android/launcher2/HomeFragment;

.field private static sIsLoopingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_DisablePageRotation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;
    .locals 4
    .parameter
    .parameter "i"
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 943
    .local v0, count:I
    add-int v1, p1, p2

    .line 944
    .local v1, newI:I
    :goto_0
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 945
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 946
    .local v2, newV:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_0

    .line 951
    .end local v2           #newV:Landroid/view/View;
    :goto_1
    return-object v2

    .line 949
    .restart local v2       #newV:Landroid/view/View;
    :cond_0
    add-int/2addr v1, p2

    .line 950
    goto :goto_0

    .line 951
    .end local v2           #newV:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 127
    .local v0, p:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TabHost;

    if-nez v1, :cond_0

    .line 128
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    check-cast v0, Landroid/widget/TabHost;

    .end local v0           #p:Landroid/view/ViewParent;
    return-object v0
.end method

.method private static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;
    .locals 2
    .parameter "container"
    .parameter "i"

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 906
    .local v0, parent:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutChildren;

    return-object v1
.end method

.method private static getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 5
    .parameter "layout"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/CellLayout;",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 917
    .local v0, cellCountX:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 918
    .local v1, count:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v3, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 920
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 919
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 922
    :cond_0
    new-instance v4, Lcom/android/launcher2/FocusHelper$1;

    invoke-direct {v4, v0}, Lcom/android/launcher2/FocusHelper$1;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 932
    return-object v3
.end method

.method private static getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 21
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "lineDelta"

    .prologue
    .line 971
    invoke-static/range {p0 .. p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v14

    .line 972
    .local v14, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 973
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    .line 974
    .local v2, cellCountY:I
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 975
    .local v10, row:I
    add-int v8, v10, p3

    .line 976
    .local v8, newRow:I
    if-ltz v8, :cond_7

    if-ge v8, v2, :cond_7

    .line 977
    const v3, 0x7f7fffff

    .line 978
    .local v3, closestDistance:F
    const/4 v4, -0x1

    .line 979
    .local v4, closestIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 980
    .local v6, index:I
    if-gez p3, :cond_1

    const/4 v5, -0x1

    .line 981
    .local v5, endIndex:I
    :goto_0
    if-eq v6, v5, :cond_6

    .line 982
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 983
    .local v9, newV:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 984
    .local v13, tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-gez p3, :cond_3

    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ge v15, v10, :cond_2

    const/4 v11, 0x1

    .line 985
    .local v11, satisfiesRow:Z
    :goto_1
    if-eqz v11, :cond_0

    instance-of v15, v9, Lcom/android/launcher2/AppIconView;

    if-eqz v15, :cond_0

    .line 987
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-double v15, v15

    const-wide/high16 v17, 0x4000

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v17, v0

    iget v0, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    double-to-float v12, v15

    .line 989
    .local v12, tmpDistance:F
    cmpg-float v15, v12, v3

    if-gez v15, :cond_0

    .line 990
    move v4, v6

    .line 991
    move v3, v12

    .line 994
    .end local v12           #tmpDistance:F
    :cond_0
    if-gt v6, v5, :cond_5

    .line 995
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 980
    .end local v5           #endIndex:I
    .end local v9           #newV:Landroid/view/View;
    .end local v11           #satisfiesRow:Z
    .end local v13           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    .line 984
    .restart local v5       #endIndex:I
    .restart local v9       #newV:Landroid/view/View;
    .restart local v13       #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    iget v15, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-le v15, v10, :cond_4

    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 997
    .restart local v11       #satisfiesRow:Z
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 1000
    .end local v9           #newV:Landroid/view/View;
    .end local v11           #satisfiesRow:Z
    .end local v13           #tmpLp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_6
    const/4 v15, -0x1

    if-le v4, v15, :cond_7

    .line 1001
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 1004
    .end local v3           #closestDistance:F
    .end local v4           #closestIndex:I
    .end local v5           #endIndex:I
    .end local v6           #index:I
    :goto_2
    return-object v15

    :cond_7
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "i"
    .parameter "delta"

    .prologue
    .line 955
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 956
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {v0, p2, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "layout"
    .parameter "parent"
    .parameter "v"
    .parameter "delta"

    .prologue
    .line 960
    invoke-static {p0, p1}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    .line 961
    .local v0, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/android/launcher2/FocusHelper;->findIndexOfIcon(Ljava/util/ArrayList;II)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private static getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;
    .locals 2
    .parameter "container"
    .parameter "index"

    .prologue
    .line 306
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 307
    .local v0, page:Landroid/view/ViewGroup;
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutMenu;

    if-eqz v1, :cond_0

    .line 309
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #page:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 311
    .restart local v0       #page:Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method static handleAppsCustomizeTabKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 232
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 233
    .local v5, tabHost:Landroid/widget/TabHost;
    const v11, 0x1020011

    invoke-virtual {v5, v11}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, contents:Landroid/view/ViewGroup;
    move-object v11, v5

    .line 235
    check-cast v11, Lcom/android/launcher2/MenuTabHost;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuTabHost;->getMenuOrMarketButton()Landroid/view/View;

    move-result-object v4

    .line 236
    .local v4, menuOrMarket:Landroid/view/View;
    const v11, 0x7f070058

    invoke-virtual {v5, v11}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 237
    .local v6, tabs:Landroid/view/ViewGroup;
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 238
    .local v8, tabs_child:Landroid/view/ViewGroup;
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 239
    .local v9, tabs_widgets:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 240
    .local v7, tabs_apps:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuFragment()Lcom/android/launcher2/MenuFragment;

    move-result-object v3

    .line 241
    .local v3, menuFragment:Lcom/android/launcher2/MenuFragment;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 242
    .local v0, action:I
    const/4 v11, 0x1

    if-eq v0, v11, :cond_1

    const/4 v2, 0x1

    .line 243
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 244
    .local v10, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 299
    :cond_0
    :goto_1
    return v10

    .line 242
    .end local v2           #handleKeyEvent:Z
    .end local v10           #wasHandled:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 246
    .restart local v2       #handleKeyEvent:Z
    .restart local v10       #wasHandled:Z
    :sswitch_0
    if-eqz v2, :cond_2

    .line 247
    if-ne p0, v9, :cond_2

    .line 248
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 249
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->playSoundEffect(I)V

    .line 252
    :cond_2
    const/4 v10, 0x1

    .line 253
    goto :goto_1

    .line 255
    :sswitch_1
    if-eqz v2, :cond_3

    .line 257
    if-ne p0, v7, :cond_4

    .line 258
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    .line 259
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->playSoundEffect(I)V

    .line 265
    :cond_3
    :goto_2
    const/4 v10, 0x1

    .line 266
    goto :goto_1

    .line 260
    :cond_4
    if-ne p0, v9, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 261
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 262
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    .line 268
    :sswitch_2
    if-eqz v2, :cond_0

    .line 270
    if-ne p0, v4, :cond_0

    .line 271
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 272
    const/4 v10, 0x1

    goto :goto_1

    .line 279
    :sswitch_3
    if-eqz v2, :cond_7

    .line 280
    if-ne p0, v7, :cond_6

    .line 281
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/view/View;->setPressed(Z)V

    .line 295
    :cond_5
    :goto_3
    const/4 v10, 0x1

    .line 296
    goto :goto_1

    .line 282
    :cond_6
    if-ne p0, v9, :cond_5

    .line 283
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/view/View;->setPressed(Z)V

    goto :goto_3

    .line 285
    :cond_7
    if-ne p0, v7, :cond_8

    .line 286
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setPressed(Z)V

    .line 287
    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectAppsTab()V

    .line 288
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 289
    :cond_8
    if-ne p0, v9, :cond_5

    .line 290
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setPressed(Z)V

    .line 291
    invoke-virtual {v3}, Lcom/android/launcher2/MenuFragment;->selectWidgetsTab()V

    .line 292
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_3

    .line 244
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_3
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method static handleDownloadedIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 138
    invoke-static {p0}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v3

    .line 139
    .local v3, tabHost:Landroid/widget/TabHost;
    const v9, 0x1020011

    invoke-virtual {v3, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 141
    .local v1, contents:Landroid/view/ViewGroup;
    const v9, 0x7f070058

    invoke-virtual {v3, v9}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 142
    .local v4, tabs:Landroid/view/ViewGroup;
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 143
    .local v5, tabs_child:Landroid/view/ViewGroup;
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 144
    .local v6, tabs_widgets:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 145
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 146
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v7, 0x0

    .line 147
    .local v7, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 170
    :cond_0
    :goto_1
    return v7

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_1
    move v2, v8

    .line 145
    goto :goto_0

    .line 149
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_0
    if-eqz v2, :cond_2

    .line 151
    if-eq p0, v3, :cond_2

    .line 152
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 153
    invoke-virtual {v6, v8}, Landroid/view/View;->playSoundEffect(I)V

    .line 156
    :cond_2
    const/4 v7, 0x1

    .line 157
    goto :goto_1

    .line 159
    :pswitch_1
    const/4 v7, 0x1

    .line 160
    goto :goto_1

    .line 162
    :pswitch_2
    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 164
    const/4 v7, 0x1

    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderAddItemKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    .line 1247
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1248
    .local v3, parent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    .line 1249
    .local v4, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 1250
    .local v1, folder:Lcom/android/launcher2/Folder;
    iget-object v5, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 1252
    .local v5, title:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1253
    .local v0, action:I
    if-eq v0, v2, :cond_0

    .line 1255
    .local v2, handleKeyEvent:Z
    :goto_0
    const/4 v6, 0x0

    .line 1256
    .local v6, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 1268
    :goto_1
    :pswitch_0
    return v6

    .line 1253
    .end local v2           #handleKeyEvent:Z
    .end local v6           #wasHandled:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1260
    .restart local v2       #handleKeyEvent:Z
    .restart local v6       #wasHandled:Z
    :pswitch_1
    if-eqz v2, :cond_1

    .line 1261
    invoke-virtual {v5}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 1263
    :cond_1
    const/4 v6, 0x1

    .line 1264
    goto :goto_1

    .line 1256
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleFolderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    .line 1150
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayoutChildren;

    .line 1151
    .local v6, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1152
    .local v4, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    .line 1153
    .local v7, scrollView:Landroid/widget/ScrollView;
    invoke-virtual {v7}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Folder;

    .line 1154
    .local v1, folder:Lcom/android/launcher2/Folder;
    iget-object v8, v1, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    .line 1155
    .local v8, title:Landroid/view/View;
    const v11, 0x7f07001c

    invoke-virtual {v1, v11}, Lcom/android/launcher2/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1157
    .local v2, folderAddButton:Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1158
    .local v0, action:I
    if-eq v0, v10, :cond_0

    move v3, v10

    .line 1159
    .local v3, handleKeyEvent:Z
    :goto_0
    const/4 v9, 0x0

    .line 1160
    .local v9, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1243
    :goto_1
    return v9

    .line 1158
    .end local v3           #handleKeyEvent:Z
    .end local v9           #wasHandled:Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1162
    .restart local v3       #handleKeyEvent:Z
    .restart local v9       #wasHandled:Z
    :sswitch_0
    if-eqz v3, :cond_1

    .line 1164
    invoke-static {v4, v6, p0, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1165
    .local v5, newIcon:Landroid/view/View;
    if-eqz v5, :cond_1

    .line 1166
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1169
    .end local v5           #newIcon:Landroid/view/View;
    :cond_1
    const/4 v9, 0x1

    .line 1170
    goto :goto_1

    .line 1172
    :sswitch_1
    if-eqz v3, :cond_2

    .line 1175
    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1176
    invoke-static {v4, v6, p0, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1177
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 1178
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1194
    .end local v5           #newIcon:Landroid/view/View;
    :cond_2
    :goto_2
    const/4 v9, 0x1

    .line 1195
    goto :goto_1

    .line 1180
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_3
    if-eqz v2, :cond_4

    .line 1181
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 1183
    :cond_4
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    goto :goto_2

    .line 1187
    .end local v5           #newIcon:Landroid/view/View;
    :cond_5
    invoke-static {v4, v6, v12, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1188
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1189
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 1197
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_2
    if-eqz v3, :cond_6

    .line 1199
    invoke-static {v4, v6, p0, v12}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1200
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_7

    .line 1201
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1206
    .end local v5           #newIcon:Landroid/view/View;
    :cond_6
    :goto_3
    const/4 v9, 0x1

    .line 1207
    goto :goto_1

    .line 1203
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_7
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    goto :goto_3

    .line 1209
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_3
    if-eqz v3, :cond_8

    .line 1211
    invoke-static {v4, v6, p0, v10}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 1212
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_9

    .line 1213
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1218
    .end local v5           #newIcon:Landroid/view/View;
    :cond_8
    :goto_4
    const/4 v9, 0x1

    .line 1219
    goto :goto_1

    .line 1215
    .restart local v5       #newIcon:Landroid/view/View;
    :cond_9
    invoke-virtual {v8}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    goto :goto_4

    .line 1221
    .end local v5           #newIcon:Landroid/view/View;
    :sswitch_4
    if-eqz v3, :cond_a

    .line 1223
    invoke-static {v4, v6, v12, v10}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1224
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_a

    .line 1225
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1228
    .end local v5           #newIcon:Landroid/view/View;
    :cond_a
    const/4 v9, 0x1

    .line 1229
    goto :goto_1

    .line 1231
    :sswitch_5
    if-eqz v3, :cond_b

    .line 1233
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    invoke-static {v4, v6, v10, v12}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v5

    .line 1235
    .restart local v5       #newIcon:Landroid/view/View;
    if-eqz v5, :cond_b

    .line 1236
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 1239
    .end local v5           #newIcon:Landroid/view/View;
    :cond_b
    const/4 v9, 0x1

    .line 1240
    goto :goto_1

    .line 1160
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x7a -> :sswitch_4
        0x7b -> :sswitch_5
    .end sparse-switch
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 29
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 709
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 710
    .local v23, parent:Landroid/view/ViewGroup;
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 711
    .local v13, launcher:Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v27

    const v28, 0x7f07002e

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/Workspace;

    .line 712
    .local v26, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 713
    .local v22, pageIndex:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v21

    .line 716
    .local v21, pageCount:I
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 717
    .local v7, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 718
    .local v3, cc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    .line 724
    .local v17, newIcon_left:Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 725
    .local v2, action:I
    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v2, v0, :cond_0

    const/4 v12, 0x1

    .line 726
    .local v12, handleKeyEvent:Z
    :goto_0
    const/16 v25, 0x0

    .line 727
    .local v25, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 898
    :goto_1
    return v25

    .line 725
    .end local v12           #handleKeyEvent:Z
    .end local v25           #wasHandled:Z
    :cond_0
    const/4 v12, 0x0

    goto :goto_0

    .line 729
    .restart local v12       #handleKeyEvent:Z
    .restart local v25       #wasHandled:Z
    :pswitch_0
    if-eqz v12, :cond_2

    .line 730
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_1

    .line 731
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 732
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 733
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 735
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 736
    .restart local v7       #cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 737
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v27

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v7, v3, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v17

    .line 740
    :cond_1
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 741
    if-eqz v17, :cond_3

    .line 742
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestFocus()Z

    .line 790
    :cond_2
    :goto_2
    const/16 v25, 0x1

    .line 791
    goto :goto_1

    .line 744
    :cond_3
    if-lez v22, :cond_4

    .line 745
    add-int/lit8 v24, v22, -0x1

    .line 751
    .local v24, prevPage:I
    :goto_3
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 752
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 753
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 754
    .local v9, cl_left:Lcom/android/launcher2/CellLayout;
    if-eqz v9, :cond_2

    .line 755
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 756
    .local v4, cc_left:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    .line 757
    .local v19, newIcon_prevpage:Landroid/view/View;
    if-eqz v19, :cond_2

    .line 758
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 746
    .end local v4           #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    .end local v9           #cl_left:Lcom/android/launcher2/CellLayout;
    .end local v19           #newIcon_prevpage:Landroid/view/View;
    .end local v24           #prevPage:I
    :cond_4
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_5

    .line 747
    add-int/lit8 v24, v21, -0x1

    .restart local v24       #prevPage:I
    goto :goto_3

    .line 749
    .end local v24           #prevPage:I
    :cond_5
    move/from16 v24, v22

    .restart local v24       #prevPage:I
    goto :goto_3

    .line 763
    .end local v24           #prevPage:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 764
    .local v11, clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 765
    .local v8, cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 767
    .local v16, newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_7

    .line 768
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 770
    :cond_7
    if-lez v22, :cond_8

    .line 771
    add-int/lit8 v24, v22, -0x1

    .line 777
    .restart local v24       #prevPage:I
    :goto_4
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 778
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 779
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 780
    .restart local v9       #cl_left:Lcom/android/launcher2/CellLayout;
    if-eqz v9, :cond_2

    .line 781
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    .line 782
    .restart local v4       #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v9, v4, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v19

    .line 783
    .restart local v19       #newIcon_prevpage:Landroid/view/View;
    if-eqz v19, :cond_2

    .line 784
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_2

    .line 772
    .end local v4           #cc_left:Lcom/android/launcher2/CellLayoutChildren;
    .end local v9           #cl_left:Lcom/android/launcher2/CellLayout;
    .end local v19           #newIcon_prevpage:Landroid/view/View;
    .end local v24           #prevPage:I
    :cond_8
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_9

    .line 773
    add-int/lit8 v24, v21, -0x1

    .restart local v24       #prevPage:I
    goto :goto_4

    .line 775
    .end local v24           #prevPage:I
    :cond_9
    move/from16 v24, v22

    .restart local v24       #prevPage:I
    goto :goto_4

    .line 793
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    .end local v24           #prevPage:I
    :pswitch_1
    if-eqz v12, :cond_b

    .line 794
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_a

    .line 795
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 796
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 797
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 800
    :cond_a
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 801
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_c

    .line 802
    add-int/lit8 v20, v22, 0x1

    .line 808
    .local v20, nextPage:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 809
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 810
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 811
    .local v10, cl_right:Lcom/android/launcher2/CellLayout;
    if-eqz v10, :cond_b

    .line 812
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 813
    .local v5, cc_right:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 814
    .local v18, newIcon_nextpage:Landroid/view/View;
    if-eqz v18, :cond_b

    .line 815
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    .line 846
    .end local v5           #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    .end local v10           #cl_right:Lcom/android/launcher2/CellLayout;
    .end local v18           #newIcon_nextpage:Landroid/view/View;
    .end local v20           #nextPage:I
    :cond_b
    :goto_6
    const/16 v25, 0x1

    .line 847
    goto/16 :goto_1

    .line 803
    :cond_c
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_d

    .line 804
    const/16 v20, 0x0

    .restart local v20       #nextPage:I
    goto :goto_5

    .line 806
    .end local v20           #nextPage:I
    :cond_d
    move/from16 v20, v22

    .restart local v20       #nextPage:I
    goto :goto_5

    .line 819
    .end local v20           #nextPage:I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 820
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 821
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 823
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_f

    .line 824
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 826
    :cond_f
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 827
    add-int/lit8 v20, v22, 0x1

    .line 833
    .restart local v20       #nextPage:I
    :goto_7
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 834
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 835
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout;

    .line 836
    .restart local v10       #cl_right:Lcom/android/launcher2/CellLayout;
    if-eqz v10, :cond_b

    .line 837
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    .line 838
    .restart local v5       #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getRootView()Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v5, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v18

    .line 839
    .restart local v18       #newIcon_nextpage:Landroid/view/View;
    if-eqz v18, :cond_b

    .line 840
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 828
    .end local v5           #cc_right:Lcom/android/launcher2/CellLayoutChildren;
    .end local v10           #cl_right:Lcom/android/launcher2/CellLayout;
    .end local v18           #newIcon_nextpage:Landroid/view/View;
    .end local v20           #nextPage:I
    :cond_10
    sget-boolean v27, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v27, :cond_11

    .line 829
    const/16 v20, 0x0

    .restart local v20       #nextPage:I
    goto :goto_7

    .line 831
    .end local v20           #nextPage:I
    :cond_11
    move/from16 v20, v22

    .restart local v20       #nextPage:I
    goto :goto_7

    .line 849
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    .end local v20           #nextPage:I
    :pswitch_2
    if-eqz v12, :cond_13

    .line 850
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_12

    .line 851
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 852
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 853
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 856
    :cond_12
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_14

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 858
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 859
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 861
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_13

    .line 862
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 875
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    :cond_13
    :goto_8
    const/16 v25, 0x1

    .line 876
    goto/16 :goto_1

    .line 865
    :cond_14
    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout;

    .line 866
    .local v14, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    .line 867
    .local v6, children:Lcom/android/launcher2/CellLayoutChildren;
    const/16 v27, -0x1

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v14, v6, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v15

    .line 868
    .local v15, newIcon:Landroid/view/View;
    if-eqz v15, :cond_15

    .line 869
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    .line 871
    :cond_15
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->requestFocus()Z

    goto :goto_8

    .line 878
    .end local v6           #children:Lcom/android/launcher2/CellLayoutChildren;
    .end local v14           #layout:Lcom/android/launcher2/CellLayout;
    .end local v15           #newIcon:Landroid/view/View;
    :pswitch_3
    if-eqz v12, :cond_17

    .line 879
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->isFinished()Z

    move-result v27

    if-nez v27, :cond_16

    .line 880
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Scroller;->abortAnimation()V

    .line 881
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 882
    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v22

    .line 884
    :cond_16
    const/16 v27, 0x2

    move/from16 v0, p3

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 885
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 886
    .restart local v11       #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout;

    .line 887
    .restart local v8       #cl_hot:Lcom/android/launcher2/CellLayout;
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v8, v11, v0, v1}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v16

    .line 889
    .restart local v16       #newIcon_hot:Landroid/view/View;
    if-eqz v16, :cond_17

    .line 890
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    .line 894
    .end local v8           #cl_hot:Lcom/android/launcher2/CellLayout;
    .end local v11           #clc_hot:Lcom/android/launcher2/CellLayoutChildren;
    .end local v16           #newIcon_hot:Landroid/view/View;
    :cond_17
    const/16 v25, 0x1

    .line 895
    goto/16 :goto_1

    .line 727
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleMenuAppGridIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayoutChildren;

    .line 486
    .local v17, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayoutMenu;

    .line 487
    .local v8, grandparent:Lcom/android/launcher2/CellLayoutMenu;
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v6

    .line 488
    .local v6, countX:I
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v7

    .line 490
    .local v7, countY:I
    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/MenuAppsGrid;

    .line 491
    .local v12, menuGrid:Lcom/android/launcher2/MenuAppsGrid;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v10

    .line 492
    .local v10, iconIndex:I
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 493
    .local v11, itemCount:I
    invoke-virtual {v12, v8}, Lcom/android/launcher2/MenuAppsGrid;->indexOfChild(Landroid/view/View;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/launcher2/MenuAppsGrid;->indexToPage(I)I

    move-result v16

    .line 494
    .local v16, pageIndex:I
    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v15

    .line 496
    .local v15, pageCount:I
    rem-int v19, v10, v6

    .line 497
    .local v19, x:I
    div-int v20, v10, v6

    .line 499
    .local v20, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 500
    .local v3, action:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v3, v0, :cond_0

    const/4 v9, 0x1

    .line 501
    .local v9, handleKeyEvent:Z
    :goto_0
    const/4 v13, 0x0

    .line 504
    .local v13, newParent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 505
    .local v5, child:Landroid/view/View;
    const/16 v18, 0x0

    .line 506
    .local v18, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 644
    :goto_1
    return v18

    .line 500
    .end local v5           #child:Landroid/view/View;
    .end local v9           #handleKeyEvent:Z
    .end local v13           #newParent:Landroid/view/ViewGroup;
    .end local v18           #wasHandled:Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 508
    .restart local v5       #child:Landroid/view/View;
    .restart local v9       #handleKeyEvent:Z
    .restart local v13       #newParent:Landroid/view/ViewGroup;
    .restart local v18       #wasHandled:Z
    :sswitch_0
    if-eqz v9, :cond_1

    .line 510
    if-lez v10, :cond_2

    .line 511
    add-int/lit8 v21, v10, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 530
    :cond_1
    :goto_2
    const/16 v18, 0x1

    .line 531
    goto :goto_1

    .line 513
    :cond_2
    if-lez v16, :cond_3

    .line 514
    add-int/lit8 v21, v16, -0x1

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v13

    .line 515
    if-eqz v13, :cond_1

    .line 516
    add-int/lit8 v21, v15, -0x1

    const/16 v22, 0x2

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(IIZ)V

    .line 517
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 518
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 520
    :cond_3
    sget-boolean v21, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v21, :cond_1

    .line 521
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v13

    .line 522
    if-eqz v13, :cond_1

    .line 523
    add-int/lit8 v21, v15, -0x1

    const/16 v22, 0x2

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(IIZ)V

    .line 524
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 525
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 533
    :sswitch_1
    if-eqz v9, :cond_4

    .line 535
    add-int/lit8 v21, v11, -0x1

    move/from16 v0, v21

    if-ge v10, v0, :cond_5

    .line 536
    add-int/lit8 v21, v10, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 555
    :cond_4
    :goto_3
    const/16 v18, 0x1

    .line 556
    goto/16 :goto_1

    .line 538
    :cond_5
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 539
    add-int/lit8 v21, v16, 0x1

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v13

    .line 540
    if-eqz v13, :cond_4

    .line 541
    add-int/lit8 v21, v16, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(IIZ)V

    .line 542
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 543
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 545
    :cond_6
    sget-boolean v21, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v21, :cond_4

    .line 546
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v13

    .line 547
    if-eqz v13, :cond_4

    .line 548
    const/16 v21, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(IIZ)V

    .line 549
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 550
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 558
    :sswitch_2
    if-eqz v9, :cond_7

    .line 560
    if-lez v20, :cond_8

    .line 561
    add-int/lit8 v21, v20, -0x1

    mul-int v21, v21, v6

    add-int v14, v21, v19

    .line 562
    .local v14, newiconIndex:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 571
    .end local v14           #newiconIndex:I
    :cond_7
    :goto_4
    const/16 v18, 0x1

    .line 572
    goto/16 :goto_1

    .line 564
    :cond_8
    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v4

    .line 566
    .local v4, activeTitleBar:Landroid/view/ViewGroup;
    if-eqz v4, :cond_7

    .line 567
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_4

    .line 574
    .end local v4           #activeTitleBar:Landroid/view/ViewGroup;
    :sswitch_3
    if-eqz v9, :cond_9

    .line 576
    add-int/lit8 v21, v7, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 577
    add-int/lit8 v21, v11, -0x1

    add-int/lit8 v22, v20, 0x1

    mul-int v22, v22, v6

    add-int v22, v22, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 578
    .restart local v14       #newiconIndex:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 581
    .end local v14           #newiconIndex:I
    :cond_9
    const/16 v18, 0x1

    .line 582
    goto/16 :goto_1

    .line 585
    :sswitch_4
    if-nez v9, :cond_b

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 587
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    .line 592
    :cond_a
    :goto_5
    const/16 v18, 0x1

    .line 593
    goto/16 :goto_1

    .line 588
    :cond_b
    if-eqz v9, :cond_a

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/FolderIconView;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 590
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/android/launcher2/MenuAppsGrid;->onClick(Landroid/view/View;)V

    goto :goto_5

    .line 595
    :sswitch_5
    if-eqz v9, :cond_c

    .line 598
    if-lez v16, :cond_d

    .line 599
    add-int/lit8 v21, v16, -0x1

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v13

    .line 600
    if-eqz v13, :cond_c

    .line 601
    add-int/lit8 v21, v16, -0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 602
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 603
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 609
    :cond_c
    :goto_6
    const/16 v18, 0x1

    .line 610
    goto/16 :goto_1

    .line 606
    :cond_d
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 612
    :sswitch_6
    if-eqz v9, :cond_e

    .line 615
    add-int/lit8 v21, v15, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    .line 616
    add-int/lit8 v21, v16, 0x1

    move/from16 v0, v21

    invoke-static {v12, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v13

    .line 617
    if-eqz v13, :cond_e

    .line 618
    add-int/lit8 v21, v16, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/android/launcher2/MenuAppsGrid;->snapToPage(I)V

    .line 619
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 620
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 626
    :cond_e
    :goto_7
    const/16 v18, 0x1

    .line 627
    goto/16 :goto_1

    .line 623
    :cond_f
    add-int/lit8 v21, v11, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 629
    :sswitch_7
    if-eqz v9, :cond_10

    .line 631
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 633
    :cond_10
    const/16 v18, 0x1

    .line 634
    goto/16 :goto_1

    .line 636
    :sswitch_8
    if-eqz v9, :cond_11

    .line 638
    add-int/lit8 v21, v11, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->requestFocus()Z

    .line 640
    :cond_11
    const/16 v18, 0x1

    .line 641
    goto/16 :goto_1

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handlePagedViewWidgetKeyEvent(Lcom/android/launcher2/PagedViewWidget;ILandroid/view/KeyEvent;)Z
    .locals 24
    .parameter "w"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/PagedViewGridLayout;

    .line 321
    .local v14, parent:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/MenuWidgets;

    .line 322
    .local v9, menuWidgets:Lcom/android/launcher2/PagedView;
    invoke-static {v9}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v15

    .line 323
    .local v15, tabHost:Landroid/widget/TabHost;
    const v22, 0x1020013

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TabWidget;

    .line 324
    .local v16, tabs:Landroid/widget/TabWidget;
    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->indexOfChild(Landroid/view/View;)I

    move-result v19

    .line 325
    .local v19, widgetIndex:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v18

    .line 326
    .local v18, widgetCount:I
    invoke-virtual {v9, v14}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v13

    .line 327
    .local v13, pageIndex:I
    invoke-virtual {v9}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v12

    .line 328
    .local v12, pageCount:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v3

    .line 329
    .local v3, cellCountX:I
    invoke-virtual {v14}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountY()I

    move-result v4

    .line 330
    .local v4, cellCountY:I
    rem-int v20, v19, v3

    .line 331
    .local v20, x:I
    div-int v21, v19, v3

    .line 333
    .local v21, y:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 334
    .local v2, action:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v2, v0, :cond_0

    const/4 v7, 0x1

    .line 335
    .local v7, handleKeyEvent:Z
    :goto_0
    const/4 v10, 0x0

    .line 338
    .local v10, newParent:Landroid/view/ViewGroup;
    const/4 v5, 0x0

    .line 339
    .local v5, child:Landroid/view/View;
    const/16 v17, 0x0

    .line 340
    .local v17, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 478
    :goto_1
    return v17

    .line 334
    .end local v5           #child:Landroid/view/View;
    .end local v7           #handleKeyEvent:Z
    .end local v10           #newParent:Landroid/view/ViewGroup;
    .end local v17           #wasHandled:Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 342
    .restart local v5       #child:Landroid/view/View;
    .restart local v7       #handleKeyEvent:Z
    .restart local v10       #newParent:Landroid/view/ViewGroup;
    .restart local v17       #wasHandled:Z
    :sswitch_0
    if-eqz v7, :cond_1

    .line 344
    if-lez v19, :cond_2

    .line 345
    add-int/lit8 v22, v19, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 364
    :cond_1
    :goto_2
    const/16 v17, 0x1

    .line 365
    goto :goto_1

    .line 347
    :cond_2
    if-lez v13, :cond_3

    .line 348
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 349
    if-eqz v10, :cond_1

    .line 350
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 351
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 352
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 354
    :cond_3
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v22, :cond_1

    .line 355
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 356
    if-eqz v10, :cond_1

    .line 357
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 358
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 359
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 367
    :sswitch_1
    if-eqz v7, :cond_4

    .line 369
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 370
    add-int/lit8 v22, v19, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 389
    :cond_4
    :goto_3
    const/16 v17, 0x1

    .line 390
    goto :goto_1

    .line 372
    :cond_5
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_6

    .line 373
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 374
    if-eqz v10, :cond_4

    .line 375
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 376
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 377
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 379
    :cond_6
    sget-boolean v22, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v22, :cond_4

    .line 380
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 381
    if-eqz v10, :cond_4

    .line 382
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 383
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 384
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 392
    :sswitch_2
    if-eqz v7, :cond_7

    .line 394
    if-lez v21, :cond_8

    .line 395
    add-int/lit8 v22, v21, -0x1

    mul-int v22, v22, v3

    add-int v11, v22, v20

    .line 396
    .local v11, newWidgetIndex:I
    invoke-virtual {v14, v11}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 397
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 407
    .end local v11           #newWidgetIndex:I
    :cond_7
    :goto_4
    const/16 v17, 0x1

    .line 408
    goto/16 :goto_1

    .line 399
    :cond_8
    const v22, 0x7f07005f

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 400
    .local v8, mSearchTitleBar:Landroid/view/ViewGroup;
    if-eqz v8, :cond_9

    .line 401
    const/16 v17, 0x0

    .line 402
    goto/16 :goto_1

    .line 404
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TabWidget;->requestFocus()Z

    goto :goto_4

    .line 410
    .end local v8           #mSearchTitleBar:Landroid/view/ViewGroup;
    :sswitch_3
    if-eqz v7, :cond_a

    .line 412
    add-int/lit8 v22, v4, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 413
    add-int/lit8 v22, v18, -0x1

    add-int/lit8 v23, v21, 0x1

    mul-int v23, v23, v3

    add-int v23, v23, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 414
    .restart local v11       #newWidgetIndex:I
    invoke-virtual {v14, v11}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 415
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 418
    .end local v11           #newWidgetIndex:I
    :cond_a
    const/16 v17, 0x1

    .line 419
    goto/16 :goto_1

    .line 422
    :sswitch_4
    if-eqz v7, :cond_b

    move-object v6, v9

    .line 424
    check-cast v6, Landroid/view/View$OnClickListener;

    .line 425
    .local v6, clickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    invoke-interface {v6, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 427
    .end local v6           #clickListener:Landroid/view/View$OnClickListener;
    :cond_b
    const/16 v17, 0x1

    .line 428
    goto/16 :goto_1

    .line 430
    :sswitch_5
    if-eqz v7, :cond_d

    .line 433
    if-lez v13, :cond_e

    .line 434
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 435
    if-eqz v10, :cond_c

    .line 436
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 441
    :cond_c
    :goto_5
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 443
    :cond_d
    const/16 v17, 0x1

    .line 444
    goto/16 :goto_1

    .line 439
    :cond_e
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 446
    :sswitch_6
    if-eqz v7, :cond_10

    .line 449
    add-int/lit8 v22, v12, -0x1

    move/from16 v0, v22

    if-ge v13, v0, :cond_11

    .line 450
    add-int/lit8 v22, v13, 0x1

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/launcher2/FocusHelper;->getPage(Lcom/android/launcher2/PagedView;I)Landroid/view/ViewGroup;

    move-result-object v10

    .line 451
    if-eqz v10, :cond_f

    .line 452
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 457
    :cond_f
    :goto_6
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 459
    :cond_10
    const/16 v17, 0x1

    .line 460
    goto/16 :goto_1

    .line 455
    :cond_11
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_6

    .line 462
    :sswitch_7
    if-eqz v7, :cond_12

    .line 464
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 465
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 467
    :cond_12
    const/16 v17, 0x1

    .line 468
    goto/16 :goto_1

    .line 470
    :sswitch_8
    if-eqz v7, :cond_13

    .line 472
    add-int/lit8 v22, v18, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->requestFocus()Z

    .line 474
    :cond_13
    const/16 v17, 0x1

    .line 475
    goto/16 :goto_1

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x42 -> :sswitch_4
        0x5c -> :sswitch_5
        0x5d -> :sswitch_6
        0x7a -> :sswitch_7
        0x7b -> :sswitch_8
    .end sparse-switch
.end method

.method static handleTabKeyEvent(Lcom/android/launcher2/AccessibleTabView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 651
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-nez v8, :cond_0

    .line 702
    :goto_0
    return v7

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FocusOnlyTabWidget;

    .line 654
    .local v3, parent:Lcom/android/launcher2/FocusOnlyTabWidget;
    invoke-static {v3}, Lcom/android/launcher2/FocusHelper;->findTabHostParent(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v5

    .line 655
    .local v5, tabHost:Landroid/widget/TabHost;
    const v8, 0x1020011

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 657
    .local v1, contents:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/FocusOnlyTabWidget;->getTabCount()I

    move-result v4

    .line 658
    .local v4, tabCount:I
    invoke-virtual {v3, p0}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabIndex(Landroid/view/View;)I

    move-result v6

    .line 660
    .local v6, tabIndex:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 661
    .local v0, action:I
    if-eq v0, v2, :cond_1

    .line 662
    .local v2, handleKeyEvent:Z
    :goto_1
    const/4 v7, 0x0

    .line 663
    .local v7, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 688
    :sswitch_0
    const/4 v7, 0x1

    .line 689
    goto :goto_0

    .end local v2           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_1
    move v2, v7

    .line 661
    goto :goto_1

    .line 665
    .restart local v2       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :sswitch_1
    if-eqz v2, :cond_2

    .line 667
    if-lez v6, :cond_2

    .line 668
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 671
    :cond_2
    const/4 v7, 0x1

    .line 672
    goto :goto_0

    .line 674
    :sswitch_2
    if-eqz v2, :cond_3

    .line 676
    add-int/lit8 v8, v4, -0x1

    if-ge v6, v8, :cond_4

    .line 677
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Lcom/android/launcher2/FocusOnlyTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 684
    :cond_3
    :goto_2
    const/4 v7, 0x1

    .line 685
    goto :goto_0

    .line 679
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 680
    invoke-virtual {p0}, Lcom/android/launcher2/AccessibleTabView;->getNextFocusRightId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 691
    :sswitch_3
    if-eqz v2, :cond_5

    .line 693
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 695
    :cond_5
    const/4 v7, 0x1

    .line 696
    goto :goto_0

    .line 698
    :sswitch_4
    const/4 v7, 0x1

    .line 699
    goto :goto_0

    .line 663
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method static handleTitleBarKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f070047

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    .line 175
    .local v6, menuGrid:Lcom/android/launcher2/MenuAppsGrid;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 176
    .local v0, action:I
    const/4 v8, 0x1

    if-eq v0, v8, :cond_0

    const/4 v5, 0x1

    .line 177
    .local v5, handleKeyEvent:Z
    :goto_0
    const/4 v7, 0x0

    .line 178
    .local v7, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_1
    return v7

    .line 176
    .end local v5           #handleKeyEvent:Z
    .end local v7           #wasHandled:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 180
    .restart local v5       #handleKeyEvent:Z
    .restart local v7       #wasHandled:Z
    :pswitch_0
    if-eqz v5, :cond_1

    .line 181
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 182
    .local v1, activeTitleBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_2

    .line 186
    const v8, 0x7f070050

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, backButton:Landroid/view/View;
    :goto_2
    const v8, 0x7f07003f

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 190
    .local v4, doneButton:Landroid/view/View;
    const v8, 0x7f070069

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 192
    .local v3, cancelButton:Landroid/view/View;
    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v4, :cond_3

    if-eqz v3, :cond_3

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 199
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :cond_1
    :goto_3
    const/4 v7, 0x1

    .line 200
    goto :goto_1

    .line 188
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    :cond_2
    const v8, 0x7f070067

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2       #backButton:Landroid/view/View;
    goto :goto_2

    .line 194
    .restart local v3       #cancelButton:Landroid/view/View;
    .restart local v4       #doneButton:Landroid/view/View;
    :cond_3
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_1

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 202
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :pswitch_1
    if-eqz v5, :cond_4

    .line 203
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getActiveTitleBarForState()Landroid/view/ViewGroup;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 204
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    .line 207
    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v8

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v8, v9, :cond_5

    .line 208
    const v8, 0x7f070050

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 211
    .restart local v2       #backButton:Landroid/view/View;
    :goto_4
    const v8, 0x7f07003f

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 212
    .restart local v4       #doneButton:Landroid/view/View;
    const v8, 0x7f070069

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 214
    .restart local v3       #cancelButton:Landroid/view/View;
    if-eqz v3, :cond_6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v3, :cond_6

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 215
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 221
    .end local v1           #activeTitleBar:Landroid/view/ViewGroup;
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #cancelButton:Landroid/view/View;
    .end local v4           #doneButton:Landroid/view/View;
    :cond_4
    :goto_5
    const/4 v7, 0x1

    .line 222
    goto/16 :goto_1

    .line 210
    .restart local v1       #activeTitleBar:Landroid/view/ViewGroup;
    :cond_5
    const v8, 0x7f070067

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .restart local v2       #backButton:Landroid/view/View;
    goto :goto_4

    .line 216
    .restart local v3       #cancelButton:Landroid/view/View;
    .restart local v4       #doneButton:Landroid/view/View;
    :cond_6
    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    if-ne v8, v2, :cond_4

    if-eqz v3, :cond_4

    .line 217
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static handleWorkspaceAllAppsKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"

    .prologue
    .line 1272
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1273
    .local v10, parent:Landroid/view/ViewGroup;
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1274
    .local v5, launcher:Landroid/view/ViewGroup;
    const v14, 0x7f07002e

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/Workspace;

    .line 1275
    .local v13, workspace:Lcom/android/launcher2/Workspace;
    const v14, 0x7f07003d

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1277
    .local v0, AllAppsButton:Landroid/view/View;
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1278
    .local v9, pageIndex:I
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .line 1280
    .local v8, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 1281
    .local v1, action:I
    const/4 v14, 0x1

    if-eq v1, v14, :cond_0

    const/4 v4, 0x1

    .line 1282
    .local v4, handleKeyEvent:Z
    :goto_0
    const/4 v11, 0x0

    .line 1284
    .local v11, wasHandled:Z
    sparse-switch p1, :sswitch_data_0

    .line 1375
    :goto_1
    return v11

    .line 1281
    .end local v4           #handleKeyEvent:Z
    .end local v11           #wasHandled:Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1287
    .restart local v4       #handleKeyEvent:Z
    .restart local v11       #wasHandled:Z
    :sswitch_0
    if-eqz v4, :cond_2

    .line 1289
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1290
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1291
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1292
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1294
    :cond_1
    if-lez v9, :cond_3

    .line 1295
    add-int/lit8 v14, v9, -0x1

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1301
    .local v12, whichPage:I
    :goto_2
    if-eq v12, v9, :cond_2

    .line 1302
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1304
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1305
    invoke-static {v13, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    .line 1306
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v6, v10, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1308
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_5

    .line 1309
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1315
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :cond_2
    :goto_3
    const/4 v11, 0x1

    .line 1316
    goto :goto_1

    .line 1296
    :cond_3
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_4

    .line 1297
    move v12, v8

    .restart local v12       #whichPage:I
    goto :goto_2

    .line 1299
    .end local v12           #whichPage:I
    :cond_4
    move v12, v9

    .restart local v12       #whichPage:I
    goto :goto_2

    .line 1311
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_3

    .line 1319
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :sswitch_1
    if-eqz v4, :cond_7

    .line 1320
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_6

    .line 1321
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1322
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1323
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1325
    :cond_6
    if-ge v9, v8, :cond_8

    .line 1326
    add-int/lit8 v14, v9, 0x1

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1332
    .restart local v12       #whichPage:I
    :goto_4
    if-eq v12, v9, :cond_7

    .line 1333
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1335
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v13, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1336
    invoke-static {v13, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    .line 1337
    const/4 v14, -0x1

    const/4 v15, 0x1

    invoke-static {v6, v10, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1339
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_a

    .line 1340
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1346
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :cond_7
    :goto_5
    const/4 v11, 0x1

    .line 1347
    goto/16 :goto_1

    .line 1327
    :cond_8
    sget-boolean v14, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v14, :cond_9

    .line 1328
    const/4 v12, 0x0

    .restart local v12       #whichPage:I
    goto :goto_4

    .line 1330
    .end local v12           #whichPage:I
    :cond_9
    move v12, v9

    .restart local v12       #whichPage:I
    goto :goto_4

    .line 1342
    .restart local v6       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_5

    .line 1349
    .end local v6           #layout:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #whichPage:I
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1350
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->launchAllAppsIcon()V

    .line 1353
    :cond_b
    :sswitch_3
    const/4 v11, 0x1

    .line 1354
    goto/16 :goto_1

    .line 1356
    :sswitch_4
    if-eqz v4, :cond_d

    .line 1357
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->isFinished()Z

    move-result v14

    if-nez v14, :cond_c

    .line 1358
    iget-object v14, v13, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v14}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1359
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1360
    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v9

    .line 1362
    :cond_c
    invoke-virtual {v13, v9}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1363
    .local v3, cl:Lcom/android/launcher2/CellLayout;
    if-eqz v3, :cond_d

    .line 1364
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 1365
    .local v2, cc:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v14

    const/4 v15, -0x1

    invoke-static {v3, v2, v14, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1366
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_d

    .line 1367
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1370
    .end local v2           #cc:Lcom/android/launcher2/CellLayoutChildren;
    .end local v3           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #newIcon:Landroid/view/View;
    :cond_d
    const/4 v11, 0x1

    .line 1371
    goto/16 :goto_1

    .line 1284
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x42 -> :sswitch_2
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method static handleWorkspaceIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;I)Z
    .locals 17
    .parameter "v"
    .parameter "keyCode"
    .parameter "e"
    .parameter "orientation"

    .prologue
    .line 1011
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutChildren;

    .line 1012
    .local v11, parent:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1013
    .local v6, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/Workspace;

    .line 1014
    .local v14, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1015
    .local v5, launcher:Landroid/view/ViewGroup;
    const v15, 0x7f07003d

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1016
    .local v1, AllAppsButton:Landroid/view/View;
    const v15, 0x7f070031

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1018
    .local v4, hotseat:Landroid/view/ViewGroup;
    if-nez v4, :cond_0

    .line 1019
    sget-object v15, Lcom/android/launcher2/FocusHelper;->sHomeFragment:Lcom/android/launcher2/HomeFragment;

    invoke-virtual {v15}, Lcom/android/launcher2/HomeFragment;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    .line 1021
    :cond_0
    invoke-virtual {v14, v6}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v10

    .line 1022
    .local v10, pageIndex:I
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    .line 1025
    .local v9, pageCount:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 1026
    .local v2, action:I
    const/4 v15, 0x1

    if-eq v2, v15, :cond_1

    const/4 v3, 0x1

    .line 1027
    .local v3, handleKeyEvent:Z
    :goto_0
    const/4 v13, 0x0

    .line 1028
    .local v13, wasHandled:Z
    packed-switch p1, :pswitch_data_0

    .line 1143
    :goto_1
    return v13

    .line 1026
    .end local v3           #handleKeyEvent:Z
    .end local v13           #wasHandled:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1030
    .restart local v3       #handleKeyEvent:Z
    .restart local v13       #wasHandled:Z
    :pswitch_0
    if-eqz v3, :cond_3

    .line 1031
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1032
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1033
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1034
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    .line 1036
    :cond_2
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v6, v11, v0, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 1037
    .local v7, newIcon:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1038
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1064
    .end local v7           #newIcon:Landroid/view/View;
    :cond_3
    :goto_2
    const/4 v13, 0x1

    .line 1065
    goto :goto_1

    .line 1040
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_4
    if-lez v10, :cond_5

    .line 1041
    add-int/lit8 v12, v10, -0x1

    .line 1047
    .local v12, prevPage:I
    :goto_3
    if-eq v12, v10, :cond_3

    .line 1048
    invoke-static {v14, v12}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    .line 1049
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-static {v6, v11, v15, v0}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1051
    if-eqz v7, :cond_7

    .line 1052
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 1042
    .end local v12           #prevPage:I
    :cond_5
    sget-boolean v15, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v15, :cond_6

    .line 1043
    add-int/lit8 v12, v9, -0x1

    .restart local v12       #prevPage:I
    goto :goto_3

    .line 1045
    .end local v12           #prevPage:I
    :cond_6
    move v12, v10

    .restart local v12       #prevPage:I
    goto :goto_3

    .line 1055
    :cond_7
    invoke-virtual {v14, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1056
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1057
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 1059
    :cond_8
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_2

    .line 1067
    .end local v7           #newIcon:Landroid/view/View;
    .end local v12           #prevPage:I
    :pswitch_1
    if-eqz v3, :cond_a

    .line 1068
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_9

    .line 1069
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1070
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1071
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    .line 1073
    :cond_9
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v6, v11, v0, v15}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 1074
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_b

    .line 1075
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1099
    .end local v7           #newIcon:Landroid/view/View;
    :cond_a
    :goto_4
    const/4 v13, 0x1

    .line 1100
    goto :goto_1

    .line 1077
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_b
    add-int/lit8 v15, v9, -0x1

    if-ge v10, v15, :cond_c

    .line 1078
    add-int/lit8 v8, v10, 0x1

    .line 1083
    .local v8, nextPage:I
    :goto_5
    if-eq v8, v10, :cond_a

    .line 1084
    invoke-static {v14, v8}, Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v11

    .line 1085
    const/4 v15, -0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v6, v11, v15, v0}, Lcom/android/launcher2/FocusHelper;->getIconInDirection(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v7

    .line 1086
    if-eqz v7, :cond_e

    .line 1087
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 1079
    .end local v8           #nextPage:I
    :cond_c
    sget-boolean v15, Lcom/android/launcher2/FocusHelper;->sIsLoopingEnabled:Z

    if-eqz v15, :cond_d

    .line 1080
    const/4 v8, 0x0

    .restart local v8       #nextPage:I
    goto :goto_5

    .line 1082
    .end local v8           #nextPage:I
    :cond_d
    move v8, v10

    .restart local v8       #nextPage:I
    goto :goto_5

    .line 1090
    :cond_e
    invoke-virtual {v14, v8}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1091
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1092
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_4

    .line 1094
    :cond_f
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_4

    .line 1102
    .end local v7           #newIcon:Landroid/view/View;
    .end local v8           #nextPage:I
    :pswitch_2
    if-eqz v3, :cond_11

    .line 1103
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_10

    .line 1104
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1105
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1106
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    .line 1108
    :cond_10
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v6, v11, v0, v15}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 1109
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_12

    .line 1110
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1120
    .end local v7           #newIcon:Landroid/view/View;
    :cond_11
    :goto_6
    const/4 v13, 0x1

    .line 1121
    goto/16 :goto_1

    .line 1112
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_12
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1113
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_6

    .line 1115
    :cond_13
    const/4 v15, 0x2

    move/from16 v0, p3

    if-ne v0, v15, :cond_11

    .line 1116
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_6

    .line 1123
    .end local v7           #newIcon:Landroid/view/View;
    :pswitch_3
    if-eqz v3, :cond_15

    .line 1124
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_14

    .line 1125
    iget-object v15, v14, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v15}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1126
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->computeScrollHelper()Z

    .line 1127
    invoke-virtual {v14}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v10

    .line 1129
    :cond_14
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v6, v11, v0, v15}, Lcom/android/launcher2/FocusHelper;->getClosestIconOnLine(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    .line 1130
    .restart local v7       #newIcon:Landroid/view/View;
    if-eqz v7, :cond_16

    .line 1131
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1139
    .end local v7           #newIcon:Landroid/view/View;
    :cond_15
    :goto_7
    const/4 v13, 0x1

    .line 1140
    goto/16 :goto_1

    .line 1133
    .restart local v7       #newIcon:Landroid/view/View;
    :cond_16
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1134
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 1136
    :cond_17
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestFocus()Z

    goto :goto_7

    .line 1028
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setup(Lcom/android/launcher2/HomeFragment;)V
    .locals 0
    .parameter "home"

    .prologue
    .line 134
    sput-object p0, Lcom/android/launcher2/FocusHelper;->sHomeFragment:Lcom/android/launcher2/HomeFragment;

    .line 135
    return-void
.end method
