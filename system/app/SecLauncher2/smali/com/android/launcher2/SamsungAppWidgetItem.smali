.class public Lcom/android/launcher2/SamsungAppWidgetItem;
.super Ljava/lang/Object;
.source "SamsungAppWidgetItem.java"


# instance fields
.field public defaultAppWidget:Z

.field public mClassName:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mHorizontalHeight:I

.field public mHorizontalWidth:I

.field public mIntent:Landroid/content/Intent;

.field public mOrder:I

.field public mPackageName:Ljava/lang/String;

.field public mThemeName:Ljava/lang/String;

.field public mVerticalHeight:I

.field public mVerticalWidth:I

.field public mWidgetIcon:Landroid/graphics/drawable/Drawable;

.field public mWidgetId:Ljava/lang/String;

.field public mWidgetPreview:I

.field public mWidgetTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 23
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    .line 24
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 25
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 31
    iput-object p1, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "title"
    .parameter "icon"
    .parameter "resPreview"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 23
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    .line 24
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 25
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 35
    iput-object v1, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    .line 39
    iput p3, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetPreview:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter "className"
    .parameter "packageName"
    .parameter "title"
    .parameter "icon"
    .parameter "previewRes"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    .line 23
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    .line 24
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 25
    iput v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 43
    iput-object p1, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetTitle:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetIcon:Landroid/graphics/drawable/Drawable;

    .line 47
    iput p5, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mWidgetPreview:I

    .line 48
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getHeight(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 59
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 60
    iget v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalHeight:I

    .line 62
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalHeight:I

    goto :goto_0
.end method

.method public getWidth(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 51
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 52
    iget v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mHorizontalWidth:I

    .line 54
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/SamsungAppWidgetItem;->mVerticalWidth:I

    goto :goto_0
.end method
