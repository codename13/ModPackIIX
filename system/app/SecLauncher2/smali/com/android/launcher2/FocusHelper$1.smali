.class final Lcom/android/launcher2/FocusHelper$1;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
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
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cellCountX:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 922
    iput p1, p0, Lcom/android/launcher2/FocusHelper$1;->val$cellCountX:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 6
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 926
    .local v0, llp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 927
    .local v2, rlp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, p0, Lcom/android/launcher2/FocusHelper$1;->val$cellCountX:I

    mul-int/2addr v4, v5

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int v1, v4, v5

    .line 928
    .local v1, lvIndex:I
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, p0, Lcom/android/launcher2/FocusHelper$1;->val$cellCountX:I

    mul-int/2addr v4, v5

    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int v3, v4, v5

    .line 929
    .local v3, rvIndex:I
    sub-int v4, v1, v3

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 922
    check-cast p1, Landroid/view/View;

    .end local p1
    check-cast p2, Landroid/view/View;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/FocusHelper$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
