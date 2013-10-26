.class public Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableSamsungAppWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider$AvailableSamsungAppWidget;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AvailableSamsungAppWidgetListProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

.field private final mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getSamsungWidgetPackageManager()Lcom/android/launcher2/SamsungWidgetPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 25
    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v1, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;)Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;)Lcom/android/launcher2/SamsungWidgetPackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    return-object v0
.end method


# virtual methods
.method public getAvailableWidgets()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    iget-object v3, p0, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungAppWidgetItem;

    .line 33
    .local v1, item:Lcom/android/launcher2/SamsungAppWidgetItem;
    new-instance v3, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider$AvailableSamsungAppWidget;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider$AvailableSamsungAppWidget;-><init>(Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;Lcom/android/launcher2/SamsungAppWidgetItem;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-boolean v3, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    .line 35
    const-string v3, "AvailableSamsungAppWidgetListProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Samsung Widget ComponentInfo{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} added"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    .end local v1           #item:Lcom/android/launcher2/SamsungAppWidgetItem;
    :cond_1
    sget-boolean v3, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    const-string v3, "AvailableSamsungAppWidgetListProvider"

    const-string v4, "No Samsung App Widgets were loaded"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_2
    return-object v2
.end method
