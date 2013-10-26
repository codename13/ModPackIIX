.class Lcom/android/launcher2/CellLayout$SpanRect;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanRect"
.end annotation


# instance fields
.field public final height:I

.field public final size:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;II)V
    .locals 1
    .parameter
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$SpanRect;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1618
    iput p2, p0, Lcom/android/launcher2/CellLayout$SpanRect;->width:I

    .line 1619
    iput p3, p0, Lcom/android/launcher2/CellLayout$SpanRect;->height:I

    .line 1620
    mul-int v0, p2, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$SpanRect;->size:Ljava/lang/Integer;

    .line 1621
    return-void
.end method
