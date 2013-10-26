.class Lcom/android/launcher2/PagedView$PageInfo;
.super Ljava/lang/Object;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageInfo"
.end annotation


# instance fields
.field public mDistFromCntr:I

.field public mIndex:I

.field public mLowerBound:I

.field public mTransX:I

.field public mTransY:I

.field public mViewCntr:I

.field public mViewCntrRel:I

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/launcher2/PagedView$PageInfo;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/PagedView;Lcom/android/launcher2/PagedView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView$PageInfo;-><init>(Lcom/android/launcher2/PagedView;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 181
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mTransX:I

    .line 182
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mDistFromCntr:I

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PagedView$PageInfo;->mTransY:I

    .line 190
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mIndex:I

    .line 191
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mLowerBound:I

    .line 192
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntr:I

    .line 193
    iput v1, p0, Lcom/android/launcher2/PagedView$PageInfo;->mViewCntrRel:I

    .line 194
    return-void
.end method
