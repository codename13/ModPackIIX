.class public Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
.super Ljava/lang/Object;
.source "WorkspaceSpanCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WorkspaceSpanCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Padding"
.end annotation


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    .line 39
    iput p2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    .line 40
    iput p3, p0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    .line 41
    iput p4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    .line 42
    return-void
.end method
