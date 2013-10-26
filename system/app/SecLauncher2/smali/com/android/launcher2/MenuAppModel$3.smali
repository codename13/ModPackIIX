.class final Lcom/android/launcher2/MenuAppModel$3;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Ljava/util/Comparator;


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
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 918
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 921
    iget-wide v3, p1, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iget-wide v5, p2, Lcom/android/launcher2/AppItem;->mCreateTime:J

    #calls: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v3, v4, v5, v6}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    .line 922
    .local v0, ret:I
    if-nez v0, :cond_2

    .line 924
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 925
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 931
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 933
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    .line 934
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 940
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 944
    iget-wide v1, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v3, p2, Lcom/android/launcher2/BaseItem;->mId:J

    #calls: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    .line 948
    :cond_2
    return v0

    .line 927
    :cond_3
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    .line 929
    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_4

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 936
    :cond_5
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v3, v4, :cond_1

    .line 938
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
    .line 918
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1
    check-cast p2, Lcom/android/launcher2/AppItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$3;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method
