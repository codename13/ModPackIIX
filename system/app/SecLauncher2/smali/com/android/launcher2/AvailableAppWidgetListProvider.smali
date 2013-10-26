.class public Lcom/android/launcher2/AvailableAppWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableAppWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;
    }
.end annotation


# static fields
.field static final CACHED_PREVIEW:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "AvailableAppWidgetListProvider"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->CACHED_PREVIEW:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-direct {v0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AvailableAppWidgetListProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAvailableWidgets()Ljava/util/List;
    .locals 7
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
    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    iget-object v4, p0, Lcom/android/launcher2/AvailableAppWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v3

    .line 48
    .local v3, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 49
    .local v2, widget:Landroid/appwidget/AppWidgetProviderInfo;
    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v4, :cond_1

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v4, :cond_1

    .line 50
    new-instance v4, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher2/AvailableAppWidgetListProvider$AvailableAppWidget;-><init>(Lcom/android/launcher2/AvailableAppWidgetListProvider;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-boolean v4, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "AvailableAppWidgetListProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_1
    sget-boolean v4, Lcom/android/launcher2/AvailableAppWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    .line 53
    const-string v4, "AvailableAppWidgetListProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Widget "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has invalid dimensions ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v2           #widget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    return-object v1
.end method
