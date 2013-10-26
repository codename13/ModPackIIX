.class final Lcom/android/launcher2/MenuAppModel$2;
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
    .line 870
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, ret:I
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 875
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 881
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 883
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    .line 884
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 890
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 894
    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v3, p2, Lcom/android/launcher2/BaseItem;->mId:J

    #calls: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    .line 897
    :cond_2
    return v0

    .line 877
    :cond_3
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    .line 879
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_4

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 886
    :cond_5
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v3, v4, :cond_1

    .line 888
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_6

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 870
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    check-cast p2, Lcom/android/launcher2/AppItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$2;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 0
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
    .line 903
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 905
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 909
    const-string v0, "MenuAppModel.MENU_ALPHA_NORMALIZER"

    return-object v0
.end method
