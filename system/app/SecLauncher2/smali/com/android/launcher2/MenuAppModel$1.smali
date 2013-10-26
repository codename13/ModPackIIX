.class final Lcom/android/launcher2/MenuAppModel$1;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppModel$Normalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/MenuAppModel$Normalizer",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, ret:I
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v2, :cond_4

    iget v3, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v2, :cond_4

    .line 781
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    #calls: Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    .line 782
    if-nez v0, :cond_0

    .line 783
    iget v3, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iget v4, p2, Lcom/android/launcher2/AppItem;->mCell:I

    #calls: Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    .line 796
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 798
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 799
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 805
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 807
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    .line 808
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 814
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 818
    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v3, p2, Lcom/android/launcher2/BaseItem;->mId:J

    #calls: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    .line 822
    :cond_3
    return v0

    .line 786
    :cond_4
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, v4, :cond_5

    .line 789
    iget-wide v3, p1, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iget-wide v5, p2, Lcom/android/launcher2/AppItem;->mCreateTime:J

    #calls: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v3, v4, v5, v6}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    goto :goto_0

    .line 794
    :cond_5
    iget v3, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-ne v3, v2, :cond_6

    move v0, v1

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    .line 801
    :cond_7
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    .line 803
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_8

    move v0, v2

    :goto_4
    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_4

    .line 810
    :cond_9
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v3, v4, :cond_2

    .line 812
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_a

    move v0, v2

    :goto_5
    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 775
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    check-cast p2, Lcom/android/launcher2/AppItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$1;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 7
    .parameter
    .parameter "maxItemsPerScreen"
    .parameter "keepEmptyPages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 830
    const/4 v5, 0x0

    .line 831
    .local v5, targetScreen:I
    const/4 v4, 0x0

    .line 832
    .local v4, targetCell:I
    const/4 v0, 0x0

    .line 833
    .local v0, currentScreen:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 834
    .local v2, item:Lcom/android/launcher2/AppItem;
    iget v3, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 835
    .local v3, itemScreen:I
    if-eq v3, v0, :cond_1

    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 836
    move v0, v3

    .line 837
    if-eqz p3, :cond_4

    .line 838
    move v5, v3

    .line 839
    const/4 v4, 0x0

    .line 846
    :cond_1
    :goto_1
    if-ne v3, v5, :cond_2

    iget v6, v2, Lcom/android/launcher2/AppItem;->mCell:I

    if-eq v6, v4, :cond_3

    .line 847
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 848
    iput v5, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 849
    iput v4, v2, Lcom/android/launcher2/AppItem;->mCell:I

    .line 851
    :cond_3
    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_0

    .line 852
    add-int/lit8 v5, v5, 0x1

    .line 853
    const/4 v4, 0x0

    goto :goto_0

    .line 841
    :cond_4
    if-eqz v4, :cond_1

    .line 842
    add-int/lit8 v5, v5, 0x1

    .line 843
    const/4 v4, 0x0

    goto :goto_1

    .line 856
    .end local v2           #item:Lcom/android/launcher2/AppItem;
    .end local v3           #itemScreen:I
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    const-string v0, "MenuAppModel.MENU_CUSTOM_NORMALIZER"

    return-object v0
.end method
