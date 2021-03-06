.class public Lcom/android/launcher2/AlphabeticalListContainer;
.super Landroid/view/ViewGroup;
.source "AlphabeticalListContainer.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;


# static fields
.field private static final FASTSCROLLINDEX_GRAVITY_LEFT:I = 0x0

.field private static final FASTSCROLLINDEX_GRAVITY_RIGHT:I = 0x1


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mCurrentFastScrollIndexView:I

.field private final mFastScrollIndexGravity:I

.field private final mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

.field private mFastScrollIndexViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AlphabeticalListIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

.field private final mFirstCharColor:I

.field private final mLastMovePt:Landroid/graphics/PointF;

.field private mLastSelLen:I

.field private final mListBestMatchIndices:Landroid/util/SparseIntArray;

.field private final mListExactMatchIndices:Landroid/util/SparseIntArray;

.field private mListView:Landroid/widget/ExpandableListView;

.field private final mPopupHeight:F

.field private final mPopupHeightInc:F

.field private final mPopupWidth:F

.field private final mPopupWidthInc:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    .line 35
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    .line 36
    iput v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    iput v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    .line 37
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    .line 38
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    .line 42
    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    .line 43
    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    .line 48
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    .line 53
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->AlphabeticalListContainer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    .line 56
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupWidth:F

    .line 57
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupHeight:F

    .line 58
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupWidthInc:F

    .line 59
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupHeightInc:F

    .line 60
    const/4 v1, 0x5

    const/high16 v2, -0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFirstCharColor:I

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private clearIndexMatches()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 580
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 581
    return-void
.end method

.method private feedPtToIndexView(ILandroid/graphics/PointF;)V
    .locals 7
    .parameter "aViewIndex"
    .parameter "aPt"

    .prologue
    .line 214
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 215
    .local v1, indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 216
    .local v3, relPt:Landroid/graphics/PointF;
    invoke-virtual {v3, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 217
    iget v5, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->x:F

    .line 218
    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/PointF;->y:F

    .line 219
    invoke-virtual {v1, p2}, Lcom/android/launcher2/AlphabeticalListIndicator;->feedPt(Landroid/graphics/PointF;)I

    move-result v4

    .line 220
    .local v4, res:I
    packed-switch v4, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/AlphabeticalListContainer;->getSelection(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, currentSel:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0, v0}, Lcom/android/launcher2/AlphabeticalListContainer;->updatePopup(Ljava/lang/String;)V

    .line 226
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    .line 227
    .local v2, moveToTop:Z
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/launcher2/AlphabeticalListContainer;->updateList(ZLjava/lang/String;)V

    goto :goto_0

    .line 226
    .end local v2           #moveToTop:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 231
    .end local v0           #currentSel:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-eqz v5, :cond_0

    .line 232
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setVisibility(I)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getMatchingIndex(Ljava/lang/String;IIZZ)I
    .locals 10
    .parameter "aStr"
    .parameter "aAdapterStartIndex"
    .parameter "aAdapterEndIndex"
    .parameter "aExact"
    .parameter "aAccountForExpandedGroups"

    .prologue
    const/4 v6, -0x1

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 169
    :cond_0
    return v6

    .line 138
    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v7}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsListAdapter;

    .line 140
    .local v0, adapter:Lcom/android/launcher2/MenuAppsListAdapter;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroupCount()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .line 141
    .local v5, len:I
    if-ltz p2, :cond_2

    if-le p2, v5, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 142
    :cond_3
    if-ltz p3, :cond_4

    if-le p3, v5, :cond_5

    :cond_4
    move p3, v5

    .line 144
    :cond_5
    const/4 v1, -0x1

    .local v1, cmpRes:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 145
    .local v2, curLen:I
    move v3, p2

    .local v3, i:I
    :goto_0
    if-gt v3, p3, :cond_8

    .line 146
    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v4

    .line 147
    .local v4, item:Lcom/android/launcher2/AppItem;
    iget-object v7, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 145
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_7
    if-eqz p4, :cond_b

    .line 149
    iget-object v7, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v2, v7, :cond_6

    .line 150
    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    iget-object v8, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 154
    :goto_1
    if-ltz v1, :cond_6

    .line 158
    .end local v4           #item:Lcom/android/launcher2/AppItem;
    :cond_8
    if-eqz v1, :cond_9

    if-nez p4, :cond_0

    .line 159
    :cond_9
    move v6, v3

    .line 160
    .local v6, res:I
    if-eqz p5, :cond_0

    .line 161
    add-int/lit8 v3, v3, -0x1

    :goto_2
    if-ltz v3, :cond_0

    .line 162
    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v7, v3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 163
    invoke-virtual {v0, v3}, Lcom/android/launcher2/MenuAppsListAdapter;->getChildrenCount(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 161
    :cond_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 152
    .end local v6           #res:I
    .restart local v4       #item:Lcom/android/launcher2/AppItem;
    :cond_b
    iget-object v7, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    iget-object v8, v4, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private getNextLevelIndexStr(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 18
    .parameter "aViewIndex"
    .parameter "currentSel"
    .parameter "isUppercase"

    .prologue
    .line 82
    if-nez p2, :cond_0

    .line 83
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/AlphabeticalListContainer;->getSelection(I)Ljava/lang/String;

    move-result-object p2

    .line 84
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    .line 86
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 88
    .local v12, firstChar:C
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v12, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    .line 89
    .local v14, index:I
    const/4 v1, -0x1

    if-ne v1, v14, :cond_2

    .line 90
    invoke-static {v12}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v14

    .line 91
    const/4 v1, -0x1

    if-ne v1, v14, :cond_1

    .line 92
    const/4 v1, 0x0

    goto :goto_0

    .line 94
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListExactMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v12, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/MenuAppsListAdapter;

    .line 98
    .local v7, adapter:Lcom/android/launcher2/MenuAppsListAdapter;
    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroupCount()I

    move-result v17

    .local v17, len:I
    const/4 v10, -0x1

    .local v10, cmpRes:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 101
    .local v11, curLen:I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v15, indexStr:Ljava/lang/StringBuilder;
    move v13, v14

    .local v13, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 103
    invoke-virtual {v7, v13}, Lcom/android/launcher2/MenuAppsListAdapter;->getGroup(I)Lcom/android/launcher2/AppItem;

    move-result-object v16

    .line 106
    .local v16, item:Lcom/android/launcher2/AppItem;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v11, :cond_4

    .line 102
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 108
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mCollator:Ljava/text/Collator;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 109
    if-lez v10, :cond_6

    .line 127
    .end local v16           #item:Lcom/android/launcher2/AppItem;
    :cond_5
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_9

    const/4 v1, 0x0

    goto :goto_0

    .line 110
    .restart local v16       #item:Lcom/android/launcher2/AppItem;
    :cond_6
    if-ltz v10, :cond_3

    .line 112
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 113
    .local v8, ch:C
    if-eqz p3, :cond_8

    .line 114
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    .line 115
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, check:Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 117
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    .line 118
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    .line 119
    const/4 v1, -0x1

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 124
    :cond_7
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 121
    .end local v9           #check:Ljava/lang/String;
    :cond_8
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    .line 122
    .restart local v9       #check:Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_7

    goto :goto_2

    .line 129
    .end local v8           #ch:C
    .end local v9           #check:Ljava/lang/String;
    .end local v16           #item:Lcom/android/launcher2/AppItem;
    :cond_9
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getSelection(I)Ljava/lang/String;
    .locals 5
    .parameter "aLevel"

    .prologue
    .line 66
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v3, res:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, p1, :cond_1

    .line 71
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 72
    .local v2, indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->getCurrentChar()Ljava/lang/Character;

    move-result-object v0

    .line 73
    .local v0, ch:Ljava/lang/Character;
    if-nez v0, :cond_0

    .line 74
    const/4 v4, 0x0

    .line 78
    .end local v0           #ch:Ljava/lang/Character;
    .end local v2           #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    :goto_1
    return-object v4

    .line 76
    .restart local v0       #ch:Ljava/lang/Character;
    .restart local v2       #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0           #ch:Ljava/lang/Character;
    .end local v2           #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private handleMove(Landroid/graphics/PointF;)Z
    .locals 7
    .parameter "aPt"

    .prologue
    const/4 v6, 0x1

    .line 320
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 322
    .local v2, indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    const/4 v0, 0x0

    .line 323
    .local v0, dir:I
    iget v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    packed-switch v4, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    if-ne v0, v6, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AlphabeticalListIndicator;

    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 343
    const/4 v0, 0x0

    .line 346
    :cond_1
    if-gez v0, :cond_7

    .line 347
    iget v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 348
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    check-cast v2, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 349
    .restart local v2       #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    invoke-virtual {v2, p1}, Lcom/android/launcher2/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 350
    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    .line 374
    .end local v1           #i:I
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastMovePt:Landroid/graphics/PointF;

    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 375
    iget v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    invoke-direct {p0, v4, p1}, Lcom/android/launcher2/AlphabeticalListContainer;->feedPtToIndexView(ILandroid/graphics/PointF;)V

    .line 376
    return v6

    .line 325
    :pswitch_0
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 326
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    :cond_3
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 328
    const/4 v0, -0x1

    goto :goto_0

    .line 332
    :pswitch_1
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 333
    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :cond_4
    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 335
    const/4 v0, -0x1

    goto :goto_0

    .line 353
    .restart local v1       #i:I
    :cond_5
    if-lez v1, :cond_6

    .line 354
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AlphabeticalListIndicator;->setVisibility(I)V

    .line 355
    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->clearCurrentChar()V

    .line 347
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 358
    .end local v1           #i:I
    :cond_7
    if-lez v0, :cond_2

    invoke-virtual {v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->isPreMatching()Z

    move-result v4

    if-nez v4, :cond_2

    .line 363
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 364
    .local v3, size:I
    iget v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    add-int/lit8 v1, v4, 0x1

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v3, :cond_2

    .line 365
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v1}, Lcom/android/launcher2/AlphabeticalListContainer;->showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 368
    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    .line 369
    invoke-virtual {v2, p1}, Lcom/android/launcher2/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUp()Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, -0x1

    .line 267
    iget v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 268
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 269
    .local v1, indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->clearCurrentChar()V

    .line 270
    if-lez v0, :cond_0

    .line 271
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    .line 272
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AlphabeticalListIndicator;->setVisibility(I)V

    .line 267
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->unPressDelayed()Z

    goto :goto_1

    .line 277
    .end local v1           #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setVisibility(I)V

    .line 280
    :cond_2
    iput v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    .line 281
    iput v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    .line 282
    const/4 v2, 0x1

    return v2
.end method

.method private showNextLevel(Landroid/graphics/PointF;Ljava/lang/String;I)Z
    .locals 9
    .parameter "aPt"
    .parameter "aCurrentStr"
    .parameter "aViewIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 286
    if-ge p3, v7, :cond_0

    move v5, v6

    .line 316
    :goto_0
    return v5

    .line 289
    :cond_0
    add-int/lit8 v3, p3, -0x1

    .line 290
    .local v3, prevLevel:I
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 291
    .local v0, indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->isTextUppercase()Z

    move-result v5

    invoke-direct {p0, v3, p2, v5}, Lcom/android/launcher2/AlphabeticalListContainer;->getNextLevelIndexStr(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, nextLevelStr:Ljava/lang/String;
    if-nez v2, :cond_1

    move v5, v6

    .line 293
    goto :goto_0

    .line 296
    :cond_1
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 297
    .local v4, relPt:Landroid/graphics/PointF;
    invoke-virtual {v4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 298
    iget v5, v4, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 299
    iget-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v5}, Lcom/android/launcher2/AlphabeticalListIndicator;->getMidYForCurrentChar()F

    move-result v1

    .line 300
    .local v1, indexY:F
    const/high16 v5, -0x4080

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_2

    .line 301
    iput v1, v4, Landroid/graphics/PointF;->y:F

    .line 306
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v8, "CscFeature_Launcher_DisableFastScrollIndex"

    invoke-virtual {v5, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/android/launcher2/AlphabeticalListIndicator;->setVisibility(I)V

    .line 314
    :goto_2
    invoke-virtual {v0, v7}, Lcom/android/launcher2/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    .line 315
    invoke-virtual {v0, v2, v4}, Lcom/android/launcher2/AlphabeticalListIndicator;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    move v5, v7

    .line 316
    goto :goto_0

    .line 303
    :cond_2
    iget v5, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    iput v5, v4, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 311
    :cond_3
    invoke-virtual {v0, v6}, Lcom/android/launcher2/AlphabeticalListIndicator;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateList(ZLjava/lang/String;)V
    .locals 12
    .parameter "aMoveToTop"
    .parameter "aSelStr"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 175
    const/4 v7, -0x1

    .line 176
    .local v7, index:I
    if-eqz p1, :cond_0

    .line 177
    const/4 v7, 0x0

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v7, v4}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 189
    return-void

    .line 179
    :cond_0
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 180
    .local v11, firstChar:C
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 181
    if-ne v7, v2, :cond_1

    .line 182
    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v7

    .line 183
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListBestMatchIndices:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v11, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    :cond_1
    const/4 v10, 0x1

    move-object v5, p0

    move-object v6, p2

    move v8, v2

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/AlphabeticalListContainer;->getMatchingIndex(Ljava/lang/String;IIZZ)I

    move-result v7

    goto :goto_0
.end method

.method private updatePopup(Ljava/lang/String;)V
    .locals 9
    .parameter "aSelStr"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 192
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-nez v3, :cond_0

    .line 211
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 195
    .local v1, newLen:I
    iget v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    if-eq v1, v3, :cond_2

    .line 196
    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupWidth:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupWidthInc:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupHeight:F

    add-int/lit8 v5, v1, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mPopupHeightInc:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 198
    .local v2, newSize:Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setDrawBounds(Landroid/graphics/PointF;)V

    .line 199
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/AlphabeticalListTextPopup;->clearStyles()V

    .line 200
    if-le v1, v8, :cond_1

    .line 201
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getTextColor()I

    move-result v0

    .line 202
    .local v0, defColor:I
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFirstCharColor:I

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v7, v4}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setStyle(ILandroid/text/style/CharacterStyle;)V

    .line 203
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v8, v4}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setStyle(ILandroid/text/style/CharacterStyle;)V

    .line 205
    .end local v0           #defColor:I
    :cond_1
    iput v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    .line 207
    .end local v2           #newSize:Landroid/graphics/PointF;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3}, Lcom/android/launcher2/AlphabeticalListTextPopup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    .line 208
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3, v7}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setVisibility(I)V

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/AlphabeticalListTextPopup;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateViewIndexes()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 584
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->clearIndexMatches()V

    .line 585
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 586
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 587
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 588
    .local v1, indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    invoke-virtual {v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->clearCurrentChar()V

    .line 589
    if-lez v0, :cond_0

    invoke-virtual {v1, v4, v4}, Lcom/android/launcher2/AlphabeticalListIndicator;->setIndexStr(Ljava/lang/String;Landroid/graphics/PointF;)V

    .line 586
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    .end local v1           #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 404
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 405
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 406
    return-void
.end method

.method public notifyDataChanged()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppsListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsListAdapter;->notifyDataSetChanged()V

    .line 552
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->updateViewIndexes()V

    .line 554
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 513
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 514
    iput-object v5, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    .line 519
    invoke-virtual {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->getChildCount()I

    move-result v0

    .line 520
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AlphabeticalListContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 522
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/AlphabeticalListIndicator;

    if-eqz v3, :cond_1

    .line 523
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    move-object v3, v2

    check-cast v3, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_DisableFastScrollIndex"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 520
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/launcher2/AlphabeticalListTextPopup;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 529
    check-cast v3, Lcom/android/launcher2/AlphabeticalListTextPopup;

    iput-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollTextView:Lcom/android/launcher2/AlphabeticalListTextPopup;

    .line 531
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_DisableFastScrollIndex"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 533
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 538
    .end local v2           #view:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 539
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AlphabeticalListIndicator;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/AlphabeticalListIndicator;->setAllowWiggle(Z)V

    .line 542
    :cond_3
    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AlphabeticalListContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    iput-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    .line 543
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v5}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/widget/ExpandableListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 545
    iget-object v3, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, p0}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 547
    return-void
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .parameter "aGroupPosition"

    .prologue
    .line 615
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .parameter "aGroupPosition"

    .prologue
    .line 611
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "aEv"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v2

    .line 244
    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 245
    .local v1, pt:Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 253
    .local v0, indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AlphabeticalListIndicator;->Contains(Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mLastSelLen:I

    .line 257
    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/AlphabeticalListContainer;->feedPtToIndexView(ILandroid/graphics/PointF;)V

    .line 259
    iput v2, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    .line 260
    invoke-virtual {v0, v3}, Lcom/android/launcher2/AlphabeticalListIndicator;->setPressedImmediate(Z)V

    move v2, v3

    .line 261
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 26
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->getPaddingLeft()I

    move-result v18

    .line 411
    .local v18, padLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->getPaddingTop()I

    move-result v19

    .line 412
    .local v19, padTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->getMeasuredWidth()I

    move-result v21

    sub-int v21, v21, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->getPaddingRight()I

    move-result v22

    sub-int v6, v21, v22

    .line 413
    .local v6, availWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->getPaddingBottom()I

    move-result v22

    sub-int v4, v21, v22

    .line 414
    .local v4, availHeight:I
    new-instance v5, Landroid/graphics/RectF;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v23, v18, v6

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-int v24, v19, v4

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 417
    .local v5, availRect:Landroid/graphics/RectF;
    if-eqz p1, :cond_0

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->handleUp()Z

    .line 421
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    move/from16 v14, v18

    .line 425
    .local v14, indexViewOffset:I
    :goto_0
    const/16 v20, 0x0

    .line 428
    .local v20, totalIndexViewsWidth:I
    move/from16 v16, v18

    .line 429
    .local v16, listViewLeft:I
    add-int v17, v18, v6

    .line 431
    .local v17, listViewRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AlphabeticalListContainer;->getChildCount()I

    move-result v12

    .line 432
    .local v12, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v12, :cond_5

    .line 433
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/AlphabeticalListContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 434
    .local v9, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v9, v0, :cond_3

    .line 432
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v9           #child:Landroid/view/View;
    .end local v12           #count:I
    .end local v13           #i:I
    .end local v14           #indexViewOffset:I
    .end local v16           #listViewLeft:I
    .end local v17           #listViewRight:I
    .end local v20           #totalIndexViewsWidth:I
    :cond_2
    move v14, v6

    .line 421
    goto :goto_0

    .line 441
    .restart local v9       #child:Landroid/view/View;
    .restart local v12       #count:I
    .restart local v13       #i:I
    .restart local v14       #indexViewOffset:I
    .restart local v16       #listViewLeft:I
    .restart local v17       #listViewRight:I
    .restart local v20       #totalIndexViewsWidth:I
    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 442
    .local v11, childWidth:I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 444
    .local v10, childHeight:I
    instance-of v0, v9, Lcom/android/launcher2/AlphabeticalListIndicator;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object v15, v9

    .line 445
    check-cast v15, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 451
    .local v15, indicator:Lcom/android/launcher2/AlphabeticalListIndicator;
    add-int v20, v20, v11

    .line 452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    goto :goto_2

    .line 454
    :pswitch_0
    add-int v21, v14, v11

    add-int v22, v19, v10

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v15, v14, v0, v1, v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->layout(IIII)V

    .line 460
    add-int/2addr v14, v11

    .line 461
    invoke-virtual {v15}, Lcom/android/launcher2/AlphabeticalListIndicator;->isFloating()Z

    move-result v21

    if-nez v21, :cond_1

    .line 462
    move/from16 v16, v14

    goto :goto_2

    .line 466
    :pswitch_1
    sub-int v21, v14, v11

    add-int v22, v19, v10

    move/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v14, v2}, Lcom/android/launcher2/AlphabeticalListIndicator;->layout(IIII)V

    .line 472
    sub-int/2addr v14, v11

    .line 473
    invoke-virtual {v15}, Lcom/android/launcher2/AlphabeticalListIndicator;->isFloating()Z

    move-result v21

    if-nez v21, :cond_1

    .line 474
    move/from16 v17, v14

    goto :goto_2

    .line 481
    .end local v15           #indicator:Lcom/android/launcher2/AlphabeticalListIndicator;
    :cond_4
    iget v0, v5, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v22

    int-to-float v0, v11

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v7, v0

    .line 482
    .local v7, centeredLeft:I
    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v22

    int-to-float v0, v10

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    .line 483
    .local v8, centeredTop:I
    add-int v21, v7, v11

    add-int v22, v8, v10

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v7, v8, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_2

    .line 491
    .end local v7           #centeredLeft:I
    .end local v8           #centeredTop:I
    .end local v9           #child:Landroid/view/View;
    .end local v10           #childHeight:I
    .end local v11           #childWidth:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getMeasuredHeight()I

    move-result v10

    .line 492
    .restart local v10       #childHeight:I
    iget v0, v5, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v22

    int-to-float v0, v10

    move/from16 v23, v0

    sub-float v22, v22, v23

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    .line 493
    .restart local v8       #centeredTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    move-object/from16 v21, v0

    add-int v22, v8, v10

    move-object/from16 v0, v21

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/ExpandableListView;->layout(IIII)V

    .line 499
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGravity:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1

    .line 509
    :goto_3
    return-void

    .line 501
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 505
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexGrpBoundary:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    iget v0, v5, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    iget v0, v5, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 499
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 398
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 399
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 400
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 595
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mFastScrollIndexViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AlphabeticalListIndicator;

    .line 601
    .local v0, indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    if-nez p2, :cond_1

    .line 602
    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->unPressDelayed()Z

    .line 607
    .end local v0           #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    :cond_0
    :goto_0
    return-void

    .line 604
    .restart local v0       #indexView:Lcom/android/launcher2/AlphabeticalListIndicator;
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/AlphabeticalListIndicator;->pressDelayed()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "aEv"

    .prologue
    const/4 v0, 0x0

    .line 381
    iget v1, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mCurrentFastScrollIndexView:I

    if-gez v1, :cond_0

    .line 393
    :goto_0
    return v0

    .line 384
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 391
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->handleUp()Z

    move-result v0

    goto :goto_0

    .line 389
    :pswitch_2
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/android/launcher2/AlphabeticalListContainer;->handleMove(Landroid/graphics/PointF;)Z

    move-result v0

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAdapter(Lcom/android/launcher2/MenuAppsListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 559
    if-eqz p1, :cond_0

    .line 560
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuAppsListAdapter;->setListener(Lcom/android/launcher2/MenuAppsListAdapter$MenuAppsListAdapterListener;)V

    .line 562
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AlphabeticalListContainer;->updateViewIndexes()V

    .line 564
    :cond_1
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 572
    :cond_0
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 568
    :cond_0
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AlphabeticalListContainer;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 576
    :cond_0
    return-void
.end method
