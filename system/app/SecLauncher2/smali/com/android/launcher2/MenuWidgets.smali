.class public Lcom/android/launcher2/MenuWidgets;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "MenuWidgets.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;,
        Lcom/android/launcher2/MenuWidgets$WidgetStateObj;,
        Lcom/android/launcher2/MenuWidgets$WidgetState;,
        Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;,
        Lcom/android/launcher2/MenuWidgets$Filter;,
        Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;,
        Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;,
        Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;
    }
.end annotation


# static fields
.field private static final MW_DEBUG:Z = false

.field private static final PAGE_BG_ALPHA:I = 0x0

.field private static final PAGE_SLEEP_DELAY:I = 0x96

.field private static final PAGE_SLEEP_DELAY_FIRST:I = 0xc8

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuWidgets"

.field private static final TRANSITION_MAX_ROTATION:F = 16.0f

.field private static final TRANSITION_PIVOT:F = 0.5f

.field private static final UPDATE_PACKAGES_STR:Ljava/lang/String; = "appModelUpdated"


# instance fields
.field private mDisplayedWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInProgress:Z

.field private mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

.field private mHasUninstallableWidgets:Z

.field private final mLastPositions:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListenerAttached:Z

.field private mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

.field private mNormalTitleBar:Landroid/view/ViewGroup;

.field private mNumWidgetPages:I

.field private mPendingUpdatePackages:Z

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private final mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

.field private mToast:Landroid/widget/Toast;

.field private mUninstallTitleBar:Landroid/view/View;

.field private final mWidgetPageIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidgetListProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 110
    new-instance v1, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;

    invoke-direct {v1}, Lcom/android/launcher2/MenuWidgets$AlphabeticalSortFilter;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    .line 116
    iput-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    .line 119
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 120
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    .line 292
    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    .line 1033
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1034
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateUninstall;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1035
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 1036
    new-instance v1, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    .line 124
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    .line 126
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/ArrayList;)V

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/ArrayList;

    .line 129
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Ljava/util/TreeMap;

    .line 131
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetPageIndex:Ljava/util/Map;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    .line 138
    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    .line 140
    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setDragSlopeThreshold(F)V

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/ArrayList;

    .line 143
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableSamsungAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->setSaveEnabled(Z)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgetsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateNormal:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/MenuWidgets;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateUninstall:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStateSearch:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/HomePendingItem;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/MenuWidgets;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/MenuWidgets;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/MenuWidgets;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->setDragInProgress(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuWidgets;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuWidgets;Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuWidgets;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 72
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/MenuWidgets;->prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V

    return-void
.end method

.method private beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v3, v4, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    .line 363
    .local v0, createHomeItem:Lcom/android/launcher2/HomePendingItem;
    iget v3, p1, Lcom/android/launcher2/PagedViewWidget;->spanX:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 364
    iget v3, p1, Lcom/android/launcher2/PagedViewWidget;->spanY:I

    iput v3, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 366
    const v3, 0x7f070014

    invoke-virtual {p1, v3}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, dragView:Landroid/view/View;
    move-object v3, v2

    .line 367
    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 368
    .local v1, dragDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->exitAllApps(Z)V

    .line 373
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    const-wide/16 v4, 0x23

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 374
    new-instance v3, Lcom/android/launcher2/ShadowBuilder;

    check-cast v1, Lcom/android/launcher2/FastBitmapDrawable;

    .end local v1           #dragDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Lcom/android/launcher2/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lcom/android/launcher2/Launcher;->startDrag(Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Z

    goto :goto_0
.end method

.method private cancelAllTasks(Ljava/lang/String;)V
    .locals 4
    .parameter "who"

    .prologue
    .line 409
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 410
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    .line 412
    .local v2, task:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    move-result v1

    .line 416
    .local v1, res:Z
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 418
    .end local v1           #res:Z
    .end local v2           #task:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    :cond_0
    return-void
.end method

.method private clickNotAllowed(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const v4, 0x7f0e0006

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1432
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-nez v3, :cond_0

    .line 1433
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    .line 1438
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1440
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    .line 1441
    .local v1, offsetY:F
    const v3, 0x7f070014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1442
    .local v2, p:Landroid/view/View;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1443
    .local v0, bounce:Landroid/animation/AnimatorSet;
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v6, [F

    aput v1, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x7d

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1450
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1451
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1452
    return-void

    .line 1436
    .end local v0           #bounce:Landroid/animation/AnimatorSet;
    .end local v1           #offsetY:F
    .end local v2           #p:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 7

    .prologue
    .line 155
    const/4 v2, -0x1

    .line 156
    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v1

    .line 158
    .local v1, currentPage:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 159
    .local v3, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v0

    .line 160
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 161
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v4, v5, v6

    .line 162
    .local v4, numItemsPerPage:I
    mul-int v5, v1, v4

    div-int/lit8 v6, v0, 0x2

    add-int v2, v5, v6

    .line 165
    .end local v0           #childCount:I
    .end local v1           #currentPage:I
    .end local v3           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v4           #numItemsPerPage:I
    :cond_0
    return v2
.end method

.method private getSleepForPage(I)I
    .locals 4
    .parameter "page"

    .prologue
    const/4 v2, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isLoopingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v1

    sub-int p1, v1, p1

    .line 443
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 444
    .local v0, pageDiff:I
    mul-int/lit16 v3, v0, 0x96

    if-lez v0, :cond_1

    const/16 v1, 0xc8

    :goto_0
    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3
    .parameter "page"

    .prologue
    const/4 v1, 0x0

    .line 426
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 427
    .local v0, pageDiff:I
    if-gtz v0, :cond_1

    .line 429
    const/4 v1, -0x1

    .line 435
    :cond_0
    :goto_0
    return v1

    .line 430
    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0
.end method

.method private isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z
    .locals 2
    .parameter "layout"
    .parameter "page"

    .prologue
    .line 637
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewGridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 641
    .local v0, pageValid:Z
    :goto_0
    return v0

    .line 637
    .end local v0           #pageValid:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1422
    iget-boolean v0, p1, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 8
    .parameter "who"
    .parameter "task"
    .parameter "data"

    .prologue
    .line 646
    if-eqz p3, :cond_0

    iget-object v6, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v7, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 676
    :cond_0
    return-void

    .line 653
    :cond_1
    if-eqz p2, :cond_2

    .line 655
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 659
    :cond_2
    iget-object v4, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 660
    .local v4, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget v2, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    .line 661
    .local v2, cellWidth:I
    iget v1, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    .line 662
    .local v1, cellHeight:I
    iget-object v6, p3, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 663
    .local v0, availableWidget:Lcom/android/launcher2/AvailableWidget;
    if-eqz p2, :cond_3

    .line 665
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v6

    if-nez v6, :cond_0

    .line 668
    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 670
    :cond_3
    invoke-interface {v0, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 671
    .local v5, preview:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V
    .locals 13
    .parameter "who"
    .parameter "data"

    .prologue
    .line 679
    if-eqz p2, :cond_0

    .line 680
    iget-object v11, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iget v12, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    invoke-direct {p0, v11, v12}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget v7, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    .line 689
    .local v7, page:I
    iget v11, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v11, v12

    mul-int v4, v7, v11

    .line 690
    .local v4, keyOffset:I
    iget-object v6, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    .line 692
    .local v6, layout:Lcom/android/launcher2/PagedViewGridLayout;
    if-eqz v6, :cond_0

    .line 694
    iget-object v11, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    .line 695
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 696
    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/PagedViewWidget;

    .line 697
    .local v10, widget:Lcom/android/launcher2/PagedViewWidget;
    if-eqz v10, :cond_3

    .line 698
    iget-object v11, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 699
    .local v8, preview:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 700
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget v12, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    if-ge v11, v12, :cond_2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    iget v12, p2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    if-lt v11, v12, :cond_4

    :cond_2
    const/4 v9, 0x1

    .line 704
    .local v9, scale:Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v11, v12, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v11

    if-ne v7, v11, :cond_5

    iget-object v11, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Ljava/util/TreeMap;

    add-int v12, v2, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v8, :cond_5

    const/4 v0, 0x1

    .line 707
    .local v0, animate:Z
    :goto_3
    iget-object v11, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Ljava/util/TreeMap;

    add-int v12, v2, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    new-instance v11, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v11, v8}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10, v11, v2, v9, v0}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    .line 695
    .end local v0           #animate:Z
    .end local v8           #preview:Landroid/graphics/Bitmap;
    .end local v9           #scale:Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 700
    .restart local v8       #preview:Landroid/graphics/Bitmap;
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 704
    .restart local v9       #scale:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 718
    .end local v8           #preview:Landroid/graphics/Bitmap;
    .end local v9           #scale:Z
    .end local v10           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_6
    iget v11, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v5, v11, v12

    .line 719
    .local v5, last:I
    move v3, v2

    .local v3, j:I
    :goto_4
    if-ge v3, v5, :cond_8

    .line 720
    iget-object v11, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Ljava/util/TreeMap;

    add-int v12, v3, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 721
    iget-object v11, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Ljava/util/TreeMap;

    add-int v12, v3, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 725
    :cond_8
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->onWidgetLoadPreviewComplete()V

    goto/16 :goto_0
.end method

.method private onWidgetLoadPreviewComplete()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->refreshWidgetStateView()V

    .line 634
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;III)V
    .locals 12
    .parameter "pl"
    .parameter "page"
    .parameter
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "cellCountX"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PagedViewGridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 452
    .local p3, widgets:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->isPageValid(Lcom/android/launcher2/PagedViewGridLayout;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 459
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;>;"
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 460
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    .line 461
    .local v10, task:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    iget v11, v10, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->page:I

    .line 462
    .local v11, taskPage:I
    if-eq v11, p2, :cond_1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v11, v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v11, v1, :cond_2

    .line 465
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    .line 466
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 471
    :cond_2
    invoke-direct {p0, v11}, Lcom/android/launcher2/MenuWidgets;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_1

    .line 476
    .end local v10           #task:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    .end local v11           #taskPage:I
    :cond_3
    new-instance v0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    new-instance v6, Lcom/android/launcher2/MenuWidgets$3;

    invoke-direct {v6, p0}, Lcom/android/launcher2/MenuWidgets$3;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    new-instance v7, Lcom/android/launcher2/MenuWidgets$4;

    invoke-direct {v7, p0}, Lcom/android/launcher2/MenuWidgets$4;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    .line 515
    .local v0, pageData:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
    new-instance v9, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;

    invoke-direct {v9, p2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;-><init>(I)V

    .line 516
    .local v9, t:Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;
    invoke-direct {p0, p2}, Lcom/android/launcher2/MenuWidgets;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 517
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 521
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDisplayedWidgets(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, displayedWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/ArrayList;

    .line 193
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 194
    .local v0, hadUninstallable:Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 195
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AvailableWidget;

    .line 196
    .local v2, widget:Lcom/android/launcher2/AvailableWidget;
    invoke-interface {v2}, Lcom/android/launcher2/AvailableWidget;->canUninstall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    .line 201
    .end local v2           #widget:Lcom/android/launcher2/AvailableWidget;
    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    if-eq v3, v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->menuWidgetsUpdated(Z)V

    .line 204
    :cond_2
    return-void
.end method

.method private setDragInProgress(Z)V
    .locals 1
    .parameter "dragInProgress"

    .prologue
    .line 1480
    iput-boolean p1, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    .line 1481
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    if-eqz v0, :cond_0

    .line 1482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 1483
    const-string v0, "appModelUpdated"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 1485
    :cond_0
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 528
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;->setPadding(IIII)V

    .line 533
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 534
    .local v1, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 535
    .local v0, heightSpec:I
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/PagedViewGridLayout;->measure(II)V

    .line 536
    return-void
.end method

.method private syncWidgetRotation(I)V
    .locals 27
    .parameter "page"

    .prologue
    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 1654
    .local v23, r:Landroid/content/res/Resources;
    const v4, 0x7f0c004f

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    .line 1655
    .local v26, widgetWidth:I
    const v4, 0x7f0c0050

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 1657
    .local v25, widgetHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v19, v4, v6

    .line 1660
    .local v19, numItemsPerPage:I
    mul-int v20, p1, v19

    .line 1661
    .local v20, offset:I
    add-int v4, v20, v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1662
    .local v12, end:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 1665
    .local v5, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1666
    .local v16, layout:Lcom/android/launcher2/PagedViewGridLayout;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    .line 1667
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v13, v4, :cond_2

    .line 1668
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AvailableWidget;

    .line 1670
    .local v10, availableWidget:Lcom/android/launcher2/AvailableWidget;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/android/launcher2/PagedViewWidget;

    .line 1672
    .local v24, widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 1673
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 1674
    .local v11, cellSpan:[I
    invoke-interface {v10, v11}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 1675
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v6, 0x1

    aget v6, v11, v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 1676
    invoke-interface {v10}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1678
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1679
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1680
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1682
    const v4, 0x7f070014

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    .line 1683
    .local v21, preview:Landroid/widget/ImageView;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    .line 1684
    .local v17, linear:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    .line 1685
    .local v22, previewParam:Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v26

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1686
    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1687
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1690
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v14, v13, v4

    .line 1691
    .local v14, ix:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v15, v13, v4

    .line 1692
    .local v15, iy:I
    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/PagedViewWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/GridLayout$LayoutParams;

    .line 1693
    .local v18, lp:Landroid/widget/GridLayout$LayoutParams;
    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_1
    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1694
    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_2
    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1695
    const/high16 v4, -0x8000

    invoke-static {v4}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 1696
    const/high16 v4, -0x8000

    invoke-static {v4}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 1697
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1667
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1693
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1694
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 1701
    .end local v10           #availableWidget:Lcom/android/launcher2/AvailableWidget;
    .end local v11           #cellSpan:[I
    .end local v14           #ix:I
    .end local v15           #iy:I
    .end local v17           #linear:Landroid/view/View;
    .end local v18           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v21           #preview:Landroid/widget/ImageView;
    .end local v22           #previewParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v24           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1702
    .local v3, pl:Lcom/android/launcher2/PagedViewGridLayout;
    new-instance v2, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/MenuWidgets;->mPreviewHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;-><init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;IILcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData$AsyncTaskCallback;)V

    .line 1704
    .local v2, data:Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
    const-string v4, "rotation"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v2}, Lcom/android/launcher2/MenuWidgets;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AppsCustomizeAsyncTask;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    .line 1705
    const-string v4, "rotation"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/launcher2/MenuWidgets;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)V

    .line 1706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1707
    return-void
.end method

.method private testDataReady()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePageCounts()V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    .line 213
    return-void
.end method

.method private updateWidgetGridChildCount()I
    .locals 18

    .prologue
    .line 1573
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v9, v14, v15

    .line 1574
    .local v9, numItemsPerPage:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1575
    .local v13, widgetCount:I
    rem-int v6, v13, v9

    .line 1576
    .local v6, lastPageItemCount:I
    div-int v15, v13, v9

    if-nez v6, :cond_0

    const/4 v14, 0x0

    :goto_0
    add-int v10, v15, v14

    .line 1577
    .local v10, pageCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .line 1578
    .local v2, childCount:I
    const/4 v11, 0x0

    .line 1581
    .local v11, pageDiff:I
    sub-int v3, v10, v2

    .line 1582
    .local v3, diff:I
    move v11, v3

    .line 1583
    :goto_1
    if-eqz v3, :cond_2

    .line 1584
    if-lez v3, :cond_1

    .line 1585
    new-instance v7, Lcom/android/launcher2/PagedViewGridLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v7, v14, v15, v0}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 1586
    .local v7, layout:Lcom/android/launcher2/PagedViewGridLayout;
    const/4 v14, 0x0

    new-instance v15, Lcom/android/launcher2/PagedViewGridLayout$LayoutParams;

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v15 .. v17}, Lcom/android/launcher2/PagedViewGridLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14, v15}, Lcom/android/launcher2/MenuWidgets;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1588
    add-int/lit8 v3, v3, -0x1

    .line 1589
    goto :goto_1

    .line 1576
    .end local v2           #childCount:I
    .end local v3           #diff:I
    .end local v7           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v10           #pageCount:I
    .end local v11           #pageDiff:I
    :cond_0
    const/4 v14, 0x1

    goto :goto_0

    .line 1590
    .restart local v2       #childCount:I
    .restart local v3       #diff:I
    .restart local v10       #pageCount:I
    .restart local v11       #pageDiff:I
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/launcher2/MenuWidgets;->removeViewAt(I)V

    .line 1591
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1595
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .line 1597
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lt v14, v2, :cond_3

    .line 1598
    add-int/lit8 v14, v2, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1602
    :cond_3
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v2, :cond_9

    .line 1603
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/MenuWidgets;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1606
    .local v1, child:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getChildCount()I

    move-result v5

    .line 1607
    .local v5, itemCount:I
    add-int/lit8 v14, v2, -0x1

    if-eq v4, v14, :cond_5

    .line 1609
    sub-int v3, v9, v5

    .line 1611
    :goto_3
    if-eqz v3, :cond_8

    .line 1612
    if-lez v3, :cond_4

    .line 1613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f030005

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    .line 1615
    .local v12, widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v1, v12}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;)V

    .line 1616
    add-int/lit8 v3, v3, -0x1

    .line 1617
    goto :goto_3

    .line 1618
    .end local v12           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_4
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    .line 1619
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1624
    :cond_5
    if-nez v6, :cond_6

    sub-int v3, v9, v5

    .line 1626
    :goto_4
    if-eqz v3, :cond_8

    .line 1627
    if-lez v3, :cond_7

    .line 1628
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v15, 0x7f030005

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    .line 1630
    .restart local v12       #widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v1, v12}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;)V

    .line 1631
    add-int/lit8 v3, v3, -0x1

    .line 1632
    goto :goto_4

    .line 1624
    .end local v12           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_6
    sub-int v3, v6, v5

    goto :goto_4

    .line 1633
    :cond_7
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/launcher2/PagedViewGridLayout;->removeViewAt(I)V

    .line 1634
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1639
    :cond_8
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 1640
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumHeight(I)V

    .line 1642
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 1643
    .local v8, lp:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    iput v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1644
    invoke-virtual {v1, v8}, Lcom/android/launcher2/PagedViewGridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1646
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuWidgets;->setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V

    .line 1602
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1649
    .end local v1           #child:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v5           #itemCount:I
    .end local v8           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_9
    return v11
.end method


# virtual methods
.method public animateNormalTitleBarVisibility(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    const/4 v5, 0x0

    .line 1375
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1376
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1379
    if-eqz p1, :cond_2

    .line 1380
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1381
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1382
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1383
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1385
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x168

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1390
    .local v0, a:Landroid/view/ViewPropertyAnimator;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    iget-object v1, v2, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1391
    .local v1, l:Landroid/animation/AnimatorListenerAdapter;
    new-instance v2, Lcom/android/launcher2/MenuWidgets$5;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/MenuWidgets$5;-><init>(Lcom/android/launcher2/MenuWidgets;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1403
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1405
    .end local v0           #a:Landroid/view/ViewPropertyAnimator;
    .end local v1           #l:Landroid/animation/AnimatorListenerAdapter;
    :cond_1
    return-void

    .line 1387
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .restart local v0       #a:Landroid/view/ViewPropertyAnimator;
    goto :goto_0
.end method

.method public appModelUpdated()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Lcom/android/launcher2/MenuWidgets$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuWidgets$1;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 382
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    :cond_0
    instance-of v0, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v0, :cond_1

    .line 389
    check-cast p1, Lcom/android/launcher2/PagedViewWidget;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets;->beginDraggingWidget(Lcom/android/launcher2/PagedViewWidget;)V

    .line 391
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public changeToWidgetStateNormal()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 334
    return-void
.end method

.method cleanupCache(Ljava/lang/String;)V
    .locals 3
    .parameter "who"

    .prologue
    .line 280
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidget;

    .line 284
    .local v1, w:Lcom/android/launcher2/AvailableWidget;
    if-eqz v1, :cond_0

    .line 285
    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidget;->cleanupCache()V

    goto :goto_0

    .line 287
    .end local v1           #w:Lcom/android/launcher2/AvailableWidget;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mLastPositions:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 289
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetPageIndex:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 290
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 357
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 1
    .parameter "page"

    .prologue
    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 1
    .parameter "page"

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 837
    const v0, 0x7f0e0076

    .line 839
    .local v0, stringId:I
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getComingPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 170
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 173
    :cond_0
    iget v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    return-object v0
.end method

.method getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    .locals 2

    .prologue
    .line 1338
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    .line 1339
    .local v0, widgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 3
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 1343
    const-string v1, "Launcher.MenuWidgets"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State change from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    if-eqz p2, :cond_0

    .line 1345
    invoke-virtual {p2, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->exit(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 1346
    :cond_0
    if-eqz p1, :cond_1

    .line 1347
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->enter(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 1348
    :cond_1
    return-void

    .line 1343
    :cond_2
    const-string v0, "UNKNOWN"

    goto :goto_0

    :cond_3
    const-string v0, "UNKNOWN"

    goto :goto_1
.end method

.method public hasUninstallableWidgets()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgets;->mHasUninstallableWidgets:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1463
    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onAttachedToWindow()V

    .line 1465
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1466
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1467
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 341
    instance-of v2, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v2, :cond_0

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, tag:Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    .line 345
    .local v1, widgetStateObj:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    if-eqz v1, :cond_0

    .line 346
    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V

    .line 349
    .end local v1           #widgetStateObj:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1711
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1713
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->handleScrollOnOrientationChange()V

    .line 1714
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1716
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 1717
    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 1718
    const v1, 0x7f0c0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    .line 1719
    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    .line 1720
    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    .line 1721
    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagePaddingBottom:I

    .line 1722
    const v1, 0x7f0c0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagePaddingLeft:I

    .line 1723
    const v1, 0x7f0c0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagePaddingRight:I

    .line 1725
    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0c004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/MenuWidgets;->updateIndicator(II)V

    .line 1727
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageLayout()I

    .line 1728
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updateQuickViewMainMenu()V

    .line 1729
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    .line 1731
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    .line 1732
    return-void
.end method

.method protected onDataReady(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    .line 219
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    .line 220
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 396
    const-string v1, "Launcher.MenuWidgets"

    const-string v2, "MenuWidgets::onDetachedFromWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 398
    const-string v1, "onDetachedFromWindow"

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 401
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 402
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1491
    .local v0, config:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1493
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->closeKeyboard()V

    .line 1495
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 224
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 225
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 226
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->setDataIsReady()V

    .line 229
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/MenuWidgets;->setMeasuredDimension(II)V

    .line 230
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/MenuWidgets;->onDataReady(II)V

    .line 234
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 235
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1457
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1458
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageBeginMoving()V

    .line 1459
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 814
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    .line 818
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 819
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 4
    .parameter "isInTouchMode"

    .prologue
    .line 1470
    const-string v1, "Launcher.MenuWidgets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MenuWidgets::onTouchModeChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1472
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetStateObj()Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateSearch;->getSearchState()Lcom/android/launcher2/MenuWidgetsSearch;

    move-result-object v0

    .line 1473
    .local v0, searchObj:Lcom/android/launcher2/MenuWidgetsSearch;
    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgetsSearch;->onTouchModeChanged(Z)V

    .line 1477
    .end local v0           #searchObj:Lcom/android/launcher2/MenuWidgetsSearch;
    :cond_0
    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 150
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1500
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1504
    instance-of v2, p1, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 1505
    check-cast v1, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1506
    .local v1, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/PagedViewGridLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1507
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewGridLayout;->getBitmapLoaderRunnable()Ljava/lang/Runnable;

    move-result-object v0

    .line 1511
    .local v0, blr:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 1512
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1513
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setBitmapLoaderRunnable(Ljava/lang/Runnable;)V

    .line 1516
    .end local v0           #blr:Ljava/lang/Runnable;
    .end local v1           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_0
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 809
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->acceleratedOverScroll(F)V

    .line 810
    return-void
.end method

.method public refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1
    .parameter "currState"

    .prologue
    .line 1351
    if-eqz p1, :cond_0

    .line 1352
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshModel()V

    .line 1353
    :cond_0
    return-void
.end method

.method public refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 1
    .parameter "currState"

    .prologue
    .line 1356
    if-eqz p1, :cond_0

    .line 1357
    invoke-virtual {p1, p0}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->refreshView()V

    .line 1358
    :cond_0
    return-void
.end method

.method public resetNormalTitleBar()V
    .locals 2

    .prologue
    .line 1368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgets;->setNormalTitleBarVisibility(I)V

    .line 1369
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1370
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1371
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 187
    if-ltz p1, :cond_0

    .line 188
    iput p1, p0, Lcom/android/launcher2/MenuWidgets;->mSaveInstanceStateItemIndex:I

    .line 189
    :cond_0
    return-void
.end method

.method public runFilter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 294
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/android/launcher2/MenuWidgets$Filter;->filterWidgets(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuWidgets;->setDisplayedWidgets(Ljava/util/ArrayList;)V

    .line 295
    iget v2, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 296
    .local v1, oldNumWidgetPages:I
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updatePageCounts()V

    .line 298
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    mul-int/2addr v2, v3

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 300
    .local v0, newCurrentPage:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->invalidatePageData(I)V

    .line 302
    iget-boolean v2, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    if-nez v2, :cond_0

    .line 303
    iput-boolean v4, p0, Lcom/android/launcher2/MenuWidgets;->mListenerAttached:Z

    .line 304
    new-instance v2, Lcom/android/launcher2/MenuWidgets$2;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuWidgets$2;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgets;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/launcher2/MenuWidgets$Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mFilter:Lcom/android/launcher2/MenuWidgets$Filter;

    .line 327
    return-void
.end method

.method public setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets;->mMenuWidgetsFragment:Lcom/android/launcher2/MenuWidgetsFragment;

    .line 1410
    return-void
.end method

.method public setNormalTitleBarVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1365
    :cond_0
    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuTabHost;)V
    .locals 1
    .parameter "tabHost"

    .prologue
    .line 1413
    if-nez p1, :cond_0

    .line 1414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 1419
    :goto_0
    return-void

    .line 1416
    :cond_0
    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 1417
    const v0, 0x7f07005b

    invoke-virtual {p1, v0}, Lcom/android/launcher2/MenuTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mUninstallTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 754
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets;->syncWidgetPageItems(IZ)V

    .line 755
    return-void
.end method

.method public syncPages()V
    .locals 6

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->removeAllViews()V

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncPages numPages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 736
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/MenuWidgets;->mNumWidgetPages:I

    if-ge v1, v4, :cond_0

    .line 737
    new-instance v2, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-direct {v2, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 739
    .local v2, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumWidth(I)V

    .line 740
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setMinimumHeight(I)V

    .line 741
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewGridLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 742
    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuWidgets;->setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V

    .line 744
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 745
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x33

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 746
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPagePaddingTop:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 747
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/MenuWidgets;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 736
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    .end local v2           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public syncWidgetPageItems(IZ)V
    .locals 22
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v16, v4, v6

    .line 542
    .local v16, numItemsPerPage:I
    mul-int v17, p1, v16

    .line 543
    .local v17, offset:I
    add-int v4, v17, v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 544
    .local v11, end:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mDisplayedWidgets:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v4, v0, v11}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 549
    .local v7, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewGridLayout;

    .line 550
    .local v5, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v5}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViews()V

    .line 551
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    invoke-virtual {v5, v4}, Lcom/android/launcher2/PagedViewGridLayout;->setColumnCount(I)V

    .line 552
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_2

    .line 553
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AvailableWidget;

    .line 555
    .local v9, availableWidget:Lcom/android/launcher2/AvailableWidget;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030005

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/PagedViewWidget;

    .line 560
    .local v19, widget:Lcom/android/launcher2/PagedViewWidget;
    invoke-interface {v9}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 561
    const/4 v4, 0x2

    new-array v10, v4, [I

    .line 562
    .local v10, cellSpan:[I
    invoke-interface {v9, v10}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 563
    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v6, 0x1

    aget v6, v10, v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v6}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 564
    invoke-interface {v9}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/MenuWidgets;->mWidgetPageIndex:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 569
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 572
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v13, v12, v4

    .line 573
    .local v13, ix:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v14, v12, v4

    .line 574
    .local v14, iy:I
    new-instance v15, Landroid/widget/GridLayout$LayoutParams;

    sget-object v4, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    invoke-static {v14, v4}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v4

    sget-object v6, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v13, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v6

    invoke-direct {v15, v4, v6}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 577
    .local v15, lp:Landroid/widget/GridLayout$LayoutParams;
    const/16 v4, 0x33

    invoke-virtual {v15, v4}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 578
    if-lez v13, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapX:I

    :goto_1
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 579
    if-lez v14, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mCellGapY:I

    :goto_2
    iput v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 580
    const-string v4, "Launcher.MenuWidgets"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; row: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", col: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", lm: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", tm: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v15}, Lcom/android/launcher2/PagedViewGridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 578
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 579
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 584
    .end local v9           #availableWidget:Lcom/android/launcher2/AvailableWidget;
    .end local v10           #cellSpan:[I
    .end local v13           #ix:I
    .end local v14           #iy:I
    .end local v15           #lp:Landroid/widget/GridLayout$LayoutParams;
    .end local v19           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_2
    new-instance v3, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;-><init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;Z)V

    .line 585
    .local v3, blr:Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v4

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    .line 589
    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets$BitmapLoaderRunnable;->run()V

    .line 595
    :goto_3
    return-void

    .line 591
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/MenuWidgets;->getSleepForPage(I)I

    move-result v18

    .line 592
    .local v18, sleepMs:I
    const-string v4, "Launcher.MenuWidgets"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Running runnable "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " after "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " page "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " items "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/launcher2/MenuWidgets;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3
.end method

.method updateDirtyPage()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1525
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v2

    .line 1526
    .local v2, total:I
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1527
    .local v1, dirtyCount:I
    sub-int v0, v1, v2

    .line 1529
    .local v0, diff:I
    :goto_0
    if-eqz v0, :cond_1

    .line 1530
    if-lez v0, :cond_0

    .line 1531
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1532
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1534
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1538
    :cond_1
    return-void
.end method

.method public updatePackages(Ljava/lang/String;)V
    .locals 5
    .parameter "who"

    .prologue
    .line 252
    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mDragInProgress:Z

    if-eqz v3, :cond_1

    .line 253
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/MenuWidgets;->mPendingUpdatePackages:Z

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const-string v3, "updatePackages"

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updatePackages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 261
    .local v2, wasEmpty:Z
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 263
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgetProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AvailableWidgetListProvider;

    .line 264
    .local v1, provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets;->mWidgets:Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 267
    .end local v1           #provider:Lcom/android/launcher2/AvailableWidgetListProvider;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->runFilter()V

    .line 269
    if-eqz v2, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->testDataReady()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    goto :goto_0
.end method

.method updatePageLayout()I
    .locals 5

    .prologue
    .line 1541
    const/4 v2, 0x0

    .line 1543
    .local v2, updatePageCount:I
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v3, :cond_4

    .line 1545
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1546
    const/high16 v3, -0x8000

    iput v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1549
    const-string v3, "rotation"

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuWidgets;->cancelAllTasks(Ljava/lang/String;)V

    .line 1550
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets;->updateWidgetGridChildCount()I

    move-result v2

    .line 1551
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->updateDirtyPage()V

    .line 1554
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getChildCount()I

    move-result v1

    .line 1555
    .local v1, pages:I
    if-lez v1, :cond_4

    .line 1556
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-gez v3, :cond_2

    .line 1557
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1561
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    .line 1562
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 1563
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v0, v3, :cond_1

    .line 1564
    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuWidgets;->syncWidgetRotation(I)V

    .line 1562
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1558
    .end local v0           #i:I
    :cond_2
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lt v3, v1, :cond_0

    .line 1559
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0

    .line 1566
    .restart local v0       #i:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->requestLayout()V

    .line 1569
    .end local v0           #i:I
    .end local v1           #pages:I
    :cond_4
    return v2
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 11
    .parameter "v"
    .parameter "scrollProgress"

    .prologue
    .line 759
    const/4 v6, 0x0

    .line 760
    .local v6, translationX:F
    const/4 v1, 0x0

    .line 762
    .local v1, fixedPosition:Z
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->isLoopingEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuWidgets;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuWidgets;->indexToPage(I)I

    move-result v2

    .line 764
    .local v2, i:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 765
    .local v4, pageWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 770
    .local v3, pageHeight:I
    const/high16 v7, 0x3f00

    int-to-float v8, v4

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f00

    int-to-float v9, v4

    mul-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/launcher2/MenuWidgets;->mix(FFF)F

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotX(F)V

    .line 773
    int-to-float v7, v3

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-virtual {p1, v7}, Landroid/view/View;->setPivotY(F)V

    .line 775
    if-nez v2, :cond_3

    const/4 v7, 0x0

    cmpg-float v7, p2, v7

    if-gez v7, :cond_3

    .line 777
    const/high16 v7, -0x3e80

    mul-float/2addr v7, p2

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 779
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v7

    int-to-float v6, v7

    .line 780
    const/4 v1, 0x1

    .line 792
    .end local v2           #i:I
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    :cond_0
    :goto_0
    const/high16 v5, 0x3f80

    .line 793
    .local v5, pageZoom:F
    const/high16 v7, 0x3f80

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 794
    const/high16 v7, 0x3f80

    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 795
    if-nez v1, :cond_1

    .line 796
    const/4 v7, 0x0

    mul-float/2addr v7, p2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x4020

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 799
    :cond_1
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 801
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 802
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 803
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 805
    :cond_2
    return-void

    .line 781
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v5           #pageZoom:F
    .restart local v2       #i:I
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getPageCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_4

    const/4 v7, 0x0

    cmpl-float v7, p2, v7

    if-lez v7, :cond_4

    .line 783
    const/high16 v7, -0x3e80

    mul-float/2addr v7, p2

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 785
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getScrollX()I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int/2addr v7, v8

    int-to-float v6, v7

    .line 786
    const/4 v1, 0x1

    goto :goto_0

    .line 788
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0
.end method

.method updateQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->PAGE_EDIT:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    if-eqz v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets;->mStatePageEdit:Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    check-cast v0, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$WidgetStatePageEdit;->updateQuickView()V

    .line 1522
    :cond_0
    return-void
.end method
