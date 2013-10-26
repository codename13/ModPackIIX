.class Lcom/android/launcher2/DragState$DropPos;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropPos"
.end annotation


# instance fields
.field mCellX:I

.field mCellY:I

.field mScreen:I

.field mTarget:Lcom/android/launcher2/CellLayout;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 606
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/DragState$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/android/launcher2/DragState$DropPos;-><init>()V

    return-void
.end method
