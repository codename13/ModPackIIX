.class Lcom/android/launcher2/HomePendingSamsungWidget;
.super Lcom/android/launcher2/HomePendingItem;
.source "HomePendingSamsungWidget.java"


# instance fields
.field mInfo:Lcom/android/launcher2/SamsungAppWidgetItem;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/SamsungAppWidgetItem;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 6
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 7
    iput-object p1, p0, Lcom/android/launcher2/HomePendingSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 8
    return-void
.end method
