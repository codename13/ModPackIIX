.class Lcom/android/launcher2/PagedView$3;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedView;->grandchildren()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 2582
    iput-object p1, p0, Lcom/android/launcher2/PagedView$3;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2585
    new-instance v0, Lcom/android/launcher2/PagedView$GrandchildIterator;

    iget-object v1, p0, Lcom/android/launcher2/PagedView$3;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct {v0, v1}, Lcom/android/launcher2/PagedView$GrandchildIterator;-><init>(Lcom/android/launcher2/PagedView;)V

    return-object v0
.end method
