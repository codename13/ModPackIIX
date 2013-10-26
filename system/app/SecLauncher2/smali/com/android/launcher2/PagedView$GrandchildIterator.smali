.class Lcom/android/launcher2/PagedView$GrandchildIterator;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GrandchildIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private pageChildIndex:I

.field private pageIndex:I

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2594
    iput-object p1, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2591
    iput v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageIndex:I

    .line 2592
    iput v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageChildIndex:I

    .line 2596
    invoke-direct {p0}, Lcom/android/launcher2/PagedView$GrandchildIterator;->advancePageIfNeeded()V

    .line 2597
    return-void
.end method

.method private advancePageIfNeeded()V
    .locals 2

    .prologue
    .line 2618
    :goto_0
    iget v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageIndex:I

    iget-object v1, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageChildIndex:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView$GrandchildIterator;->getPage()Lcom/android/launcher2/Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2619
    iget v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageIndex:I

    .line 2620
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageChildIndex:I

    goto :goto_0

    .line 2622
    :cond_0
    return-void
.end method


# virtual methods
.method public getPage()Lcom/android/launcher2/Page;
    .locals 2

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->this$0:Lcom/android/launcher2/PagedView;

    iget v1, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Page;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 2602
    iget v0, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageIndex:I

    iget-object v1, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Landroid/view/View;
    .locals 3

    .prologue
    .line 2606
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView$GrandchildIterator;->getPage()Lcom/android/launcher2/Page;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageChildIndex:I

    invoke-interface {v1, v2}, Lcom/android/launcher2/Page;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 2607
    .local v0, v:Landroid/view/View;
    iget v1, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageChildIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/PagedView$GrandchildIterator;->pageChildIndex:I

    .line 2608
    invoke-direct {p0}, Lcom/android/launcher2/PagedView$GrandchildIterator;->advancePageIfNeeded()V

    .line 2609
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView$GrandchildIterator;->next()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 2613
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
