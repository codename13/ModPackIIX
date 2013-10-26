.class Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter$1;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;->filterWidgets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/AvailableWidget;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;Ljava/text/Collator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter$1;->this$0:Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;

    iput-object p2, p0, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter$1;->val$collator:Ljava/text/Collator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AvailableWidget;Lcom/android/launcher2/AvailableWidget;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter$1;->val$collator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 952
    check-cast p1, Lcom/android/launcher2/AvailableWidget;

    .end local p1
    check-cast p2, Lcom/android/launcher2/AvailableWidget;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter$1;->compare(Lcom/android/launcher2/AvailableWidget;Lcom/android/launcher2/AvailableWidget;)I

    move-result v0

    return v0
.end method
