.class public Lcom/android/launcher2/ChildIterable;
.super Ljava/lang/Object;
.source "ChildIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ChildIterable$1;,
        Lcom/android/launcher2/ChildIterable$ChildIterator;
    }
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
.field private mView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/launcher2/ChildIterable;->mView:Landroid/view/ViewGroup;

    .line 16
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/ChildIterable;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/launcher2/ChildIterable;->mView:Landroid/view/ViewGroup;

    return-object v0
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
    .line 19
    new-instance v0, Lcom/android/launcher2/ChildIterable$ChildIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/ChildIterable$ChildIterator;-><init>(Lcom/android/launcher2/ChildIterable;Lcom/android/launcher2/ChildIterable$1;)V

    return-object v0
.end method
