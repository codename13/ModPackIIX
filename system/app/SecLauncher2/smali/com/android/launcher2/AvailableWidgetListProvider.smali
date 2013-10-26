.class interface abstract Lcom/android/launcher2/AvailableWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableWidgetListProvider.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final DEBUGGABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/launcher2/AvailableWidgetListProvider;->DEBUGGABLE:Z

    return-void
.end method


# virtual methods
.method public abstract getAvailableWidgets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end method
