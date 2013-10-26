.class public Lcom/android/launcher2/BadgeCache$BadgeCount;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BadgeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadgeCount"
.end annotation


# instance fields
.field mCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "initialValue"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/launcher2/BadgeCache$BadgeCount;->mCount:I

    .line 50
    return-void
.end method
