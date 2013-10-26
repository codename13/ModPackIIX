.class public abstract Lcom/android/launcher2/DrawGLFunction$Callback;
.super Ljava/lang/Object;
.source "DrawGLFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DrawGLFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private functor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    iget v0, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DrawGLFunction$Callback;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput p1, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:I

    return p1
.end method


# virtual methods
.method public abstract drawGL([F)V
.end method
