.class Lcom/android/launcher2/HomePendingWidget;
.super Lcom/android/launcher2/HomePendingItem;
.source "HomePendingWidget.java"


# instance fields
.field configurationData:Landroid/os/Parcelable;

.field hasDefaultPreview:Z

.field mimeType:Ljava/lang/String;

.field minHeight:I

.field minWidth:I


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .parameter "i"
    .parameter "dataMimeType"
    .parameter "data"

    .prologue
    .line 33
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 34
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    .line 35
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 36
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/android/launcher2/HomePendingWidget;->minWidth:I

    .line 37
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/android/launcher2/HomePendingWidget;->minHeight:I

    .line 38
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/HomePendingWidget;->hasDefaultPreview:Z

    .line 39
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 40
    iput-object p2, p0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    .line 43
    :cond_0
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
