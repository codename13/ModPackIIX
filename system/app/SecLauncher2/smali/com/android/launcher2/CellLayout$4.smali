.class Lcom/android/launcher2/CellLayout$4;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout;->findSpansForCell(IIII)Ljava/util/List;
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
        "Lcom/android/launcher2/CellLayout$SpanRect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$4;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher2/CellLayout$SpanRect;Lcom/android/launcher2/CellLayout$SpanRect;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 1655
    iget-object v0, p2, Lcom/android/launcher2/CellLayout$SpanRect;->size:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/android/launcher2/CellLayout$SpanRect;->size:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1652
    check-cast p1, Lcom/android/launcher2/CellLayout$SpanRect;

    .end local p1
    check-cast p2, Lcom/android/launcher2/CellLayout$SpanRect;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayout$4;->compare(Lcom/android/launcher2/CellLayout$SpanRect;Lcom/android/launcher2/CellLayout$SpanRect;)I

    move-result v0

    return v0
.end method
