.class Lcom/android/launcher2/HomePendingItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomePendingItem.java"


# instance fields
.field componentName:Landroid/content/ComponentName;

.field public mSystemApp:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    .line 37
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    .line 41
    return-void
.end method
