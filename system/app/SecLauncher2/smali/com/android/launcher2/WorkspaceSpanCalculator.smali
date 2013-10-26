.class public Lcom/android/launcher2/WorkspaceSpanCalculator;
.super Ljava/lang/Object;
.source "WorkspaceSpanCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    }
.end annotation


# instance fields
.field private final mCellCountX:I

.field private final mCellCountY:I

.field private final mLandCellGapX:I

.field private final mLandCellGapY:I

.field private final mLandCellSizeX:I

.field private final mLandCellSizeY:I

.field private mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field private mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field private mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPortCellGapX:I

.field private final mPortCellGapY:I

.field private final mPortCellSizeX:I

.field private final mPortCellSizeY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v5, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    invoke-direct {v5, v6, v6, v6, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 48
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f0c006b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 49
    .local v1, left:I
    const v5, 0x7f0c006d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 50
    .local v4, top:I
    const v5, 0x7f0c006c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 51
    .local v3, right:I
    const v5, 0x7f0c006e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    .local v0, bottom:I
    new-instance v5, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    invoke-direct {v5, v1, v4, v3, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    .line 54
    const v5, 0x7f0a002a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    .line 55
    const v5, 0x7f0a002b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    .line 57
    const v5, 0x7f0c0007

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    .line 58
    const v5, 0x7f0c0008

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    .line 60
    const v5, 0x7f0c0003

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    .line 61
    const v5, 0x7f0c0004

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    .line 63
    const v5, 0x7f0c0009

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    .line 64
    const v5, 0x7f0c000a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    .line 66
    const v5, 0x7f0c0005

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    .line 67
    const v5, 0x7f0c0006

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    .line 68
    return-void
.end method

.method private getSpanCount(III)I
    .locals 3
    .parameter "targetSize"
    .parameter "cellSize"
    .parameter "cellGap"

    .prologue
    .line 104
    const/4 v0, 0x1

    .line 105
    .local v0, count:I
    move v1, p2

    .line 106
    .local v1, size:I
    :goto_0
    if-le p1, v1, :cond_0

    .line 107
    add-int v2, p2, p3

    add-int/2addr v1, v2

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return v0
.end method

.method private getSpanForWidget(IIII[IZ)[I
    .locals 7
    .parameter "minPortWidth"
    .parameter "minPortHeight"
    .parameter "minLandWidth"
    .parameter "minLandHeight"
    .parameter "spanXY"
    .parameter "gedMode"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 128
    if-eqz p5, :cond_0

    array-length v4, p5

    if-ge v4, v5, :cond_1

    .line 129
    :cond_0
    new-array p5, v5, [I

    .line 133
    :cond_1
    if-eqz p6, :cond_2

    .line 139
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    invoke-direct {p0, p1, v4, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v2

    .line 140
    .local v2, portSpanX:I
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    invoke-direct {p0, p2, v4, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v3

    .line 142
    .local v3, portSpanY:I
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    invoke-direct {p0, p3, v4, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v0

    .line 143
    .local v0, landSpanX:I
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    invoke-direct {p0, p4, v4, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v1

    .line 153
    .local v1, landSpanY:I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, p5, v6

    .line 154
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, p5, v4

    .line 155
    return-object p5

    .line 146
    .end local v0           #landSpanX:I
    .end local v1           #landSpanY:I
    .end local v2           #portSpanX:I
    .end local v3           #portSpanY:I
    :cond_2
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v2

    .line 147
    .restart local v2       #portSpanX:I
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    invoke-direct {p0, p2, v4, v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v3

    .line 149
    .restart local v3       #portSpanY:I
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    invoke-direct {p0, p3, v4, v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v0

    .line 150
    .restart local v0       #landSpanX:I
    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget v5, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    invoke-direct {p0, p4, v4, v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanCount(III)I

    move-result v1

    .restart local v1       #landSpanY:I
    goto :goto_0
.end method


# virtual methods
.method public getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 8
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 186
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v7

    .line 188
    .local v7, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v3, v7, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v7, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    .line 189
    .local v1, width:I
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v3, v7, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v7, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    .line 191
    .local v2, height:I
    const/4 v6, 0x1

    move-object v0, p0

    move v3, v1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .locals 7
    .parameter "component"

    .prologue
    .line 77
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    .line 83
    .local v2, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 90
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    :cond_0
    move-object v3, v2

    .line 93
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .local v3, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :goto_0
    return-object v3

    .line 84
    .end local v3           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .restart local v2       #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v3, v2

    .line 86
    .end local v2           #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .restart local v3       #padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    goto :goto_0
.end method

.method public getSpanForSamsungWidget(IIII[I)[I
    .locals 7
    .parameter "minWidthPort"
    .parameter "minHeightPort"
    .parameter "minWidthLand"
    .parameter "minHeightLand"
    .parameter "spanXY"

    .prologue
    .line 208
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 8
    .parameter "info"
    .parameter "spanXY"

    .prologue
    .line 168
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v7

    .line 170
    .local v7, padding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v3, v7, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v7, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    .line 171
    .local v1, width:I
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v3, v7, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v7, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    .line 173
    .local v2, height:I
    const/4 v6, 0x1

    move-object v0, p0

    move v3, v1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[IZ)[I

    move-result-object v0

    return-object v0
.end method
