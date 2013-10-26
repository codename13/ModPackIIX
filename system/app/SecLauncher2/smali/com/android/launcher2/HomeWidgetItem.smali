.class Lcom/android/launcher2/HomeWidgetItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomeWidgetItem.java"


# instance fields
.field public final appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;

.field public final mComponentName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;I)V
    .locals 1
    .parameter "provider"
    .parameter "appWidgetId"

    .prologue
    .line 46
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 47
    iput p2, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    .line 48
    iput-object p1, p0, Lcom/android/launcher2/HomeWidgetItem;->mComponentName:Landroid/content/ComponentName;

    .line 49
    return-void
.end method


# virtual methods
.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 54
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 66
    return-void
.end method
