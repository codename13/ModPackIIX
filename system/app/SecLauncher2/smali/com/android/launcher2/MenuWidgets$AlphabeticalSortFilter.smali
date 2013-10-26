.class public Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/MenuWidgets$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlphabeticalSortFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 947
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterWidgets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    .local p1, availableWidget:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 951
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 952
    .local v0, collator:Ljava/text/Collator;
    new-instance v2, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter$1;-><init>(Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;Ljava/text/Collator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 958
    return-object v1
.end method
