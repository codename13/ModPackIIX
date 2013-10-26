.class public Lcom/android/launcher2/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 75
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 67
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    return-void
.end method

.method public setX(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 84
    return-void
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 92
    return-void
.end method
